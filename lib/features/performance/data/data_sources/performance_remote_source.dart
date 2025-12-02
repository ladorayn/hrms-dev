import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/constants/mock_values.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

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
        mockFormFieldsData,
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
}
