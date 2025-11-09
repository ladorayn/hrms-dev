import 'package:file_picker/file_picker.dart';
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
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
}
