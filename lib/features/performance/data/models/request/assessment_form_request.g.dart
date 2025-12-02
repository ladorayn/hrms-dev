// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentFormRequestImpl _$$AssessmentFormRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentFormRequestImpl(
      status: (json['status'] as num).toInt(),
      submissions: (json['submissions'] as List<dynamic>)
          .map((e) => SubmissionForm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssessmentFormRequestImplToJson(
        _$AssessmentFormRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'submissions': instance.submissions,
    };

_$AssessmentFormValidateRequestImpl
    _$$AssessmentFormValidateRequestImplFromJson(Map<String, dynamic> json) =>
        _$AssessmentFormValidateRequestImpl(
          submissions: (json['submissions'] as List<dynamic>)
              .map((e) => SubmissionForm.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AssessmentFormValidateRequestImplToJson(
        _$AssessmentFormValidateRequestImpl instance) =>
    <String, dynamic>{
      'submissions': instance.submissions,
    };

_$SubmissionFormImpl _$$SubmissionFormImplFromJson(Map<String, dynamic> json) =>
    _$SubmissionFormImpl(
      fieldId: (json['field_id'] as num).toInt(),
      value: json['value'],
      additionalData: json['additional_data'],
    );

Map<String, dynamic> _$$SubmissionFormImplToJson(
        _$SubmissionFormImpl instance) =>
    <String, dynamic>{
      'field_id': instance.fieldId,
      'value': instance.value,
      'additional_data': instance.additionalData,
    };
