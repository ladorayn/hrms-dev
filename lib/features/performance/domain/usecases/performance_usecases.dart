import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
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

  Future<String> supervisorAssessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) {
    return repository.supervisorAssessmentFormSubmission(
        request: request, assessmentId: assessmentId);
  }

  Future<String> assessmentFormValidateSubmission(
      {required AssessmentFormValidateRequest request, required assessmentId}) {
    return repository.assessmentFormValidateSubmission(
        request: request, assessmentId: assessmentId);
  }

  Future<List<AssessmentList>> getAssessmentList() {
    return repository.getAssessmentList();
  }

  Future<List<AssessmentAnswer>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request}) {
    return repository.getAssessmentAnswer(request: request);
  }

  Future<SupervisorAssessmentAnswer> getSupervisorAssessmentAnswer(
      {AssessmentAnswerRequest? request}) {
    return repository.getSupervisorAssessmentAnswer(request: request);
  }

  Future<List<SupervisorAssessment>> getSupervisorAssessments() {
    return repository.getSupervisorAssessments();
  }

  Future<SupervisorAssessmentDetail> getSupervisorAssessmentDetail(
      {required dynamic supervisorAssessmentId}) {
    return repository.getSupervisorAssessmentDetail(
        supervisorAssessmentId: supervisorAssessmentId);
  }

  Future<List<OKRList>> getOKRList() {
    return repository.getOKRList();
  }

  Future<OKRDetail> getOKRDetail({required dynamic okrId}) {
    return repository.getOKRDetail(okrId: okrId);
  }

  Future<OKRTracking> getOKRTracking({required dynamic okrKeyResult}) {
    return repository.getOKRTracking(okrKeyResult: okrKeyResult);
  }

  Future<List<SetTrackingValue>> submitTrackingValue(
      {required List<TrackingValueRequest> request}) async {
    return repository.submitTrackingValue(request: request);
  }

  Future<List<OKRGraphData>> getGraphLists({required dynamic id}) async {
    return repository.getGraphLists(id: id);
  }

  Future<CompetencyLevel> getPerformanceCompetencyLevels(
      {String? competencyId, String? dimension, String? level}) async {
    return repository.getPerformanceCompetencyLevels(
        competencyId: competencyId, dimension: dimension, level: level);
  }

  Future<KeyResultGraphDetail> getKeyResultOKRGraph({
    required dynamic id,
    required dynamic okrId,
    Map<String, dynamic>? filters,
  }) async {
    return repository.getKeyResultOKRGraph(
        id: id, okrId: okrId, filters: filters);
  }

  Future<FormFieldsGroupDetail> getFormDetail({required int formId}) async {
    return repository.getFormDetail(formId: formId);
  }
}
