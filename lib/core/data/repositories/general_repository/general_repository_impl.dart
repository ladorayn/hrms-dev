import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';

class GeneralRepositoryImpl implements GeneralRepository {
  final GeneralRemoteSource remoteSource;

  GeneralRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<UploadFile> uploadFile({required PlatformFile file}) async {
    final response = await remoteSource.uploadFile(file: file); // Pass file
    return response.data;
  }

  @override
  Future<UploadFace> uploadFace({required PlatformFile file}) async {
    final response = await remoteSource.uploadFace(file: file); // Pass file
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  // ⭐ ADDED: Verify Face implementation
  @override
  Future<FaceVerify> verifyFace({required PlatformFile file}) async {
    final response = await remoteSource.verifyFace(file: file);
    if (response.status == 'success' && response.data != null) {
      return response.data!;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  // ⭐ ADDED: Get Faces Profile implementation
  @override
  Future<UserProfileData> getFacesProfile() async {
    final response = await remoteSource.getFacesProfile();
    if (response.status == 'success' && response.data != null) {
      return response.data!;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
