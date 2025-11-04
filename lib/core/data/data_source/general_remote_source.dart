import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';

class GeneralRemoteSource {
  final Dio _dio;

  GeneralRemoteSource(this._dio);

  Future<BaseResponse<UploadFile>> uploadFile(
      {required PlatformFile file}) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path!,
          filename: file.name,
        ),
      });

      final response = await _dio.post(
        'api/v1/attachments',
        data: formData,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => UploadFile.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
