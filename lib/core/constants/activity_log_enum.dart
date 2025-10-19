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
  String get displayName {
    switch (this) {
      case ActivityLogEnum.clockIn:
        return 'Clock In';
      case ActivityLogEnum.clockOut:
        return 'Clock Out';
      case ActivityLogEnum.overtimeCreated:
        return 'Overtime Created';
      case ActivityLogEnum.overtimeApproved:
        return 'Overtime Approved';
      case ActivityLogEnum.overtimeRejected:
        return 'Overtime Rejected';
      case ActivityLogEnum.overtimeUpdated:
        return 'Overtime Updated';
      case ActivityLogEnum.unknown:
        return 'Unknown Activity';
    }
  }
}
