// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityLogModelImpl _$$ActivityLogModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityLogModelImpl(
      id: (json['id'] as num?)?.toInt(),
      event: json['event'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      timeAgo: json['time_ago'] as String?,
      eventType: json['event_type'] as String?,
      isClockIn: json['is_clock_in'] as bool?,
      isClockOut: json['is_clock_out'] as bool?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      causer: json['causer'] == null
          ? null
          : Causer.fromJson(json['causer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActivityLogModelImplToJson(
        _$ActivityLogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event': instance.event,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'time_ago': instance.timeAgo,
      'event_type': instance.eventType,
      'is_clock_in': instance.isClockIn,
      'is_clock_out': instance.isClockOut,
      'properties': instance.properties,
      'causer': instance.causer,
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      attendanceId: (json['attendance_id'] as num?)?.toInt(),
      attendanceStatus: (json['attendance_status'] as num?)?.toInt(),
      attendanceStatusLabel: json['attendance_status_label'] as String?,
      clockInAt: json['clock_in_at'] as String?,
      clockInStatus: (json['clock_in_status'] as num?)?.toInt(),
      clockInStatusLabel: json['clock_in_status_label'] as String?,
      clockOutAt: json['clock_out_at'] as String?,
      clockOutStatus: (json['clock_out_status'] as num?)?.toInt(),
      clockOutStatusLabel: json['clock_out_status_label'] as String?,
      scheduledClockIn: json['schedule_clock_in'] as String?,
      scheduledClockOut: json['schedule_clock_out'] as String?,
      toleranceMinutes: (json['tolerance_minutes'] as num?)?.toInt(),
      overtimeDate: json['overtime_date'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      notes: json['notes'] as String?,
      approvedBy: (json['approved_by'] as num?)?.toInt(),
      approver: json['approver'] == null
          ? null
          : Approver.fromJson(json['approver'] as Map<String, dynamic>),
      requestDate: json['request_date'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'attendance_status': instance.attendanceStatus,
      'attendance_status_label': instance.attendanceStatusLabel,
      'clock_in_at': instance.clockInAt,
      'clock_in_status': instance.clockInStatus,
      'clock_in_status_label': instance.clockInStatusLabel,
      'clock_out_at': instance.clockOutAt,
      'clock_out_status': instance.clockOutStatus,
      'clock_out_status_label': instance.clockOutStatusLabel,
      'schedule_clock_in': instance.scheduledClockIn,
      'schedule_clock_out': instance.scheduledClockOut,
      'tolerance_minutes': instance.toleranceMinutes,
      'overtime_date': instance.overtimeDate,
      'user_id': instance.userId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'duration': instance.duration,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'notes': instance.notes,
      'approved_by': instance.approvedBy,
      'approver': instance.approver,
      'request_date': instance.requestDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$CauserImpl _$$CauserImplFromJson(Map<String, dynamic> json) => _$CauserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$CauserImplToJson(_$CauserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$ApproverImpl _$$ApproverImplFromJson(Map<String, dynamic> json) =>
    _$ApproverImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$ApproverImplToJson(_$ApproverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
    };
