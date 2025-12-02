import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_profile_response.freezed.dart';
part 'face_profile_response.g.dart';

@freezed
class FaceData with _$FaceData {
  const factory FaceData({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'quality_score') double? qualityScore,
    int? source,
    @JsonKey(name: 'created_by') int? createdBy,
    @JsonKey(name: 'image_path') String? imagePath,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _FaceData;

  factory FaceData.fromJson(Map<String, dynamic> json) =>
      _$FaceDataFromJson(json);
}

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    String? name,
    String? email,
    int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    List<FaceData>? faces,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}
