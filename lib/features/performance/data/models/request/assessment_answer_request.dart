import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_answer_request.freezed.dart';
part 'assessment_answer_request.g.dart';

@freezed
class AssessmentAnswerRequest with _$AssessmentAnswerRequest {
  const factory AssessmentAnswerRequest({
    @JsonKey(name: 'employee_self_assessment') String? employeeSelfAssessment,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'submitted_by') int? submittedBy,
  }) = _AssessmentAnswerRequest;

  factory AssessmentAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAnswerRequestFromJson(json);
}
