import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';

abstract class GeneralRepository {
  Future<UploadFile> uploadFile({required PlatformFile file});
}
