// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmploymentImpl _$$EmploymentImplFromJson(Map<String, dynamic> json) =>
    _$EmploymentImpl(
      id: (json['id'] as num).toInt(),
      employeeProfileId: (json['employee_profile_id'] as num).toInt(),
      status: (json['status'] as num?)?.toInt(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      baseSalary: json['base_salary'] as String?,
      salaryNett: json['salary_nett'] as String?,
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      jobLevel: json['job_level'] == null
          ? null
          : JobLevel.fromJson(json['job_level'] as Map<String, dynamic>),
      jobPosition: json['job_position'] == null
          ? null
          : JobPosition.fromJson(json['job_position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmploymentImplToJson(_$EmploymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'status': instance.status,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'base_salary': instance.baseSalary,
      'salary_nett': instance.salaryNett,
      'department': instance.department,
      'job_level': instance.jobLevel,
      'job_position': instance.jobPosition,
    };
