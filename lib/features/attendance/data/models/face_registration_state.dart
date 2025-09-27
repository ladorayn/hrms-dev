import 'package:hrms_mobile/core/constants/face_step_enum.dart';

class FaceRegistrationState {
  final FaceStep step;
  final List<String?> photos;

  const FaceRegistrationState({
    required this.step,
    required this.photos,
  });

  double get progress => photos.where((e) => e != null).length / photos.length;

  bool get isComplete => photos.every((e) => e != null);

  FaceRegistrationState copyWith({
    FaceStep? step,
    List<String?>? photos,
  }) {
    return FaceRegistrationState(
      step: step ?? this.step,
      photos: photos ?? this.photos,
    );
  }
}
