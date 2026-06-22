import 'package:hrms_mobile/application/l10n/app_localizations.dart';

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

  static String toTitle(String value, AppLocalizations l10n) {
    switch (value) {
      case "clock-in":
        return l10n.attendanceClockInTitle;
      case "clock-out":
        return l10n.attendanceClockOutTitle;
      default:
        return value;
    }
  }

  static String toSentence(String value, AppLocalizations l10n) {
    switch (value) {
      case "clock-in":
        return l10n.attendanceClockInSentence;
      case "clock-out":
        return l10n.attendanceClockOutSentence;
      default:
        return value;
    }
  }

  String title(AppLocalizations l10n) {
    switch (this) {
      case AttendanceEnum.clockIn:
        return l10n.attendanceClockInTitle;
      case AttendanceEnum.clockOut:
        return l10n.attendanceClockOutTitle;
    }
  }

  String sentence(AppLocalizations l10n) {
    switch (this) {
      case AttendanceEnum.clockIn:
        return l10n.attendanceClockInSentence;
      case AttendanceEnum.clockOut:
        return l10n.attendanceClockOutSentence;
    }
  }

  String capitalizeSentence(AppLocalizations l10n) {
    switch (this) {
      case AttendanceEnum.clockIn:
        return l10n.attendanceClockInCapitalize;
      case AttendanceEnum.clockOut:
        return l10n.attendanceClockOutCapitalize;
    }
  }
}
