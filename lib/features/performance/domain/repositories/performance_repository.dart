import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

abstract class PerformanceRepository {
  Future<List<FormFields>> getFormFields({required int formId});

  Future<List<FormFieldsGroup>> getFormFieldsByGroup({required int formId});

  Future<List<AssessmentList>> getAssessmentList();

  Future<List<AssessmentAnswer>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request});

  Future<SupervisorAssessmentAnswer> getSupervisorAssessmentAnswer(
      {AssessmentAnswerRequest? request});

  Future<String> assessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId});

  Future<String> supervisorAssessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId});

  Future<String> assessmentFormValidateSubmission(
      {required AssessmentFormValidateRequest request, required assessmentId});

  Future<List<SupervisorAssessment>> getSupervisorAssessments();

  Future<SupervisorAssessmentDetail> getSupervisorAssessmentDetail(
      {required dynamic supervisorAssessmentId});

  Future<List<OKRList>> getOKRList();

  Future<OKRDetail> getOKRDetail({required dynamic okrId});

  Future<OKRTracking> getOKRTracking({required dynamic okrKeyResult});

  Future<List<SetTrackingValue>> submitTrackingValue(
      {required List<TrackingValueRequest> request});

  Future<List<OKRGraphData>> getGraphLists({required dynamic id});

  Future<CompetencyLevel> getPerformanceCompetencyLevels(
      {String? competencyId, String? dimension, String? level});

  Future<KeyResultGraphDetail> getKeyResultOKRGraph(
      {required dynamic id,
      required dynamic okrId,
      Map<String, dynamic>? filters});

  Future<FormFieldsGroupDetail> getFormDetail({required int formId});
}
