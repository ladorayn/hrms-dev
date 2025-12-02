// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaceVerifyImpl _$$FaceVerifyImplFromJson(Map<String, dynamic> json) =>
    _$FaceVerifyImpl(
      userId: (json['user_id'] as num?)?.toInt(),
      isMatch: json['is_match'] as bool?,
      similarityScore: (json['similarity_score'] as num?)?.toDouble(),
      threshold: (json['threshold'] as num?)?.toDouble(),
      message: json['message'] as String?,
      matchedEmbeddingId: (json['matched_embedding_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FaceVerifyImplToJson(_$FaceVerifyImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'is_match': instance.isMatch,
      'similarity_score': instance.similarityScore,
      'threshold': instance.threshold,
      'message': instance.message,
      'matched_embedding_id': instance.matchedEmbeddingId,
    };
