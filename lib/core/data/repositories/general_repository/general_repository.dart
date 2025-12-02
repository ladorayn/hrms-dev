import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';

abstract class GeneralRepository {
  Future<UploadFile> uploadFile({required PlatformFile file});

  Future<UploadFace> uploadFace({required PlatformFile file});

  Future<FaceVerify> verifyFace({required PlatformFile file});

  Future<UserProfileData> getFacesProfile();
}
