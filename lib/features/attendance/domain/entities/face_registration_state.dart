import 'package:hrms_mobile/core/enums/face_step_enum.dart';

class FaceRegistrationState {
  final FaceStep step;
  final List<String?> photos;

  // ⭐ NEW: Tracks if an operation (like upload) is currently running
  final bool isLoading;

  // ⭐ NEW: Tracks visual progress (0.0 to 1.0), separate from photo count
  final double progress;

  const FaceRegistrationState({
    required this.step,
    required this.photos,
    this.isLoading = false, // Default to false
    this.progress = 0.0, // Default to 0.0
  });

  bool get isComplete => photos.every((e) => e != null);

  // ⭐ UPDATED: copyWith method to include new fields
  FaceRegistrationState copyWith({
    FaceStep? step,
    List<String?>? photos,
    bool? isLoading,
    double? progress,
  }) {
    return FaceRegistrationState(
      step: step ?? this.step,
      photos: photos ?? this.photos,
      isLoading: isLoading ?? this.isLoading,
      progress: progress ?? this.progress,
    );
  }
}
