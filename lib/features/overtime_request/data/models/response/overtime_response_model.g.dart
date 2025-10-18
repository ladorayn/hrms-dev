// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OvertimeResponseImpl _$$OvertimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OvertimeResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      overtimeDate: json['overtime_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      notes: json['notes'] as String?,
      approvedBy: json['approved_by'] as String?,
      requestDate: json['request_date'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OvertimeResponseImplToJson(
        _$OvertimeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'overtime_date': instance.overtimeDate,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'duration': instance.duration,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'notes': instance.notes,
      'approved_by': instance.approvedBy,
      'request_date': instance.requestDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
