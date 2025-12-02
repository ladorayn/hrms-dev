// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      emailVerifyAt: json['email_verify_at'] as String?,
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      isFirstLogin: json['is_first_login'] as bool?,
      firstLoginAt: json['first_login_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      fcmToken: json['fcm_token'] as String?,
      profileId: (json['profile_id'] as num?)?.toInt(),
      profile: json['profile'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'email_verify_at': instance.emailVerifyAt,
      'tenant_id': instance.tenantId,
      'is_first_login': instance.isFirstLogin,
      'first_login_at': instance.firstLoginAt,
      'deleted_at': instance.deletedAt,
      'fcm_token': instance.fcmToken,
      'profile_id': instance.profileId,
      'profile': instance.profile,
    };
