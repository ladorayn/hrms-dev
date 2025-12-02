import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

abstract class PerformanceRepository {
  Future<List<FormFields>> getFormFields({required int formId});

  Future<List<FormFieldsGroup>> getFormFieldsByGroup({required int formId});

  Future<List<AssessmentList>> getAssessmentList();

  Future<List<AssessmentAnswer>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request});

  Future<String> assessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId});

  Future<String> assessmentFormValidateSubmission(
      {required AssessmentFormValidateRequest request, required assessmentId});
}
