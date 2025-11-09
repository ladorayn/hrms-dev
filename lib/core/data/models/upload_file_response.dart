import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_response.freezed.dart';

part 'upload_file_response.g.dart';

@freezed
class UploadFile with _$UploadFile {
  const factory UploadFile({
    required String path,
    required String disk,
    required String filename,
    @JsonKey(name: 'mime_type') required String mimeType,
    required int size,
    required String url,
  }) = _UploadFile;

  factory UploadFile.fromJson(Map<String, dynamic> json) =>
      _$UploadFileFromJson(json);
}
