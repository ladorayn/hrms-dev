import 'package:hrms_mobile/core/constants/face_step_enum.dart';
import 'package:hrms_mobile/features/attendance/data/models/face_registration_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'face_registration_provider.g.dart';

@riverpod
class FaceRegistration extends _$FaceRegistration {
  @override
  FaceRegistrationState build() {
    return const FaceRegistrationState(
      step: FaceStep.front,
      photos: [null, null, null],
    );
  }

  void savePhoto(String path) {
    final index = state.step.index;
    final updated = [...state.photos];
    updated[index] = path;

    FaceStep nextStep;
    if (state.step == FaceStep.front) {
      nextStep = FaceStep.right;
    } else if (state.step == FaceStep.right) {
      nextStep = FaceStep.left;
    } else if (state.step == FaceStep.left) {
      nextStep = FaceStep.failed;
    } else {
      nextStep = FaceStep.success;
    }

    state = state.copyWith(step: nextStep, photos: updated);
  }

  void retry() {
    state = state.copyWith(step: FaceStep.success);
  }
}
