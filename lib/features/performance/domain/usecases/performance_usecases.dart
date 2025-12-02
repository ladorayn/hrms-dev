import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';

class PerformanceUsecases {
  final PerformanceRepository repository;

  PerformanceUsecases(this.repository);

  Future<List<FormFields>> getFormFields({required int formId}) {
    return repository.getFormFields(formId: formId);
  }

  Future<List<FormFieldsGroup>> getFormFieldsByGroup({required int formId}) {
    return repository.getFormFieldsByGroup(formId: formId);
  }

  Future<String> assessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) {
    return repository.assessmentFormSubmission(
        request: request, assessmentId: assessmentId);
  }

  Future<List<AssessmentList>> getAssessmentList() {
    return repository.getAssessmentList();
  }

  Future<List<AssessmentAnswer>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request}) {
    return repository.getAssessmentAnswer(request: request);
  }
}
