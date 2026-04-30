// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FCMRegistrationRequestImpl _$$FCMRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FCMRegistrationRequestImpl(
      token: json['token'] as String,
      platform: (json['platform'] as num).toInt(),
    );

Map<String, dynamic> _$$FCMRegistrationRequestImplToJson(
        _$FCMRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'platform': instance.platform,
    };
