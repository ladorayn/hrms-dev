// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentAnswerRequestImpl _$$AssessmentAnswerRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentAnswerRequestImpl(
      employeeSelfAssessment: json['employee_self_assessment'] as String?,
      formId: (json['form_id'] as num?)?.toInt(),
      submittedBy: (json['submitted_by'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssessmentAnswerRequestImplToJson(
        _$AssessmentAnswerRequestImpl instance) =>
    <String, dynamic>{
      'employee_self_assessment': instance.employeeSelfAssessment,
      'form_id': instance.formId,
      'submitted_by': instance.submittedBy,
    };
