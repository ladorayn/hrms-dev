import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_response.freezed.dart';
part 'employees_response.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? code,
    String? name,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? department,
    @JsonKey(name: 'department_id') int? departmentId,
    @JsonKey(name: 'job_level') String? jobLevel,
    @JsonKey(name: 'job_level_id') int? jobLevelId,
    @JsonKey(name: 'job_position') String? jobPosition,
    @JsonKey(name: 'job_position_id') int? jobPositionId,
    int? status,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    Branch? branch,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    int? id,
    String? name,
    String? latitude,
    String? longitude,
    String? address,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
