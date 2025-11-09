// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exit_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExitFormRequestImpl _$$ExitFormRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExitFormRequestImpl(
      submissions: (json['submissions'] as List<dynamic>)
          .map((e) => SubmissionForm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExitFormRequestImplToJson(
        _$ExitFormRequestImpl instance) =>
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
