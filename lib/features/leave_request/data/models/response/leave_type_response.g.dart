// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveTypeImpl _$$LeaveTypeImplFromJson(Map<String, dynamic> json) =>
    _$LeaveTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      gender: json['gender'] as String,
      quotaConfiguration: json['quota_configuration'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      entitlements: (json['entitlements'] as List<dynamic>)
          .map((e) => Entitlement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeaveTypeImplToJson(_$LeaveTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gender': instance.gender,
      'quota_configuration': instance.quotaConfiguration,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'entitlements': instance.entitlements,
    };

_$EntitlementImpl _$$EntitlementImplFromJson(Map<String, dynamic> json) =>
    _$EntitlementImpl(
      id: (json['id'] as num).toInt(),
      leaveTypeId: (json['leave_type_id'] as num).toInt(),
      jobLevel: json['job_level'] as String,
      quotaDays: (json['quota_days'] as num).toInt(),
      carryOverAllowed: json['carry_over_allowed'] as bool,
      maxCarryOverDays: (json['max_carry_over_days'] as num).toInt(),
      deductEmployeeBalance: json['deduct_employee_balance'] as bool,
      carryOverExpiry: json['carry_over_expiry'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$EntitlementImplToJson(_$EntitlementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'leave_type_id': instance.leaveTypeId,
      'job_level': instance.jobLevel,
      'quota_days': instance.quotaDays,
      'carry_over_allowed': instance.carryOverAllowed,
      'max_carry_over_days': instance.maxCarryOverDays,
      'deduct_employee_balance': instance.deductEmployeeBalance,
      'carry_over_expiry': instance.carryOverExpiry,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
