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
    String? schedule,
    AssessmentForm? form,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SupervisorAssessment;

  factory SupervisorAssessment.fromJson(Map<String, dynamic> json) =>
      _$SupervisorAssessmentFromJson(json);
}
