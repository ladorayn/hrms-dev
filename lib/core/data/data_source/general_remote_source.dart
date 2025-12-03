import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

class GeneralRemoteSource {
  final Dio _dio;
  final Dio _faceDio;

  GeneralRemoteSource(this._dio, this._faceDio);

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

  Future<BaseResponse<UploadFace>> uploadFace({
    required PlatformFile file,
  }) async {
    try {
      final mimeType = lookupMimeType(file.path!);

      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path!,
          filename: file.name,
          contentType: mimeType != null
              ? MediaType.parse(mimeType)
              : MediaType("application", "octet-stream"),
        ),
      });

      final response = await _faceDio.post(
        'api/v1/faces',
        data: formData,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => UploadFace.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<FaceVerify>> verifyFace(
      {required PlatformFile file}) async {
    try {
      final mimeType = lookupMimeType(file.path!);

      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path!,
          filename: file.name,
          contentType: mimeType != null
              ? MediaType.parse(mimeType)
              : MediaType("application", "octet-stream"),
        ),
      });

      final response = await _faceDio.post(
        'api/v1/faces/verify',
        data: formData,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => FaceVerify.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<UserProfileData>> getFacesProfile() async {
    try {
      final response = await _faceDio.get(
        'api/v1/faces/profile',
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => UserProfileData.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
