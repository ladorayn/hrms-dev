import 'package:equatable/equatable.dart';
import 'package:hrms_mobile/core/enums/face_step_enum.dart';

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
