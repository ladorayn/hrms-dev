enum ActivityLogEnum {
  clockIn,
  clockOut,
  overtimeCreated,
  unknown;

  factory ActivityLogEnum.fromString(String? eventType) {
    switch (eventType) {
      case 'clock_in':
        return ActivityLogEnum.clockIn;
      case 'clock_out':
        return ActivityLogEnum.clockOut;
      case 'overtime_created':
        return ActivityLogEnum.overtimeCreated;
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
      case ActivityLogEnum.unknown:
        return 'Unknown Activity';
    }
  }
}
