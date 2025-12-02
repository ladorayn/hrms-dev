// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaceDataImpl _$$FaceDataImplFromJson(Map<String, dynamic> json) =>
    _$FaceDataImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      qualityScore: (json['quality_score'] as num?)?.toDouble(),
      source: (json['source'] as num?)?.toInt(),
      createdBy: (json['created_by'] as num?)?.toInt(),
      imagePath: json['image_path'] as String?,
      imageUrl: json['image_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$FaceDataImplToJson(_$FaceDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'is_active': instance.isActive,
      'quality_score': instance.qualityScore,
      'source': instance.source,
      'created_by': instance.createdBy,
      'image_path': instance.imagePath,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      faces: (json['faces'] as List<dynamic>?)
          ?.map((e) => FaceData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'faces': instance.faces,
    };
