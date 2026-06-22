import 'package:hrms_mobile/application/l10n/app_localizations.dart';

enum ActivityLogEnum {
  clockIn,
  clockOut,
  overtimeCreated,
  overtimeUpdated,
  overtimeApproved,
  overtimeRejected,
  unknown;

  factory ActivityLogEnum.fromString(String? eventType) {
    switch (eventType) {
      case 'clock_in':
        return ActivityLogEnum.clockIn;
      case 'clock_out':
        return ActivityLogEnum.clockOut;
      case 'overtime_created':
        return ActivityLogEnum.overtimeCreated;
      case 'overtime_updated':
        return ActivityLogEnum.overtimeUpdated;
      case 'overtime_approved':
        return ActivityLogEnum.overtimeApproved;
      case 'overtime_rejected':
        return ActivityLogEnum.overtimeRejected;
      default:
        return ActivityLogEnum.unknown;
    }
  }
}

extension ActivityLogEnumExtension on ActivityLogEnum {
  String displayName(AppLocalizations l10n) {
    switch (this) {
      case ActivityLogEnum.clockIn:
        return l10n.activityLogClockIn;
      case ActivityLogEnum.clockOut:
        return l10n.activityLogClockOut;
      case ActivityLogEnum.overtimeCreated:
        return l10n.activityLogOvertimeCreated;
      case ActivityLogEnum.overtimeApproved:
        return l10n.activityLogOvertimeApproved;
      case ActivityLogEnum.overtimeRejected:
        return l10n.activityLogOvertimeRejected;
      case ActivityLogEnum.overtimeUpdated:
        return l10n.activityLogOvertimeUpdated;
      case ActivityLogEnum.unknown:
        return l10n.activityLogUnknown;
    }
  }
}
