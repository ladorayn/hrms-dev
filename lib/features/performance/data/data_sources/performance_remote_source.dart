import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class PerformanceRemoteSource {
  final Dio _dio;

  PerformanceRemoteSource(this._dio);

  Future<BaseResponse<List<FormFields>>> getFormFields(
      {required int formId}) async {
    try {
      final response = await _dio.get('api/v1/form/field', queryParameters: {
        'form_id': formId,
      });

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => FormFields.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<FormFieldsGroup>>> getFormFieldsByGroup(
      {required int formId}) async {
    try {
      final response =
          await _dio.get('api/v1/form/field/group', queryParameters: {
        'form_id': formId,
      });

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                FormFieldsGroup.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<FormFieldsGroupDetail>> getFormDetail(
      {required int formId}) async {
    try {
      final response = await _dio.get('api/v1/forms/$formId');

      return BaseResponse.fromJson(
          response.data,
          (json) =>
              FormFieldsGroupDetail.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<String>> assessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) async {
    try {
      final response = await _dio.post(
        'api/ess/self-assessment/$assessmentId/submission',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json as String,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<String>> supervisorAssessmentFormSubmission(
      {required AssessmentFormRequest request, required assessmentId}) async {
    try {
      final response = await _dio.post(
        'api/ess/supervisor-assessments/$assessmentId/submit',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json as String,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<String>> assessmentFormValidateSubmission(
      {required AssessmentFormValidateRequest request,
      required assessmentId}) async {
    try {
      final response = await _dio.post(
        'api/ess/self-assessment/$assessmentId/submission/validate',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json as String,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<AssessmentList>>> getAssessmentList() async {
    try {
      final response = await _dio.get(
        'api/ess/self-assessment',
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map(
                (item) => AssessmentList.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<AssessmentAnswer>>> getAssessmentAnswer(
      {AssessmentAnswerRequest? request}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'form_id': request?.formId,
        'submitted_by': request?.submittedBy,
      };

      final response = await _dio.get(
        'api/ess/self-assessment/${request?.employeeSelfAssessment}/submission',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                AssessmentAnswer.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<SupervisorAssessmentAnswer>>
      getSupervisorAssessmentAnswer({AssessmentAnswerRequest? request}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'form_id': request?.formId,
        'submitted_by': request?.submittedBy,
      };

      final response = await _dio.get(
        'api/ess/supervisor-assessments/${request?.employeeSelfAssessment}/my-submission',
        queryParameters: queryParameters,
      );

      if (response.data['data'] == null) {
        return BaseResponse<SupervisorAssessmentAnswer>(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? '',
          data: const SupervisorAssessmentAnswer(data: []),
        );
      }

      return BaseResponse.fromJson(
          response.data,
          (json) => SupervisorAssessmentAnswer.fromJson(
              json as Map<String, dynamic>));
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BasePaginatedResponse<SupervisorAssessment>>
      getSupervisorAssessments() async {
    try {
      final response = await _dio.get('api/ess/supervisor-assessments');

      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => SupervisorAssessment.fromJson(json as Map<String, dynamic>),
        emptyT: () => List.empty(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<SupervisorAssessmentDetail>>
      getSupervisorAssessmentDetail(
          {required dynamic supervisorAssessmentId}) async {
    try {
      final response = await _dio
          .get('api/ess/supervisor-assessments/$supervisorAssessmentId');

      return BaseResponse.fromJson(
        response.data,
        (json) =>
            SupervisorAssessmentDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BasePaginatedResponse<OKRList>> getOKRList() async {
    try {
      final response = await _dio.get(
        'api/v1/okr/cycles',
      );

      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => OKRList.fromJson(json as Map<String, dynamic>),
        emptyT: () => List.empty(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<OKRDetail>> getOKRDetail({required dynamic okrId}) async {
    try {
      final response = await _dio.get('api/ess/okr/$okrId');

      return BaseResponse.fromJson(
        response.data,
        (json) => OKRDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<OKRTracking>> getOKRTracking(
      {required dynamic okrKeyResult}) async {
    try {
      final response = await _dio.get('api/ess/okr/$okrKeyResult/tracking');

      return BaseResponse.fromJson(
        response.data,
        (json) => OKRTracking.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<SetTrackingValue>>> submitTrackingValue(
      {required List<TrackingValueRequest> request}) async {
    try {
      final response = await _dio.post(
        'api/ess/okr/set-tracking-value',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                SetTrackingValue.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<OKRGraphData>>> getGraphLists(
      {required dynamic id}) async {
    try {
      final response = await _dio.get(
        'api/v1/okr/cycles/$id/graph',
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => OKRGraphData.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<CompetencyLevel>>> getPerformanceCompetencyLevels(
      {String? competencyId, String? dimension, String? level}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'competency_id': competencyId,
        'dimension': dimension,
        'page': 1,
        'per_page': 1,
        'level': level
      };

      final response = await _dio.get(
        'api/v1/setting/performance-competency-levels',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                CompetencyLevel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<KeyResultGraphDetail>> getKeyResultOKRGraph({
    required dynamic id,
    required dynamic okrId,
    Map<String, dynamic>? filters,
  }) async {
    try {
      final response = await _dio.get(
        'api/v1/okr/cycles/$id/graph/$okrId',
        queryParameters: filters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => KeyResultGraphDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
