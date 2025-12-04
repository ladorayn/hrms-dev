import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';

class GeneralUsecases {
  final GeneralRepository repository;

  GeneralUsecases(this.repository);

  Future<UploadFile> uploadFile({required PlatformFile file}) {
    return repository.uploadFile(file: file);
  }

  Future<UploadFace> uploadFace({required PlatformFile file}) {
    return repository.uploadFace(file: file);
  }

  Future<FaceVerify> verifyFace({required PlatformFile file}) {
    return repository.verifyFace(file: file);
  }

  Future<UserProfileData> getFacesProfile() {
    return repository.getFacesProfile();
  }

  Future<FormDetailResponse> getDetailFormFields({required int formId}) {
    return repository.getDetailFormFields(formId: formId);
  }
}
