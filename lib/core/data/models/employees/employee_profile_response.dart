import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_profile_response.freezed.dart';

part 'employee_profile_response.g.dart';

// --- NEW TOP-LEVEL MODEL ---
// Maps the primary JSON object which contains user, employee_profile, and employment data.

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    UserWithEmployeeData? user,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class UserWithEmployeeData with _$UserWithEmployeeData {
  const factory UserWithEmployeeData({
    // Fields from the top level of the JSON:
    int? id,
    @JsonKey(name: 'employee_id') int? employeeId,
    String? code,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    String? name,
    String? email,
    List<String>? roles,
    @JsonKey(name: 'first_login_at') String? firstLoginAt,
    @JsonKey(name: 'is_first_login') bool? isFirstLogin,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    // Nested objects:
    @JsonKey(name: 'employee_profile')
    required EmployeeProfileData employeeProfile, // Renamed model
    Employment? employment,
    // Branch? branch, // Keep if branch is expected here in other responses
  }) = _UserWithEmployeeData;

  factory UserWithEmployeeData.fromJson(Map<String, dynamic> json) =>
      _$UserWithEmployeeDataFromJson(json);
}

// --- RENAMED MODEL ---
// Maps the nested "employee_profile" object from the JSON.
@freezed
class EmployeeProfileData with _$EmployeeProfileData {
  const factory EmployeeProfileData({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? gender,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    @JsonKey(name: 'marital_status') int? maritalStatus,
    @JsonKey(name: 'marital_status_label') String? maritalStatusLabel,
    @JsonKey(name: 'blood_type') String? bloodType,
    String? height,
    String? weight,
    @JsonKey(name: 'id_number') String? idNumber,
    String? npwp,
    String? bpjs,
    @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
    @JsonKey(name: 'residential_address') String? residentialAddress,
    String? hobby,
    String? achievement,
    @JsonKey(name: 'personal_description') String? personalDescription,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    String? code,
    // Removed UserProfile (user) and Employment as they are now in UserWithEmployeeData
    // Removed Branch as well if not applicable here
    @JsonKey(name: 'social_media_accounts')
    List<SocialMediaAccount>? socialMediaAccounts,
    @JsonKey(name: 'bank_account') BankAccount? bankAccount,
    @JsonKey(name: 'team_members') List<TeamMember>? teamMembers,
    @JsonKey(name: 'reporting_relationships')
    List<ReportingRelationship>? reportingRelationships,
    @JsonKey(name: 'work_experiences') List<WorkExperience>? workExperiences,
    List<Education>? educations,
    List<FamilyEmployee>? families,
    @JsonKey(name: 'contact_refferences')
    List<ContactReference>? contactRefferences,
    @JsonKey(name: 'employee_documents')
    List<EmployeeDocument>? employeeDocuments,
  }) = _EmployeeProfileData;

  factory EmployeeProfileData.fromJson(Map<String, dynamic> json) =>
      _$EmployeeProfileDataFromJson(json);
}

// --- REMOVED: UserProfile (Integrated into UserWithEmployeeData) ---

// --- NESTED MODELS (Mostly Unchanged) ---

@freezed
class Branch with _$Branch {
  const factory Branch({
    int? id,
    String? name,
    String? latitude,
    String? longitude,
    String? address,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}

@freezed
class Employment with _$Employment {
  const factory Employment({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    // The following IDs are not in the sample JSON but are kept for completeness:
    @JsonKey(name: 'department_id') int? departmentId,
    @JsonKey(name: 'job_level_id') int? jobLevelId,
    @JsonKey(name: 'job_position_id') int? jobPositionId,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'base_salary') String? baseSalary,
    @JsonKey(name: 'salary_nett') String? salaryNett,
    int? status,
    Department? department,
    @JsonKey(name: 'job_level') JobLevel? jobLevel,
    @JsonKey(name: 'job_position') JobPosition? jobPosition,
    List<Allowance>? allowances,
  }) = _Employment;

  factory Employment.fromJson(Map<String, dynamic> json) =>
      _$EmploymentFromJson(json);
}

@freezed
class Department with _$Department {
  const factory Department({
    int? id,
    String? name,
    String? description,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@freezed
class JobLevel with _$JobLevel {
  const factory JobLevel({
    int? id,
    String? name,
    String? description,
  }) = _JobLevel;

  factory JobLevel.fromJson(Map<String, dynamic> json) =>
      _$JobLevelFromJson(json);
}

@freezed
class JobPosition with _$JobPosition {
  const factory JobPosition({
    int? id,
    String? name,
    String? description,
    String? status,
  }) = _JobPosition;

  factory JobPosition.fromJson(Map<String, dynamic> json) =>
      _$JobPositionFromJson(json);
}

@freezed
class Allowance with _$Allowance {
  const factory Allowance({
    @JsonKey(name: 'allowance_type_id') int? allowanceTypeId,
    String? name,
    @JsonKey(name: 'allowance_value') num? allowanceValue,
  }) = _Allowance;

  factory Allowance.fromJson(Map<String, dynamic> json) =>
      _$AllowanceFromJson(json);
}

@freezed
class SocialMediaAccount with _$SocialMediaAccount {
  const factory SocialMediaAccount({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    String? type,
    String? url,
  }) = _SocialMediaAccount;

  factory SocialMediaAccount.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaAccountFromJson(json);
}

@freezed
class BankAccount with _$BankAccount {
  const factory BankAccount({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'bank_id') int? bankId,
    Bank? bank,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}

@freezed
class Bank with _$Bank {
  const factory Bank({
    int? id,
    @JsonKey(name: 'bank_name') String? bankName,
    String? code,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}

@freezed
class TeamMember with _$TeamMember {
  const factory TeamMember({
    int? id,
    String? name,
  }) = _TeamMember;

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);
}

@freezed
class ReportingRelationship with _$ReportingRelationship {
  const factory ReportingRelationship({
    int? id,
    @JsonKey(name: 'direct_report_id') int? directReportId,
    @JsonKey(name: 'relationship_type') String? relationshipType,
    String? name,
  }) = _ReportingRelationship;

  factory ReportingRelationship.fromJson(Map<String, dynamic> json) =>
      _$ReportingRelationshipFromJson(json);
}

@freezed
class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    int? id,
  }) = _WorkExperience;

  factory WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    String? category,
    String? institution,
    String? major,
    String? location,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'graduation_date') String? graduationDate,
    String? gpa,
    String? notes,
    @JsonKey(name: 'max_gpa') String? maxGpa,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

@freezed
class FamilyEmployee with _$FamilyEmployee {
  const factory FamilyEmployee({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    String? name,
    String? relationship,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    @JsonKey(name: 'highest_education') String? highestEducation,
    String? email,
    String? phone,
    String? occupation,
    String? company,
  }) = _FamilyEmployee;

  factory FamilyEmployee.fromJson(Map<String, dynamic> json) =>
      _$FamilyEmployeeFromJson(json);
}

@freezed
class ContactReference with _$ContactReference {
  const factory ContactReference({
    int? id,
  }) = _ContactReference;

  factory ContactReference.fromJson(Map<String, dynamic> json) =>
      _$ContactReferenceFromJson(json);
}

@freezed
class EmployeeDocument with _$EmployeeDocument {
  const factory EmployeeDocument({
    int? id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    String? type,
    String? filename,
    @JsonKey(name: 'mime_type') String? mimeType,
    int? size,
    String? path,
    String? disk,
    @JsonKey(name: 'uploaded_by') int? uploadedBy,
    @JsonKey(name: 'uploaded_at') String? uploadedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? url,
  }) = _EmployeeDocument;

  factory EmployeeDocument.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDocumentFromJson(json);
}
