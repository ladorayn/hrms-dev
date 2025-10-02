import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_response_model.freezed.dart';
part 'attendance_response_model.g.dart';

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
    required int id,
    @JsonKey(name: "attendance_date") required String attendanceDate,
    required Clock clock,
    String? duration,
    required Location? location,
    required int status,
    @JsonKey(name: "clock_in_status") int? clockInStatus,
    @JsonKey(name: "clock_out_status") int? clockOutStatus,
    @JsonKey(name: "status_label") String? statusLabel,
    @JsonKey(name: "clock_in_status_label") String? clockInStatusLabel,
    @JsonKey(name: "clock_out_status_label") String? clockOutStatusLabel,
    String? notes,
    @JsonKey(name: "approved_at") String? approvedAt,
    @JsonKey(name: "rejected_reason") String? rejectedReason,
    String? remarks,
    required Metadata? metadata,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
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
    @JsonKey(name: "overtime_duration") String? overtimeDuration,
    @JsonKey(name: "overtime_duration_fomated")
    String? overtimeDurationFormatted,
  }) = _Clock;

  factory Clock.fromJson(Map<String, dynamic> json) => _$ClockFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String latitude,
    required String longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    @JsonKey(name: 'created_via') required String createdVia,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'shift_id') required int shiftId,
    @JsonKey(name: 'work_schedule_id') required int workScheduleId,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
