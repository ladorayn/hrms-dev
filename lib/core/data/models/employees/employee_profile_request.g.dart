// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeProfileRequestImpl _$$EmployeeProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeProfileRequestImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phone_number'] as num).toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      gender: json['gender'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      placeOfBirth: json['place_of_birth'] as String,
      maritalStatus: json['marital_status'] as String,
      bloodType: json['blood_type'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      idNumber: json['id_number'] as String,
      npwp: json['npwp'] as String,
      bpjs: json['bpjs'] as String,
      citizenIdAddress: json['citizen_id_address'] as String,
      residentialAddress: json['residential_address'] as String,
      hobby: json['hobby'] as String,
      achievement: json['achievement'] as String,
      personalDescription: json['personal_description'] as String,
      jobPositionId: (json['job_position_id'] as num).toInt(),
      jobLevelId: (json['job_level_id'] as num).toInt(),
      departmentId: (json['department_id'] as num).toInt(),
      teamMembers: (json['team_members'] as List<dynamic>)
          .map((e) => TeamMemberRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: json['start_date'] as String,
      status: json['status'] as String,
      baseSalary: (json['base_salary'] as num).toInt(),
      salaryNett: (json['salary_nett'] as num).toInt(),
      bankId: (json['bank_id'] as num).toInt(),
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      countryCode: (json['country_code'] as num).toInt(),
      photoProfile: json['photo_profile'] as String,
    );

Map<String, dynamic> _$$EmployeeProfileRequestImplToJson(
        _$EmployeeProfileRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'role_id': instance.roleId,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'place_of_birth': instance.placeOfBirth,
      'marital_status': instance.maritalStatus,
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
      'job_position_id': instance.jobPositionId,
      'job_level_id': instance.jobLevelId,
      'department_id': instance.departmentId,
      'team_members': instance.teamMembers,
      'start_date': instance.startDate,
      'status': instance.status,
      'base_salary': instance.baseSalary,
      'salary_nett': instance.salaryNett,
      'bank_id': instance.bankId,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'country_code': instance.countryCode,
      'photo_profile': instance.photoProfile,
    };

_$TeamMemberRequestImpl _$$TeamMemberRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamMemberRequestImpl(
      teamId: (json['team_id'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamMemberRequestImplToJson(
        _$TeamMemberRequestImpl instance) =>
    <String, dynamic>{
      'team_id': instance.teamId,
    };
