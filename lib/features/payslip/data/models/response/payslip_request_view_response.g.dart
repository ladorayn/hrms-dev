// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_request_view_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayslipItemImpl _$$PayslipItemImplFromJson(Map<String, dynamic> json) =>
    _$PayslipItemImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      calculationBasis: json['calculation_basis'] as String?,
      contributionType: json['contribution_type'] as String?,
      salaryDeductionId: (json['salary_deduction_id'] as num?)?.toInt(),
      allowanceName: json['allowance_name'] as String?,
      allowanceValue: (json['allowance_value'] as num?)?.toDouble(),
      allowanceTypeId: (json['allowance_type_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PayslipItemImplToJson(_$PayslipItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'amount': instance.amount,
      'calculation_basis': instance.calculationBasis,
      'contribution_type': instance.contributionType,
      'salary_deduction_id': instance.salaryDeductionId,
      'allowance_name': instance.allowanceName,
      'allowance_value': instance.allowanceValue,
      'allowance_type_id': instance.allowanceTypeId,
    };

_$AdditionalEarningImpl _$$AdditionalEarningImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalEarningImpl(
      name: json['name'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$AdditionalEarningImplToJson(
        _$AdditionalEarningImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PayslipDetailEmployeeImpl _$$PayslipDetailEmployeeImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipDetailEmployeeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      salaryNett: json['salary_nett'] as String?,
      baseSalary: json['base_salary'] as String?,
      jobTitle: json['job_title'] as String?,
      jobLevel: json['job_level'] as String?,
      npwp: json['npwp'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$$PayslipDetailEmployeeImplToJson(
        _$PayslipDetailEmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'salary_nett': instance.salaryNett,
      'base_salary': instance.baseSalary,
      'job_title': instance.jobTitle,
      'job_level': instance.jobLevel,
      'npwp': instance.npwp,
      'department': instance.department,
    };

_$PayslipDetailResponseImpl _$$PayslipDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipDetailResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      employee: json['employee'] == null
          ? null
          : PayslipDetailEmployee.fromJson(
              json['employee'] as Map<String, dynamic>),
      grossPay: json['gross_pay'] as String?,
      netPay: (json['net_pay'] as num?)?.toDouble(),
      workingHours: (json['working_hours'] as num?)?.toInt(),
      workingDays: (json['working_days'] as num?)?.toInt(),
      allowance: (json['allowance'] as List<dynamic>?)
          ?.map((e) => PayslipItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      overtime: (json['overtime'] as List<dynamic>?)
          ?.map((e) => PayslipItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalEarning: (json['additional_earning'] as List<dynamic>?)
          ?.map((e) => AdditionalEarning.fromJson(e as Map<String, dynamic>))
          .toList(),
      deduction: (json['deduction'] as List<dynamic>?)
          ?.map((e) => PayslipItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      currency: json['currency'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      sentAt: json['sent_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      payrunId: (json['payrun_id'] as num?)?.toInt(),
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employmentId: (json['employment_id'] as num?)?.toInt(),
      canBeEdited: json['can_be_edited'] as bool?,
      canBeApproved: json['can_be_approved'] as bool?,
      canBeVoided: json['can_be_voided'] as bool?,
      totalAllowances: (json['total_allowances'] as num?)?.toDouble(),
      totalOvertime: json['total_overtime'] as String?,
      totalPenalties: json['total_penalties'] as String?,
      totalAdditionalEarnings:
          (json['total_additional_earnings'] as num?)?.toDouble(),
      totalDeductions: (json['total_deductions'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PayslipDetailResponseImplToJson(
        _$PayslipDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee': instance.employee,
      'gross_pay': instance.grossPay,
      'net_pay': instance.netPay,
      'working_hours': instance.workingHours,
      'working_days': instance.workingDays,
      'allowance': instance.allowance,
      'overtime': instance.overtime,
      'additional_earning': instance.additionalEarning,
      'deduction': instance.deduction,
      'currency': instance.currency,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'sent_at': instance.sentAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'tenant_id': instance.tenantId,
      'payrun_id': instance.payrunId,
      'employee_id': instance.employeeId,
      'employment_id': instance.employmentId,
      'can_be_edited': instance.canBeEdited,
      'can_be_approved': instance.canBeApproved,
      'can_be_voided': instance.canBeVoided,
      'total_allowances': instance.totalAllowances,
      'total_overtime': instance.totalOvertime,
      'total_penalties': instance.totalPenalties,
      'total_additional_earnings': instance.totalAdditionalEarnings,
      'total_deductions': instance.totalDeductions,
    };
