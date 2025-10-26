import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
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
        (json) =>
            OffboardingStatusResponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
