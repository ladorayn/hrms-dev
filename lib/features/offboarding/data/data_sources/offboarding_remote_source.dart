import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';

class OffboardingRemoteSource {
  final Dio _dio;

  OffboardingRemoteSource(this._dio);

  Future<BaseResponse<OffboardingStatusResponse>> offboardingStatus() async {
    try {
      final response = await _dio.get(
        'api/ess/offboarding',
      );

      return BaseResponse.fromJson(
        response.data,
        (json) {
          if (json == null) {
            return OffboardingStatusResponse();
          }
          return OffboardingStatusResponse.fromJson(
              json as Map<String, dynamic>);
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<FormFields>>> offboardingFormFields(
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

  Future<BaseResponse> exitFormSubmission(
      {required ExitFormRequest request,
      required formId,
      required offboardingId}) async {
    try {
      final response = await _dio.post(
        'api/v1/employee/offboardings/$offboardingId/exit-interview',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse> submitHandover({
    required HandoverRequest request,
    required int offboardingId,
  }) async {
    try {
      final response = await _dio.post(
        'api/v1/employee/offboardings/$offboardingId/handover-asset-return/bulk',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) {
          if (json == null) {
            return [];
          }
          return json;
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse> validateHandover({
    required HandoverValidateRequest request,
    required String offboardingId,
  }) async {
    try {
      final response = await _dio.post(
        'api/ess/offboarding/$offboardingId/validate-handover-asset',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) {
          if (json == null) {
            return [];
          }
          return json;
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<HandoverItem>>> getHandover({
    required String category,
    required String offboardingId,
    required String userId,
  }) async {
    try {
      final Map<String, dynamic> queryParameters = {};

      queryParameters['category'] = category;
      queryParameters['recipient_user_id'] = userId;

      final response = await _dio.get(
        'api/v1/employee/offboardings/$offboardingId/handover-asset-return',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => HandoverItem.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
