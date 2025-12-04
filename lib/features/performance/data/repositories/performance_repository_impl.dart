import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/data_sources/performance_remote_source.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
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

    print("SINI PAKK $response");
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
}
