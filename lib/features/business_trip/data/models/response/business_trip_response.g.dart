// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_trip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessTripDataImpl _$$BusinessTripDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTripDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      destination: json['destination'] as String?,
      reason: json['reason'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusStr: json['status_str'] as String?,
      approvedAt: json['approved_at'] as String?,
      approvedById: (json['approved_by_id'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      metadata: json['metadata'],
      user: json['user'] == null
          ? null
          : BusinessTripUser.fromJson(json['user'] as Map<String, dynamic>),
      approver: json['approver'] == null
          ? null
          : BusinessTripApprover.fromJson(
              json['approver'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$BusinessTripDataImplToJson(
        _$BusinessTripDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'tenant_id': instance.tenantId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'destination': instance.destination,
      'reason': instance.reason,
      'status': instance.status,
      'status_str': instance.statusStr,
      'approved_at': instance.approvedAt,
      'approved_by_id': instance.approvedById,
      'notes': instance.notes,
      'metadata': instance.metadata,
      'user': instance.user,
      'approver': instance.approver,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };

_$BusinessTripUserImpl _$$BusinessTripUserImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTripUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employeeCode: json['employee_code'] as String?,
      photoProfile: json['photo_profile'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
    );

Map<String, dynamic> _$$BusinessTripUserImplToJson(
        _$BusinessTripUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'employee_id': instance.employeeId,
      'employee_code': instance.employeeCode,
      'photo_profile': instance.photoProfile,
      'photo_profile_url': instance.photoProfileUrl,
    };

_$BusinessTripApproverImpl _$$BusinessTripApproverImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTripApproverImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employeeCode: json['employee_code'] as String?,
      photoProfile: json['photo_profile'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
    );

Map<String, dynamic> _$$BusinessTripApproverImplToJson(
        _$BusinessTripApproverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'employee_id': instance.employeeId,
      'employee_code': instance.employeeCode,
      'photo_profile': instance.photoProfile,
      'photo_profile_url': instance.photoProfileUrl,
    };
