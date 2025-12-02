// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_assessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employeeCode: json['employee_code'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'employee_id': instance.employeeId,
      'employee_code': instance.employeeCode,
      'avatar_url': instance.avatarUrl,
    };

_$PositionLevelImpl _$$PositionLevelImplFromJson(Map<String, dynamic> json) =>
    _$PositionLevelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      status: json['status'] as String?,
      isRoot: json['is_root'] as bool?,
    );

Map<String, dynamic> _$$PositionLevelImplToJson(_$PositionLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'status': instance.status,
      'is_root': instance.isRoot,
    };

_$AssessmentFormImpl _$$AssessmentFormImplFromJson(Map<String, dynamic> json) =>
    _$AssessmentFormImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AssessmentFormImplToJson(
        _$AssessmentFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SupervisorAssessmentImpl _$$SupervisorAssessmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SupervisorAssessmentImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      currentPosition: json['current_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_position'] as Map<String, dynamic>),
      currentLevel: json['current_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_level'] as Map<String, dynamic>),
      targetPosition: json['target_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_position'] as Map<String, dynamic>),
      targetLevel: json['target_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_level'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      schedule: json['schedule'] as String?,
      form: json['form'] == null
          ? null
          : AssessmentForm.fromJson(json['form'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SupervisorAssessmentImplToJson(
        _$SupervisorAssessmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'current_position': instance.currentPosition,
      'current_level': instance.currentLevel,
      'target_position': instance.targetPosition,
      'target_level': instance.targetLevel,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'schedule': instance.schedule,
      'form': instance.form,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
