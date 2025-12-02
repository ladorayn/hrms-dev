// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamMemberImpl _$$TeamMemberImplFromJson(Map<String, dynamic> json) =>
    _$TeamMemberImpl(
      id: (json['id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      formId: (json['form_id'] as num?)?.toInt(),
      jobPositionName: json['job_position_name'] as String?,
      jobLevelName: json['job_level_name'] as String?,
      departmentName: json['department_name'] as String?,
      statusLabel: json['status_label'] as String?,
      photoProfile: json['photo_profile'] as String?,
      submittedAt: json['submitted_at'] as String?,
      validatedAt: json['validated_at'] as String?,
    );

Map<String, dynamic> _$$TeamMemberImplToJson(_$TeamMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'form_id': instance.formId,
      'job_position_name': instance.jobPositionName,
      'job_level_name': instance.jobLevelName,
      'department_name': instance.departmentName,
      'status_label': instance.statusLabel,
      'photo_profile': instance.photoProfile,
      'submitted_at': instance.submittedAt,
      'validated_at': instance.validatedAt,
    };

_$AssessmentListImpl _$$AssessmentListImplFromJson(Map<String, dynamic> json) =>
    _$AssessmentListImpl(
      id: (json['id'] as num?)?.toInt(),
      period: json['period'] as String?,
      status: json['status'] as String?,
      formId: (json['form_id'] as num?)?.toInt(),
      dueDate: json['due_date'] as String?,
      teamMember: (json['team_member'] as List<dynamic>?)
          ?.map((e) => TeamMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssessmentListImplToJson(
        _$AssessmentListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'status': instance.status,
      'form_id': instance.formId,
      'due_date': instance.dueDate,
      'team_member': instance.teamMember,
    };
