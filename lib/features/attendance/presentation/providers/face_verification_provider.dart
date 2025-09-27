import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hrms_mobile/core/constants/face_step_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_verification_provider.g.dart';

class FaceVerificationState extends Equatable {
  final VerificationStep step;
  final String? photoPath;

  const FaceVerificationState({
    this.step = VerificationStep.initial,
    this.photoPath,
  });

  FaceVerificationState copyWith({
    VerificationStep? step,
    String? photoPath,
  }) {
    return FaceVerificationState(
      step: step ?? this.step,
      photoPath: photoPath ?? this.photoPath,
    );
  }

  @override
  List<Object?> get props => [step, photoPath];
}

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
