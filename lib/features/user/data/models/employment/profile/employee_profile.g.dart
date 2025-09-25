// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeProfileImpl _$$EmployeeProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeProfileImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      code: json['code'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      maritalStatus: (json['marital_status'] as num?)?.toInt(),
      maritalStatusLabel: json['marital_status_label'] as String?,
      bloodType: json['blood_type'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      idNumber: json['id_number'] as String?,
      npwp: json['npwp'] as String?,
      bpjs: json['bpjs'] as String?,
      citizenIdAddress: json['citizen_id_address'] as String?,
      residentialAddress: json['residential_address'] as String?,
      hobby: json['hobby'] as String?,
      achievement: json['achievement'] as String?,
      personalDescription: json['personal_description'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$EmployeeProfileImplToJson(
        _$EmployeeProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'code': instance.code,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'place_of_birth': instance.placeOfBirth,
      'marital_status': instance.maritalStatus,
      'marital_status_label': instance.maritalStatusLabel,
      'blood_type': instance.bloodType,
      'height': instance.height,
      'weight': instance.weight,
      'id_number': instance.idNumber,
      'npwp': instance.npwp,
      'bpjs': instance.bpjs,
      'citizen_id_address': instance.citizenIdAddress,
      'residential_address': instance.residentialAddress,
      'hobby': instance.hobby,
      'achievement': instance.achievement,
      'personal_description': instance.personalDescription,
      'photo_profile_url': instance.photoProfileUrl,
      'phone_number': instance.phoneNumber,
    };
