import 'package:hrms_mobile/application/assets/i_assets.dart';

enum FaceStep {
  front,
  right,
  left,
  uploading,
  success,
  failed
} // ⭐ ADDED uploading step

extension FaceStepX on FaceStep {
  String get instruction {
    switch (this) {
      case FaceStep.front:
        return "Face the camera directly and make sure your face is clearly visible";
      case FaceStep.right:
        return "Slowly turn your head to the right and keep it within the frame";
      case FaceStep.left:
        return "Slowly turn your head to the left and keep it within the frame";
      case FaceStep.uploading: // ⭐ NEW Instruction
        return "Uploading photo and verifying face...";
      case FaceStep.failed:
        return "Face Registration Failed!";
      case FaceStep.success:
        return "Face Registration Success!";
    }
  }

  String get instructionAsset {
    switch (this) {
      case FaceStep.front:
        return IAssets.faceUp;
      case FaceStep.right:
        return IAssets.faceRight;
      case FaceStep.left:
        return IAssets.faceLeft;
      case FaceStep.uploading: // ⭐ NEW Asset (using default empty)
        return '';
      case FaceStep.success:
      case FaceStep.failed:
        return '';
    }
  }

  String get buttonText {
    switch (this) {
      case FaceStep.front:
        return "Take Front Photo";
      case FaceStep.right:
        return "Take Right Photo";
      case FaceStep.left:
        return "Take Left Photo";
      case FaceStep.uploading: // ⭐ NEW Button Text (empty while loading)
        return "Uploading...";
      case FaceStep.failed:
        return "Try Again";
      case FaceStep.success:
        return "Done";
    }
  }
}

// --- Verification Step remains unchanged ---

enum VerificationStep {
  initial,
  loading,
  success,
  failed,
}

extension VerificationStepX on VerificationStep {
  String get instruction {
    switch (this) {
      case VerificationStep.initial:
        return 'Face the camera directly and make sure your face is clearly visible';
      case VerificationStep.loading:
        return 'Verifying...';
      case VerificationStep.success:
        return 'Face Verification Success!';
      case VerificationStep.failed:
        return 'Face Verification Failed!';
    }
  }

  String get buttonText {
    switch (this) {
      case VerificationStep.initial:
        return 'Take Photo';
      case VerificationStep.failed:
        return 'Try Again';
      default:
        return '';
    }
  }
}
