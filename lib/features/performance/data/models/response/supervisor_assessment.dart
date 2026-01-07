import 'package:freezed_annotation/freezed_annotation.dart';

part 'supervisor_assessment.freezed.dart';
part 'supervisor_assessment.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'employee_id') int? employeeId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class PositionLevel with _$PositionLevel {
  const factory PositionLevel({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    String? status,
    @JsonKey(name: 'is_root') bool? isRoot,
  }) = _PositionLevel;

  factory PositionLevel.fromJson(Map<String, dynamic> json) =>
      _$PositionLevelFromJson(json);
}

@freezed
class AssessmentForm with _$AssessmentForm {
  const factory AssessmentForm({
    int? id,
    String? name,
  }) = _AssessmentForm;

  factory AssessmentForm.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFormFromJson(json);
}

// --- Supervisor Assessment Item Model ---

@freezed
class SupervisorAssessment with _$SupervisorAssessment {
  const factory SupervisorAssessment({
    int? id,
    User? user,
    @JsonKey(name: 'current_position') PositionLevel? currentPosition,
    @JsonKey(name: 'current_level') PositionLevel? currentLevel,
    @JsonKey(name: 'target_position') PositionLevel? targetPosition,
    @JsonKey(name: 'target_level') PositionLevel? targetLevel,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    AssessmentSchedule? schedule,
    AssessmentForm? form,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SupervisorAssessment;

  factory SupervisorAssessment.fromJson(Map<String, dynamic> json) =>
      _$SupervisorAssessmentFromJson(json);
}

// --- Department Model (NEW) ---
@freezed
class Department with _$Department {
  const factory Department({
    int? id,
    String? name,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

// --- Assessor Model (NEW) ---
@freezed
class Assessor with _$Assessor {
  const factory Assessor({
    int? id,
    @JsonKey(name: 'supervisor_assessment_id') int? supervisorAssessmentId,
    @JsonKey(name: 'user_id') int? userId,
    int? score,
    String? notes,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
  }) = _Assessor;

  factory Assessor.fromJson(Map<String, dynamic> json) =>
      _$AssessorFromJson(json);
}

// --- Assessment Schedule Models (EXISTING) ---
@freezed
class Participant with _$Participant {
  const factory Participant({
    int? id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'employee_id') int? employeeId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}

@freezed
class AssessmentSchedule with _$AssessmentSchedule {
  const factory AssessmentSchedule({
    int? id,
    String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    List<Participant>? participants,
    String? notes,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _AssessmentSchedule;

  factory AssessmentSchedule.fromJson(Map<String, dynamic> json) =>
      _$AssessmentScheduleFromJson(json);
}

// --- Final Submission Field Model (NEW) ---
@freezed
class FinalSubmissionField with _$FinalSubmissionField {
  const factory FinalSubmissionField({
    required dynamic value, // Handles both int (score) and String (paragraph)
    @JsonKey(name: 'field_id') int? fieldId,
    @JsonKey(name: 'assessor_id') int? assessorId,
    @JsonKey(name: 'additional_data') List<String>? additionalData,
    @JsonKey(name: 'form_submission_id') int? formSubmissionId,
  }) = _FinalSubmissionField;

  factory FinalSubmissionField.fromJson(Map<String, dynamic> json) =>
      _$FinalSubmissionFieldFromJson(json);
}

// --- Final Submission Data Model (NEW) ---
@freezed
class FinalSubmissionData with _$FinalSubmissionData {
  const factory FinalSubmissionData({
    String? type,
    List<FinalSubmissionField>? fields,
    List<Map<String, dynamic>>? sources,
    @JsonKey(name: 'merged_at') String? mergedAt,
    @JsonKey(name: 'merged_by') String? mergedBy,
  }) = _FinalSubmissionData;

  factory FinalSubmissionData.fromJson(Map<String, dynamic> json) =>
      _$FinalSubmissionDataFromJson(json);
}

// --- Final Submission Root Model (NEW) ---
@freezed
class FinalSubmission with _$FinalSubmission {
  const factory FinalSubmission({
    int? id,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'submitted_by') int? submittedBy,
    @JsonKey(name: 'formable_type') String? formableType,
    @JsonKey(name: 'formable_id') int? formableId,
    required FinalSubmissionData data,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'validated_for') String? validatedFor,
  }) = _FinalSubmission;

  factory FinalSubmission.fromJson(Map<String, dynamic> json) =>
      _$FinalSubmissionFromJson(json);
}

@freezed
class SupervisorAssessmentDetail with _$SupervisorAssessmentDetail {
  const factory SupervisorAssessmentDetail({
    int? id,
    User? user,
    @JsonKey(name: 'employee_start_date')
    String? employeeStartDate, // New field
    @JsonKey(name: 'current_position') PositionLevel? currentPosition,
    @JsonKey(name: 'current_level') PositionLevel? currentLevel,
    @JsonKey(name: 'current_department')
    Department? currentDepartment, // New field
    @JsonKey(name: 'target_position') PositionLevel? targetPosition,
    @JsonKey(name: 'target_level') PositionLevel? targetLevel,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    AssessmentSchedule? schedule,
    List<Assessor>? assessors, // New field (List)
    AssessmentForm? form,
    @JsonKey(name: 'final_submission')
    FinalSubmission? finalSubmission, // New field (Complex)
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SupervisorAssessmentDetail;

  factory SupervisorAssessmentDetail.fromJson(Map<String, dynamic> json) =>
      _$SupervisorAssessmentDetailFromJson(json);
}

@freezed
class CompetencyLevel with _$CompetencyLevel {
  const factory CompetencyLevel({
    int? id,
    @JsonKey(name: 'performance_competency_id') int? performanceCompetencyId,
    String? dimensions,
    String? level,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    CompetencyDetail? competency,
  }) = _CompetencyLevel;

  factory CompetencyLevel.fromJson(Map<String, dynamic> json) =>
      _$CompetencyLevelFromJson(json);
}

@freezed
class CompetencyDetail with _$CompetencyDetail {
  const factory CompetencyDetail({
    int? id,
    String? code,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _CompetencyDetail;

  factory CompetencyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompetencyDetailFromJson(json);
}
