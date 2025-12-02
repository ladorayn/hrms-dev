import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_answer.freezed.dart';
part 'assessment_answer.g.dart';

@freezed
class GroupsAnswer with _$GroupsAnswer {
  const factory GroupsAnswer({
    double? score,
    String? name,
    @JsonKey(name: 'field_group_id') int? fieldGroupId,
  }) = _GroupsAnswer;

  factory GroupsAnswer.fromJson(Map<String, dynamic> json) =>
      _$GroupsAnswerFromJson(json);
}

@freezed
class FieldsAnswer with _$FieldsAnswer {
  const factory FieldsAnswer({
    double? score,
    dynamic value,
    @JsonKey(name: 'field_id') int? fieldId,
    @JsonKey(name: 'field_group_id') int? fieldGroupId,
    @JsonKey(name: 'additional_data') dynamic additionalData,
  }) = _FieldsAnswer;

  factory FieldsAnswer.fromJson(Map<String, dynamic> json) =>
      _$FieldsAnswerFromJson(json);
}

@freezed
class FormAnswer with _$FormAnswer {
  const factory FormAnswer({
    List<FieldsAnswer>? fields,
    List<GroupsAnswer>? groups,
    @JsonKey(name: 'total_score') double? totalScore,
  }) = _FormAnswer;

  factory FormAnswer.fromJson(Map<String, dynamic> json) =>
      _$FormAnswerFromJson(json);
}

@freezed
class AssessmentAnswer with _$AssessmentAnswer {
  const factory AssessmentAnswer({
    int? id,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'submitted_by') int? submittedBy,
    @JsonKey(name: 'formable_type') String? formableType,
    @JsonKey(name: 'formable_id') int? formableId,
    FormAnswer? data,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'validated_for') int? validatedFor,
  }) = _AssessmentAnswer;

  factory AssessmentAnswer.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAnswerFromJson(json);
}
