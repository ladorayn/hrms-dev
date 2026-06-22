import 'dart:io';

import 'package:file_picker/file_picker.dart' show PlatformFile;
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/general/general_usecases.dart';
import 'package:hrms_mobile/core/config/manual_capture.dart';
import 'package:hrms_mobile/core/enums/face_step_enum.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/face_registration_state.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_registration_provider.g.dart';

final generalRemoteSourceProvider = Provider<GeneralRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  final faceDio = ref.watch(faceDioProvider);
  return GeneralRemoteSource(dio, faceDio);
});

final generalRepoProvider = Provider<GeneralRepository>((ref) {
  final remoteSource = ref.watch(generalRemoteSourceProvider);
  return GeneralRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final generalUsecaseProvider = Provider((ref) {
  final repository = ref.watch(generalRepoProvider);
  return GeneralUsecases(repository);
});

@riverpod
class UploadFaceNotifier extends _$UploadFaceNotifier {
  @override
  AsyncValue<UploadFace?> build() {
    return const AsyncData(null);
  }

  Future<UploadFace> uploadFace(PlatformFile file) async {
    state = const AsyncLoading();
    final usecase = ref.read(generalUsecaseProvider);

    try {
      final response = await usecase.uploadFace(file: file);
      state = AsyncData(response);
      return response;
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

@riverpod
class FaceRegistration extends _$FaceRegistration {
  @override
  FaceRegistrationState build(int initialFaceCount) {
    FaceStep startingStep;
    double startingProgress;

    if (initialFaceCount == 1) {
      startingStep = FaceStep.right;
      startingProgress = 1.0 / 3.0;
    } else if (initialFaceCount == 2) {
      startingStep = FaceStep.left;
      startingProgress = 2.0 / 3.0;
    } else {
      startingStep = FaceStep.front;
      startingProgress = 0.0;
    }

    return FaceRegistrationState(
      step: startingStep,
      photos: const [null, null, null],
      progress: startingProgress,
    );
  }

  Future<void> savePhoto(String path) async {
    final index = state.step.index;
    final updatedPhotos = [...state.photos];
    updatedPhotos[index] = path;

    state = state.copyWith(photos: updatedPhotos);

    if (isManualCaptureBypassActive) {
      FaceStep nextStep;
      final nextIndex = index + 1;
      if (index == 0) {
        nextStep = FaceStep.right;
      } else if (index == 1) {
        nextStep = FaceStep.left;
      } else if (index == 2) {
        nextStep = FaceStep.success;
      } else {
        return;
      }
      state = state.copyWith(
        step: nextStep,
        progress: nextIndex / 3.0,
      );
      return;
    }

    final file = File(path);
    final platformFile = PlatformFile(
      path: file.path,
      name: file.path.split('/').last,
      size: await file.length(),
    );

    final uploadNotifier = ref.read(uploadFaceNotifierProvider.notifier);

    state = state.copyWith(progress: (index) / 3.0, step: FaceStep.uploading);

    try {
      await uploadNotifier.uploadFace(platformFile);

      uploadNotifier.reset();

      FaceStep nextStep;
      int nextIndex = index + 1;

      if (index == 0) {
        nextStep = FaceStep.right;
      } else if (index == 1) {
        nextStep = FaceStep.left;
      } else if (index == 2) {
        nextStep = FaceStep.success;

        final generalUsecase = ref.read(generalUsecaseProvider);
        final facesProfile = await generalUsecase.getFacesProfile();

        final currentProfile = ref.read(authProvider).value;

        if (currentProfile != null) {
          await ref
              .read(authProvider.notifier)
              .onLoginSuccess(currentProfile, facesProfile);
        }
      } else {
        return;
      }
      state = state.copyWith(
        step: nextStep,
        progress: (nextIndex) / 3.0,
      );
    } catch (e) {
      state = state.copyWith(
        step: FaceStep.failed,
        progress: 1.0,
      );
      updatedPhotos[index] = null;
      state = state.copyWith(photos: updatedPhotos);
      rethrow;
    }
  }

  void retry() {
    state = const FaceRegistrationState(
      step: FaceStep.front,
      photos: [null, null, null],
      progress: 0.0,
    );
  }
}
