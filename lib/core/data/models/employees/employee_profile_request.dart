import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_profile_request.freezed.dart';

part 'employee_profile_request.g.dart';

@freezed
class EmployeeProfileRequest with _$EmployeeProfileRequest {
  const factory EmployeeProfileRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone_number') required int phoneNumber,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    @JsonKey(name: 'place_of_birth') required String placeOfBirth,
    @JsonKey(name: 'marital_status') required String maritalStatus,
    @JsonKey(name: 'blood_type') required String bloodType,
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'weight') required int weight,
    @JsonKey(name: 'id_number') required String idNumber,
    @JsonKey(name: 'npwp') required String npwp,
    @JsonKey(name: 'bpjs') required String bpjs,
    @JsonKey(name: 'citizen_id_address') required String citizenIdAddress,
    @JsonKey(name: 'residential_address') required String residentialAddress,
    @JsonKey(name: 'hobby') required String hobby,
    @JsonKey(name: 'achievement') required String achievement,
    @JsonKey(name: 'personal_description') required String personalDescription,
    @JsonKey(name: 'job_position_id') required int jobPositionId,
    @JsonKey(name: 'job_level_id') required int jobLevelId,
    @JsonKey(name: 'department_id') required int departmentId,
    @JsonKey(name: 'team_members') required List<TeamMemberRequest> teamMembers,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'base_salary') required int baseSalary,
    @JsonKey(name: 'salary_nett') required int salaryNett,
    @JsonKey(name: 'bank_id') required int bankId,
    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'account_name') required String accountName,
    @JsonKey(name: 'country_code') required int countryCode,
    @JsonKey(name: 'photo_profile') required String photoProfile,
  }) = _EmployeeProfileRequest;

  factory EmployeeProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EmployeeProfileRequestFromJson(json);
}

@freezed
class TeamMemberRequest with _$TeamMemberRequest {
  const factory TeamMemberRequest({
    @JsonKey(name: 'team_id') required int teamId,
  }) = _TeamMemberRequest;

  factory TeamMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberRequestFromJson(json);
}
