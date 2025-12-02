// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      id: (json['id'] as num).toInt(),
      employeeId: (json['employee_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      firstLoginAt: json['first_login_at'] as String?,
      isFirstLogin: json['is_first_login'] as bool?,
      employeeProfile: json['employee_profile'] == null
          ? null
          : EmployeeProfile.fromJson(
              json['employee_profile'] as Map<String, dynamic>),
      profileId: (json['profile_id'] as num?)?.toInt(),
      profile: json['profile'] as String?,
      employment: json['employment'] == null
          ? null
          : Employment.fromJson(json['employment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'code': instance.code,
      'photo_profile_url': instance.photoProfileUrl,
      'name': instance.name,
      'email': instance.email,
      'roles': instance.roles,
      'first_login_at': instance.firstLoginAt,
      'is_first_login': instance.isFirstLogin,
      'employee_profile': instance.employeeProfile,
      'profile_id': instance.profileId,
      'profile': instance.profile,
      'employment': instance.employment,
    };
