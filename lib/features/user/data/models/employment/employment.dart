// employment.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrms_mobile/features/user/data/models/employment/detail/employment_detail.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@freezed
class Employment with _$Employment {
  const factory Employment({
    required int id,
    @JsonKey(name: 'employee_profile_id') required int employeeProfileId,
    int? status,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'base_salary') String? baseSalary,
    @JsonKey(name: 'salary_nett') String? salaryNett,
    Department? department,
    @JsonKey(name: 'job_level') JobLevel? jobLevel,
    @JsonKey(name: 'job_position') JobPosition? jobPosition,
  }) = _Employment;

  factory Employment.fromJson(Map<String, dynamic> json) =>
      _$EmploymentFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    required int id,
    String? name,
    String? address,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
