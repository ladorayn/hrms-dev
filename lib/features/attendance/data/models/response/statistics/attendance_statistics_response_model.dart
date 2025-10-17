import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_statistics_response_model.freezed.dart';
part 'attendance_statistics_response_model.g.dart';

@freezed
class AttendanceStatistics with _$AttendanceStatistics {
  const factory AttendanceStatistics({
    required Period period,
    required int attended,
    required double absent,
    required Status status,
    @JsonKey(name: "clock_in") required ClockIn clockIn,
    @JsonKey(name: "clock_out") required ClockOut clockOut,
    required int overtime,
    @JsonKey(name: "day_off") required DayOff dayOff,
  }) = _AttendanceStatistics;

  factory AttendanceStatistics.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatisticsFromJson(json);
}

@freezed
class Period with _$Period {
  const factory Period({
    required String start,
    required String end,
    required double days,
  }) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    required int waiting,
    required int approved,
    required int rejected,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class ClockIn with _$ClockIn {
  const factory ClockIn({
    required int late,
    required int early,
    @JsonKey(name: "on_time") required int onTime,
  }) = _ClockIn;

  factory ClockIn.fromJson(Map<String, dynamic> json) =>
      _$ClockInFromJson(json);
}

@freezed
class ClockOut with _$ClockOut {
  const factory ClockOut({
    required int late,
    required int early,
    @JsonKey(name: "on_time") required int onTime,
  }) = _ClockOut;

  factory ClockOut.fromJson(Map<String, dynamic> json) =>
      _$ClockOutFromJson(json);
}

@freezed
class DayOff with _$DayOff {
  const factory DayOff({
    required int used,
    required int quota,
  }) = _DayOff;

  factory DayOff.fromJson(Map<String, dynamic> json) => _$DayOffFromJson(json);
}
