import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';

enum FaceStep {
  front,
  right,
  left,
  uploading,
  success,
  failed
}

extension FaceStepX on FaceStep {
  String instruction(AppLocalizations l10n) {
    switch (this) {
      case FaceStep.front:
        return l10n.attendanceFaceStepFrontInstruction;
      case FaceStep.right:
        return l10n.attendanceFaceStepRightInstruction;
      case FaceStep.left:
        return l10n.attendanceFaceStepLeftInstruction;
      case FaceStep.uploading:
        return l10n.attendanceFaceStepUploadingInstruction;
      case FaceStep.failed:
        return l10n.attendanceFaceStepFailedInstruction;
      case FaceStep.success:
        return l10n.attendanceFaceStepSuccessInstruction;
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
      case FaceStep.uploading:
        return '';
      case FaceStep.success:
      case FaceStep.failed:
        return '';
    }
  }

  String buttonText(AppLocalizations l10n) {
    switch (this) {
      case FaceStep.front:
        return l10n.attendanceFaceStepTakeFrontPhoto;
      case FaceStep.right:
        return l10n.attendanceFaceStepTakeRightPhoto;
      case FaceStep.left:
        return l10n.attendanceFaceStepTakeLeftPhoto;
      case FaceStep.uploading:
        return l10n.attendanceFaceStepUploading;
      case FaceStep.failed:
        return l10n.attendanceFaceStepTryAgain;
      case FaceStep.success:
        return l10n.attendanceFaceStepDone;
    }
  }
}

enum VerificationStep {
  initial,
  loading,
  success,
  failed,
}

extension VerificationStepX on VerificationStep {
  String instruction(AppLocalizations l10n) {
    switch (this) {
      case VerificationStep.initial:
        return l10n.attendanceVerificationInitialInstruction;
      case VerificationStep.loading:
        return l10n.attendanceVerificationLoadingInstruction;
      case VerificationStep.success:
        return l10n.attendanceVerificationSuccessInstruction;
      case VerificationStep.failed:
        return l10n.attendanceVerificationFailedInstruction;
    }
  }

  String buttonText(AppLocalizations l10n) {
    switch (this) {
      case VerificationStep.initial:
        return l10n.attendanceVerificationTakePhoto;
      case VerificationStep.failed:
        return l10n.attendanceFaceStepTryAgain;
      case VerificationStep.loading:
      case VerificationStep.success:
        return '';
    }
  }
}
