// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OvertimeDetailImpl _$$OvertimeDetailImplFromJson(Map<String, dynamic> json) =>
    _$OvertimeDetailImpl(
      id: (json['id'] as num).toInt(),
      overtimeDate: json['overtime_date'] as String,
      userId: (json['user_id'] as num).toInt(),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['statusLabel'] as String?,
      notes: json['notes'] as String?,
      approvedBy: (json['approved_by'] as num?)?.toInt(),
      approver: json['approver'] == null
          ? null
          : Approver.fromJson(json['approver'] as Map<String, dynamic>),
      requestDate: json['request_date'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$OvertimeDetailImplToJson(
        _$OvertimeDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overtime_date': instance.overtimeDate,
      'user_id': instance.userId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'duration': instance.duration,
      'status': instance.status,
      'statusLabel': instance.statusLabel,
      'notes': instance.notes,
      'approved_by': instance.approvedBy,
      'approver': instance.approver,
      'request_date': instance.requestDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
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
