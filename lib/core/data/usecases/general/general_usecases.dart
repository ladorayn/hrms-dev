import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';

class GeneralUsecases {
  final GeneralRepository repository;

  GeneralUsecases(this.repository);

  Future<UploadFile> uploadFile({required PlatformFile file}) {
    return repository.uploadFile(file: file);
  }
}
