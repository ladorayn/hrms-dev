import 'dart:async';

import 'package:hrms_mobile/core/constants/face_step_enum.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/face_verification_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_verification_provider.g.dart';

@riverpod
class FaceVerification extends _$FaceVerification {
  @override
  FaceVerificationState build() {
    return const FaceVerificationState();
  }

  Future<void> takePhoto(String path) async {
    state = state.copyWith(step: VerificationStep.loading, photoPath: path);

    await Future.delayed(const Duration(milliseconds: 800));

    state = state.copyWith(step: VerificationStep.failed);
  }

  void retry() {
    state = state.copyWith(step: VerificationStep.success);
  }
}
