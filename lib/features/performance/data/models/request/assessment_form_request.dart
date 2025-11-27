import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_form_request.freezed.dart';
part 'assessment_form_request.g.dart';

@freezed
class AssessmentFormRequest with _$AssessmentFormRequest {
  const factory AssessmentFormRequest({
    required int status,
    required List<SubmissionForm> submissions,
  }) = _AssessmentFormRequest;

  factory AssessmentFormRequest.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFormRequestFromJson(json);
}

@freezed
class SubmissionForm with _$SubmissionForm {
  const factory SubmissionForm({
    @JsonKey(name: 'field_id') required int fieldId,
    required dynamic value,
    @JsonKey(name: 'additional_data') dynamic additionalData,
  }) = _SubmissionForm;

  factory SubmissionForm.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFormFromJson(json);
}
