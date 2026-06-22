import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/general/general_usecases.dart';
import 'package:hrms_mobile/core/config/manual_capture.dart';
import 'package:hrms_mobile/core/enums/face_step_enum.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/face_verification_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_verification_provider.g.dart';

final generalRemoteSourceProvider = Provider<GeneralRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  final faceDio = ref.watch(faceDioProvider);
  return GeneralRemoteSource(dio, faceDio);
});

final generalRepoProvider = Provider<GeneralRepository>((ref) {
  final remoteSource = ref.watch(generalRemoteSourceProvider);
  return GeneralRepositoryImpl(remoteSource: remoteSource);
});

final generalUsecaseProvider = Provider((ref) {
  final repository = ref.watch(generalRepoProvider);
  return GeneralUsecases(repository);
});

@riverpod
class VerifyFaceNotifier extends _$VerifyFaceNotifier {
  @override
  AsyncValue<FaceVerify?> build() => const AsyncData(null);

  Future<FaceVerify> verifyFace(PlatformFile file) async {
    state = const AsyncLoading();
    final usecase = ref.read(generalUsecaseProvider);

    try {
      final result = await usecase.verifyFace(file: file);
      state = AsyncData(result);
      return result;
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() => state = const AsyncData(null);
}

@riverpod
class FaceVerification extends _$FaceVerification {
  @override
  FaceVerificationState build() {
    return const FaceVerificationState();
  }

  Future<void> takePhoto(String path) async {
    state = state.copyWith(
      step: VerificationStep.loading,
      photoPath: path,
    );

    if (isManualCaptureBypassActive) {
      await Future.delayed(const Duration(milliseconds: 400));
      state = state.copyWith(step: VerificationStep.success);
      return;
    }

    try {
      final file = File(path);
      final platformFile = PlatformFile(
        path: file.path,
        name: file.uri.pathSegments.last,
        size: await file.length(),
      );

      final result = await ref
          .read(verifyFaceNotifierProvider.notifier)
          .verifyFace(platformFile);

      final isMatch = result.isMatch == true;

      state = state.copyWith(
        step: isMatch ? VerificationStep.success : VerificationStep.failed,
      );
    } catch (_) {
      state = state.copyWith(step: VerificationStep.failed);
    } finally {
      ref.read(verifyFaceNotifierProvider.notifier).reset();
    }
  }

  void retry() {
    state = const FaceVerificationState();
  }
}
