import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_log_response_model.freezed.dart';
part 'activity_log_response_model.g.dart';

@freezed
class ActivityLogModel with _$ActivityLogModel {
  const factory ActivityLogModel({
    required int id,
    required String event,
    required String description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'time_ago') required String timeAgo,
    @JsonKey(name: 'event_type') required String eventType,
    @JsonKey(name: 'is_clock_in') required bool isClockIn,
    @JsonKey(name: 'is_clock_out') required bool isClockOut,
    required Properties properties,
    required Causer causer,
  }) = _ActivityLogModel;

  factory ActivityLogModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogModelFromJson(json);
}

// Properties model remains the same
@freezed
class Properties with _$Properties {
  const factory Properties({
    @JsonKey(name: 'attendance_id') required int attendanceId,
    @JsonKey(name: 'attendance_status') int? attendanceStatus,
    @JsonKey(name: 'attendance_status_label') String? attendanceStatusLabel,
    @JsonKey(name: 'clock_in_at') String? clockInAt,
    @JsonKey(name: 'clock_in_status') int? clockInStatus,
    @JsonKey(name: 'clock_in_status_label') String? clockInStatusLabel,
    @JsonKey(name: 'clock_out_at') String? clockOutAt,
    @JsonKey(name: 'clock_out_status') int? clockOutStatus,
    @JsonKey(name: 'clock_out_status_label') String? clockOutStatusLabel,
    @JsonKey(name: 'schedule_clock_in') String? scheduledClockIn,
    @JsonKey(name: 'schedule_clock_out') String? scheduledClockOut,
    @JsonKey(name: 'tolerance_minutes') int? toleranceMinutes,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

// Causer model remains the same
@freezed
class Causer with _$Causer {
  const factory Causer({
    required int id,
    required String name,
    required String email,
  }) = _Causer;

  factory Causer.fromJson(Map<String, dynamic> json) => _$CauserFromJson(json);
}
