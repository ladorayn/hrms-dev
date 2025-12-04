// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsAnswerImpl _$$GroupsAnswerImplFromJson(Map<String, dynamic> json) =>
    _$GroupsAnswerImpl(
      score: (json['score'] as num?)?.toDouble(),
      name: json['name'] as String?,
      fieldGroupId: (json['field_group_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GroupsAnswerImplToJson(_$GroupsAnswerImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'name': instance.name,
      'field_group_id': instance.fieldGroupId,
    };

_$FieldsAnswerImpl _$$FieldsAnswerImplFromJson(Map<String, dynamic> json) =>
    _$FieldsAnswerImpl(
      score: (json['score'] as num?)?.toDouble(),
      value: json['value'],
      fieldId: (json['field_id'] as num?)?.toInt(),
      fieldGroupId: (json['field_group_id'] as num?)?.toInt(),
      additionalData: json['additional_data'],
    );

Map<String, dynamic> _$$FieldsAnswerImplToJson(_$FieldsAnswerImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'value': instance.value,
      'field_id': instance.fieldId,
      'field_group_id': instance.fieldGroupId,
      'additional_data': instance.additionalData,
    };

_$FormAnswerImpl _$$FormAnswerImplFromJson(Map<String, dynamic> json) =>
    _$FormAnswerImpl(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldsAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => GroupsAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalScore: (json['total_score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FormAnswerImplToJson(_$FormAnswerImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'groups': instance.groups,
      'total_score': instance.totalScore,
    };

_$AssessmentAnswerImpl _$$AssessmentAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentAnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      formId: (json['form_id'] as num?)?.toInt(),
      submittedBy: (json['submitted_by'] as num?)?.toInt(),
      formableType: json['formable_type'] as String?,
      formableId: (json['formable_id'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : FormAnswer.fromJson(json['data'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      validatedFor: (json['validated_for'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssessmentAnswerImplToJson(
        _$AssessmentAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_id': instance.formId,
      'submitted_by': instance.submittedBy,
      'formable_type': instance.formableType,
      'formable_id': instance.formableId,
      'data': instance.data,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'validated_for': instance.validatedFor,
    };

_$SupervisorAssessmentAnswerImpl _$$SupervisorAssessmentAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$SupervisorAssessmentAnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      formId: (json['form_id'] as num?)?.toInt(),
      submittedBy: (json['submitted_by'] as num?)?.toInt(),
      formableType: json['formable_type'] as String?,
      formableId: (json['formable_id'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubmissionForm.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      validatedFor: (json['validated_for'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SupervisorAssessmentAnswerImplToJson(
        _$SupervisorAssessmentAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_id': instance.formId,
      'submitted_by': instance.submittedBy,
      'formable_type': instance.formableType,
      'formable_id': instance.formableId,
      'data': instance.data,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'validated_for': instance.validatedFor,
    };
