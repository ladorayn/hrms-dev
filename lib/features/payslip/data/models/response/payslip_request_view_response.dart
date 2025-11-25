import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslip_request_view_response.freezed.dart';
part 'payslip_request_view_response.g.dart';

/// Represents an individual item in a payslip, such as a deduction, allowance, or overtime entry.
@freezed
class PayslipItem with _$PayslipItem {
  const factory PayslipItem({
    String? name,
    String? type,
    double? amount,
    @JsonKey(name: 'calculation_basis') String? calculationBasis,
    @JsonKey(name: 'contribution_type') String? contributionType,
    @JsonKey(name: 'salary_deduction_id') int? salaryDeductionId,
    @JsonKey(name: 'allowance_name') String? allowanceName,
    @JsonKey(name: 'allowance_value') double? allowanceValue,
    @JsonKey(name: 'allowance_type_id') int? allowanceTypeId,
  }) = _PayslipItem;

  factory PayslipItem.fromJson(Map<String, dynamic> json) =>
      _$PayslipItemFromJson(json);
}

@freezed
class AdditionalEarning with _$AdditionalEarning {
  const factory AdditionalEarning({
    String? name,
    String? amount,
  }) = _AdditionalEarning;

  factory AdditionalEarning.fromJson(Map<String, dynamic> json) =>
      _$AdditionalEarningFromJson(json);
}

@freezed
class Department with _$Department {
  const factory Department({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

/// Represents the nested employee information within the payslip details.
@freezed
class PayslipDetailEmployee with _$PayslipDetailEmployee {
  const factory PayslipDetailEmployee({
    int? id,
    String? name,
    String? email,
    @JsonKey(name: 'salary_nett')
    String? salaryNett, // Keeping as String as per JSON
    @JsonKey(name: 'base_salary')
    String? baseSalary, // Keeping as String as per JSON
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'job_level') String? jobLevel,
    String? npwp,
    Department? department,
  }) = _PayslipDetailEmployee;

  factory PayslipDetailEmployee.fromJson(Map<String, dynamic> json) =>
      _$PayslipDetailEmployeeFromJson(json);
}

/// Represents the comprehensive detailed data of a single payslip.
@freezed
class PayslipDetailResponse with _$PayslipDetailResponse {
  const factory PayslipDetailResponse({
    int? id,
    PayslipDetailEmployee? employee,
    @JsonKey(name: 'gross_pay') String? grossPay,
    @JsonKey(name: 'net_pay') double? netPay,
    @JsonKey(name: 'working_hours') int? workingHours,
    @JsonKey(name: 'working_days') int? workingDays,
    List<PayslipItem>? allowance,
    List<PayslipItem>? overtime,
    @JsonKey(name: 'additional_earning')
    List<AdditionalEarning>? additionalEarning,
    List<PayslipItem>? deduction,
    String? currency,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'sent_at') String? sentAt, // Nullable
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'payrun_id') int? payrunId,
    @JsonKey(name: 'employee_id') int? employeeId, // Nullable
    @JsonKey(name: 'employment_id') int? employmentId,
    @JsonKey(name: 'can_be_edited') bool? canBeEdited,
    @JsonKey(name: 'can_be_approved') bool? canBeApproved,
    @JsonKey(name: 'can_be_voided') bool? canBeVoided,
    @JsonKey(name: 'total_allowances') double? totalAllowances,
    @JsonKey(name: 'total_overtime')
    String? totalOvertime, // Keeping as String as per JSON
    @JsonKey(name: 'total_penalties')
    String? totalPenalties, // Keeping as String as per JSON
    @JsonKey(name: 'total_additional_earnings') double? totalAdditionalEarnings,
    @JsonKey(name: 'total_deductions') double? totalDeductions,
  }) = _PayslipDetailResponse;

  factory PayslipDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PayslipDetailResponseFromJson(json);
}
