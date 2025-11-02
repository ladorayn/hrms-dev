import 'package:freezed_annotation/freezed_annotation.dart';

part 'exit_form_request.freezed.dart';
part 'exit_form_request.g.dart';

@freezed
class ExitFormRequest with _$ExitFormRequest {
  const factory ExitFormRequest({
    required List<SubmissionForm> submissions,
  }) = _ExitFormRequest;

  factory ExitFormRequest.fromJson(Map<String, dynamic> json) =>
      _$ExitFormRequestFromJson(json);
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
