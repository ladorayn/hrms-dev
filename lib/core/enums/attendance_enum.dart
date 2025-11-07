enum AttendanceEnum {
  clockIn("clock-in"),
  clockOut("clock-out");

  final String label;

  const AttendanceEnum(this.label);

  static AttendanceEnum? fromLabel(String value) {
    return AttendanceEnum.values.firstWhere(
      (e) => e.label == value,
      orElse: () => throw ArgumentError("Invalid label: $value"),
    );
  }

  static bool checkActivity(String value) {
    switch (value) {
      case "clock_in":
        return true;
      case "clock_out":
        return true;
      case "attendance":
        return true;
      default:
        return false;
    }
  }

  static String toTitle(String value) {
    switch (value) {
      case "clock-in":
        return "Clock-In";
      case "clock-out":
        return "Clock-Out";
      default:
        return value;
    }
  }

  static String toSentence(String value) {
    switch (value) {
      case "clock-in":
        return "clock in";
      case "clock-out":
        return "clock out";
      default:
        return value;
    }
  }

  String get title {
    switch (this) {
      case AttendanceEnum.clockIn:
        return "Clock-In";
      case AttendanceEnum.clockOut:
        return "Clock-Out";
    }
  }

  String get sentence {
    switch (this) {
      case AttendanceEnum.clockIn:
        return "clock in";
      case AttendanceEnum.clockOut:
        return "clock out";
    }
  }

  String get capitalizeSentence {
    switch (this) {
      case AttendanceEnum.clockIn:
        return "Clock In";
      case AttendanceEnum.clockOut:
        return "Clock Out";
    }
  }
}
