import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_list.freezed.dart';
part 'assessment_list.g.dart';

@freezed
class TeamMember with _$TeamMember {
  const factory TeamMember({
    int? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'job_position_name') String? jobPositionName,
    @JsonKey(name: 'job_level_name') String? jobLevelName,
    @JsonKey(name: 'department_name') String? departmentName,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'submitted_at') String? submittedAt,
    @JsonKey(name: 'validated_at') String? validatedAt,
  }) = _TeamMember;

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);
}

@freezed
class AssessmentList with _$AssessmentList {
  const factory AssessmentList({
    int? id,
    String? period,
    String? status,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'due_date') String? dueDate,
    @JsonKey(name: 'team_member') List<TeamMember>? teamMember,
  }) = _AssessmentList;

  factory AssessmentList.fromJson(Map<String, dynamic> json) =>
      _$AssessmentListFromJson(json);
}
