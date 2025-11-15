import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/constants/mock_values.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';

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
}
