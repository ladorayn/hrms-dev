// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveRequestImpl _$$LeaveRequestImplFromJson(Map<String, dynamic> json) =>
    _$LeaveRequestImpl(
      leaveTypeId: (json['leave_type_id'] as num).toInt(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      reason: json['reason'] as String,
      attachment: json['attachment'] as String?,
    );

Map<String, dynamic> _$$LeaveRequestImplToJson(_$LeaveRequestImpl instance) =>
    <String, dynamic>{
      'leave_type_id': instance.leaveTypeId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'reason': instance.reason,
      if (instance.attachment case final value?) 'attachment': value,
    };

_$LeaveGroupImpl _$$LeaveGroupImplFromJson(Map<String, dynamic> json) =>
    _$LeaveGroupImpl(
      date: json['date'] as String,
      label: json['label'] as String,
      leaves: (json['leaves'] as List<dynamic>)
          .map((e) => LeaveHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeaveGroupImplToJson(_$LeaveGroupImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'label': instance.label,
      'leaves': instance.leaves,
    };

_$LeaveHistoryItemImpl _$$LeaveHistoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveHistoryItemImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      leaveType:
          LeaveTypes.fromJson(json['leave_type'] as Map<String, dynamic>),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      day: (json['day'] as num).toInt(),
      reason: json['reason'] as String,
      status: (json['status'] as num).toInt(),
      statusLabel: json['status_label'] as String,
      attachment: json['attachment'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$LeaveHistoryItemImplToJson(
        _$LeaveHistoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'leave_type': instance.leaveType,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'day': instance.day,
      'reason': instance.reason,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'attachment': instance.attachment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$LeaveTypeImpl _$$LeaveTypeImplFromJson(Map<String, dynamic> json) =>
    _$LeaveTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$LeaveTypeImplToJson(_$LeaveTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$LeaveDetailImpl _$$LeaveDetailImplFromJson(Map<String, dynamic> json) =>
    _$LeaveDetailImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      leaveType: LeaveDetailLeaveType.fromJson(
          json['leave_type'] as Map<String, dynamic>),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      day: (json['day'] as num).toInt(),
      reason: json['reason'] as String,
      status: (json['status'] as num).toInt(),
      statusLabel: json['status_label'] as String,
      attachment: json['attachment'] as String?,
      user: LeaveDetailUser.fromJson(json['user'] as Map<String, dynamic>),
      approvers: (json['approvers'] as List<dynamic>)
          .map((e) => LeaveDetailApprover.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$LeaveDetailImplToJson(_$LeaveDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'leave_type': instance.leaveType,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'day': instance.day,
      'reason': instance.reason,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'attachment': instance.attachment,
      'user': instance.user,
      'approvers': instance.approvers,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$LeaveDetailLeaveTypeImpl _$$LeaveDetailLeaveTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveDetailLeaveTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$LeaveDetailLeaveTypeImplToJson(
        _$LeaveDetailLeaveTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$LeaveDetailUserImpl _$$LeaveDetailUserImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveDetailUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$LeaveDetailUserImplToJson(
        _$LeaveDetailUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$LeaveDetailApproverImpl _$$LeaveDetailApproverImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveDetailApproverImpl(
      id: (json['id'] as num).toInt(),
      user: LeaveDetailUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeaveDetailApproverImplToJson(
        _$LeaveDetailApproverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };
