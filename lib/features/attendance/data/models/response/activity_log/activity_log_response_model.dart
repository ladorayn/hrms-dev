import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_log_response_model.freezed.dart';
part 'activity_log_response_model.g.dart';

@freezed
class ActivityLogModel with _$ActivityLogModel {
  const factory ActivityLogModel({
    int? id,
    String? event,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'time_ago') String? timeAgo,
    @JsonKey(name: 'event_type') String? eventType,
    @JsonKey(name: 'is_clock_in') bool? isClockIn,
    @JsonKey(name: 'is_clock_out') bool? isClockOut,
    Properties? properties,
    Causer? causer,
  }) = _ActivityLogModel;

  factory ActivityLogModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogModelFromJson(json);
}

// Properties model remains the same
@freezed
class Properties with _$Properties {
  const factory Properties({
    @JsonKey(name: 'attendance_id') int? attendanceId,
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
    @JsonKey(name: "overtime_date") String? overtimeDate,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
    int? duration,
    int? status,
    @JsonKey(name: "status_label") String? statusLabel,
    String? notes,
    @JsonKey(name: "approved_by") int? approvedBy,
    Approver? approver,
    @JsonKey(name: "request_date") String? requestDate,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

// Causer model remains the same
@freezed
class Causer with _$Causer {
  const factory Causer({
    int? id,
    String? name,
    String? email,
  }) = _Causer;

  factory Causer.fromJson(Map<String, dynamic> json) => _$CauserFromJson(json);
}

@freezed
class Approver with _$Approver {
  const factory Approver({
    int? id,
    String? name,
    String? duration,
  }) = _Approver;

  factory Approver.fromJson(Map<String, dynamic> json) =>
      _$ApproverFromJson(json);
}
