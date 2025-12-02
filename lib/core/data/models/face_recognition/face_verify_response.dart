import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_verify_response.freezed.dart';

part 'face_verify_response.g.dart';

@freezed
class FaceVerify with _$FaceVerify {
  const factory FaceVerify({
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_match') bool? isMatch,
    @JsonKey(name: 'similarity_score') double? similarityScore,
    double? threshold,
    String? message,
    @JsonKey(name: 'matched_embedding_id') int? matchedEmbeddingId,
  }) = _FaceVerify;

  factory FaceVerify.fromJson(Map<String, dynamic> json) =>
      _$FaceVerifyFromJson(json);
}
