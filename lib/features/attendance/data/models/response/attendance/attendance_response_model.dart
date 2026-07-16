import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_response_model.freezed.dart';
part 'attendance_response_model.g.dart';

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
    int? id,
    @JsonKey(name: "attendance_date") String? attendanceDate,
    Clock? clock,
    String? duration,
    Location? location,
    int? status,
    @JsonKey(name: "clock_in_status") int? clockInStatus,
    @JsonKey(name: "clock_out_status") int? clockOutStatus,
    @JsonKey(name: "status_label") String? statusLabel,
    @JsonKey(name: "clock_in_status_label") String? clockInStatusLabel,
    @JsonKey(name: "clock_out_status_label") String? clockOutStatusLabel,
    String? notes,
    @JsonKey(name: "approved_at") String? approvedAt,
    @JsonKey(name: "rejected_reason") String? rejectedReason,
    String? remarks,
    Metadata? metadata,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _AttendanceData;

  factory AttendanceData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDataFromJson(json);
}

@freezed
class Clock with _$Clock {
  const factory Clock({
    @JsonKey(name: 'in_at') String? inAt,
    @JsonKey(name: 'out_at') String? outAt,
    @JsonKey(name: 'duration') String? duration,
    @JsonKey(name: "overtime_duration") int? overtimeDuration,
    @JsonKey(name: "overtime_duration_fomated")
    String? overtimeDurationFormatted,
  }) = _Clock;

  factory Clock.fromJson(Map<String, dynamic> json) => _$ClockFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? latitude,
    String? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata(
      {@JsonKey(name: "created_via") String? createdVia,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "generated_via") String? generatedVia,
      @JsonKey(name: "shift_id") int? shiftId,
      @JsonKey(name: "shift_name") String? shiftName,
      @JsonKey(name: "day_of_week") int? dayOfWeek,
      @JsonKey(name: "tolerance_minutes") int? toleranceMinutes,
      @JsonKey(name: "work_schedule_id") int? workScheduleId,
      @JsonKey(name: "location_name") String? locationName,
      @JsonKey(name: "expected_start_time") String? expectedStartTime,
      @JsonKey(name: "expected_end_time") String? expectedEndTime,
      Coordinates? coordinates}) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({double? latitude, double? longitude}) =
      _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}
