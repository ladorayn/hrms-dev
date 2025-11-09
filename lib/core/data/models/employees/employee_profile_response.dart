// features/profile/data/models/employee_profile_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_profile_response.freezed.dart';

part 'employee_profile_response.g.dart';

// Main "data" object
@freezed
class EmployeeProfile with _$EmployeeProfile {
  const factory EmployeeProfile({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? gender,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    @JsonKey(name: 'marital_status') int? maritalStatus,
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
    // --- NEW FIELD ---
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    String? code,
    @JsonKey(name: 'marital_status_label') String? maritalStatusLabel,
    required UserProfile user,
    Employment? employment,
    // --- NEW FIELD ---
    Branch? branch,
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
  }) = _EmployeeProfile;

  factory EmployeeProfile.fromJson(Map<String, dynamic> json) =>
      _$EmployeeProfileFromJson(json);
}

// --- NEW MODEL ---
// Nested Branch
@freezed
class Branch with _$Branch {
  const factory Branch({
    required int id,
    String? name,
    String? latitude,
    String? longitude,
    String? address,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}

// Nested User
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'is_first_login') bool? isFirstLogin,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

// Nested Employment
@freezed
class Employment with _$Employment {
  const factory Employment({
    required int id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
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

// Nested Department
@freezed
class Department with _$Department {
  const factory Department({
    required int id,
    String? name,
    String? description,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

// Nested JobLevel
@freezed
class JobLevel with _$JobLevel {
  const factory JobLevel({
    required int id,
    String? name,
    String? description,
  }) = _JobLevel;

  factory JobLevel.fromJson(Map<String, dynamic> json) =>
      _$JobLevelFromJson(json);
}

// Nested JobPosition
@freezed
class JobPosition with _$JobPosition {
  const factory JobPosition({
    required int id,
    String? name,
    String? description,
    String? status,
  }) = _JobPosition;

  factory JobPosition.fromJson(Map<String, dynamic> json) =>
      _$JobPositionFromJson(json);
}

// --- UPDATED MODEL ---
// Nested Allowance
@freezed
class Allowance with _$Allowance {
  const factory Allowance({
    // 'id' field does not exist in the new JSON
    @JsonKey(name: 'allowance_type_id') int? allowanceTypeId,
    String? name,
    @JsonKey(name: 'allowance_value') num? allowanceValue, // Changed to num
  }) = _Allowance;

  factory Allowance.fromJson(Map<String, dynamic> json) =>
      _$AllowanceFromJson(json);
}

// Nested SocialMediaAccount
@freezed
class SocialMediaAccount with _$SocialMediaAccount {
  const factory SocialMediaAccount({
    required int id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    String? type,
    String? url,
  }) = _SocialMediaAccount;

  factory SocialMediaAccount.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaAccountFromJson(json);
}

// Nested BankAccount
@freezed
class BankAccount with _$BankAccount {
  const factory BankAccount({
    required int id,
    @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'bank_id') int? bankId,
    Bank? bank,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}

// Nested Bank
@freezed
class Bank with _$Bank {
  const factory Bank({
    required int id,
    @JsonKey(name: 'bank_name') String? bankName,
    String? code,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}

// --- UPDATED MODEL ---
// Nested TeamMember
@freezed
class TeamMember with _$TeamMember {
  const factory TeamMember({
    required int id,
    String? name,
  }) = _TeamMember;

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);
}

// --- UPDATED MODEL ---
// Nested ReportingRelationship
@freezed
class ReportingRelationship with _$ReportingRelationship {
  const factory ReportingRelationship({
    required int id,
    @JsonKey(name: 'direct_report_id') int? directReportId,
    @JsonKey(name: 'relationship_type') String? relationshipType,
    String? name, // New field
  }) = _ReportingRelationship;

  factory ReportingRelationship.fromJson(Map<String, dynamic> json) =>
      _$ReportingRelationshipFromJson(json);
}

// Nested WorkExperience
@freezed
class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    int? id,
  }) = _WorkExperience;

  factory WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);
}

// Nested Education
@freezed
class Education with _$Education {
  const factory Education({
    required int id,
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

// Nested FamilyEmployee
@freezed
class FamilyEmployee with _$FamilyEmployee {
  const factory FamilyEmployee({
    required int id,
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

// Nested ContactReference
@freezed
class ContactReference with _$ContactReference {
  const factory ContactReference({
    int? id,
  }) = _ContactReference;

  factory ContactReference.fromJson(Map<String, dynamic> json) =>
      _$ContactReferenceFromJson(json);
}

// --- UPDATED MODEL ---
// Nested EmployeeDocument
@freezed
class EmployeeDocument with _$EmployeeDocument {
  const factory EmployeeDocument({
    required int id,
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
