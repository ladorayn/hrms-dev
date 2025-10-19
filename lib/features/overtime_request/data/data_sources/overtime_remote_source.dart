import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';

class OvertimeRemoteSource {
  final Dio _dio;

  OvertimeRemoteSource(this._dio);

  Future<BaseResponse<OvertimeResponse>> overtimeRequest(
      OvertimeRequest request) async {
    try {
      final response = await _dio.post(
        'api/ess/overtime',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => OvertimeResponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<OvertimeResponse>> updateOvertimeRequest(
      {required String overtimeId, required OvertimeRequest request}) async {
    try {
      final response = await _dio.put(
        'api/ess/overtime/$overtimeId',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => OvertimeResponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
