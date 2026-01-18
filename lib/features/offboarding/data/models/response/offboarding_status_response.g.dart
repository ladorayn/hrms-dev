// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offboarding_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffboardingStatusResponseImpl _$$OffboardingStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OffboardingStatusResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      effectiveResignationDate: json['effective_resignation_date'] as String?,
      lastWorkingDate: json['last_working_date'] as String?,
      formId: (json['form_id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OffboardingStatusResponseImplToJson(
        _$OffboardingStatusResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'effective_resignation_date': instance.effectiveResignationDate,
      'last_working_date': instance.lastWorkingDate,
      'form_id': instance.formId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$OffboardingProgreessImpl _$$OffboardingProgreessImplFromJson(
        Map<String, dynamic> json) =>
    _$OffboardingProgreessImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
    );

Map<String, dynamic> _$$OffboardingProgreessImplToJson(
        _$OffboardingProgreessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'label': instance.label,
      'description': instance.description,
      'is_completed': instance.isCompleted,
    };
