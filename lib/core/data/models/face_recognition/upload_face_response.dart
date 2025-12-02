import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_face_response.freezed.dart';

part 'upload_face_response.g.dart';

@freezed
class UploadFace with _$UploadFace {
  const factory UploadFace({
    required String message,
    @JsonKey(name: 'photo_path') required String photoPath,
  }) = _UploadFace;

  factory UploadFace.fromJson(Map<String, dynamic> json) =>
      _$UploadFaceFromJson(json);
}
