import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/data_sources/performance_remote_source.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';

class PerformanceRepositoryImpl implements PerformanceRepository {
  final PerformanceRemoteSource remoteSource;

  PerformanceRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<List<FormFields>> getFormFields({required int formId}) async {
    final response = await remoteSource.getFormFields(formId: formId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<FormFieldsGroup>> getFormFieldsByGroup(
      {required int formId}) async {
    final response = await remoteSource.getFormFieldsByGroup(formId: formId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<String> assessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) async {
    final response = await remoteSource.assessmentFormSubmission(
        request: request, assessmentId: assessmentId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<String> supervisorAssessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) async {
    final response = await remoteSource.supervisorAssessmentFormSubmission(
        request: request, assessmentId: assessmentId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<String> assessmentFormValidateSubmission(
      {required AssessmentFormValidateRequest request,
      required assessmentId}) async {
    final response = await remoteSource.assessmentFormValidateSubmission(
        request: request, assessmentId: assessmentId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<AssessmentList>> getAssessmentList() async {
    final response = await remoteSource.getAssessmentList();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<AssessmentAnswer>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request}) async {
    final response = await remoteSource.getAssessmentAnswer(request: request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<SupervisorAssessmentAnswer> getSupervisorAssessmentAnswer(
      {AssessmentAnswerRequest? request}) async {
    final response =
        await remoteSource.getSupervisorAssessmentAnswer(request: request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<SupervisorAssessment>> getSupervisorAssessments() async {
    final response = await remoteSource.getSupervisorAssessments();
    return response.data;
  }

  @override
  Future<SupervisorAssessmentDetail> getSupervisorAssessmentDetail(
      {required dynamic supervisorAssessmentId}) async {
    final response = await remoteSource.getSupervisorAssessmentDetail(
        supervisorAssessmentId: supervisorAssessmentId);
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<OKRList>> getOKRList() async {
    final response = await remoteSource.getOKRList();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<OKRDetail> getOKRDetail({required dynamic okrId}) async {
    final response = await remoteSource.getOKRDetail(okrId: okrId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<OKRTracking> getOKRTracking({required dynamic okrKeyResult}) async {
    final response =
        await remoteSource.getOKRTracking(okrKeyResult: okrKeyResult);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<SetTrackingValue>> submitTrackingValue(
      {required List<TrackingValueRequest> request}) async {
    final response = await remoteSource.submitTrackingValue(request: request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<OKRGraphData>> getGraphLists({required dynamic id}) async {
    final response = await remoteSource.getGraphLists(id: id);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<CompetencyLevel> getPerformanceCompetencyLevels(
      {String? competencyId, String? dimension, String? level}) async {
    final response = await remoteSource.getPerformanceCompetencyLevels(
      competencyId: competencyId,
      dimension: dimension,
      level: level,
    );

    if (response.status == 'success') {
      return response.data[0];
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<KeyResultGraphDetail> getKeyResultOKRGraph({
    required dynamic id,
    required dynamic okrId,
    Map<String, dynamic>? filters,
  }) async {
    final response = await remoteSource.getKeyResultOKRGraph(
        id: id, okrId: okrId, filters: filters);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<FormFieldsGroupDetail> getFormDetail({required int formId}) async {
    final response = await remoteSource.getFormDetail(formId: formId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
