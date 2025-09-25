// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Employment _$EmploymentFromJson(Map<String, dynamic> json) {
  return _Employment.fromJson(json);
}

/// @nodoc
mixin _$Employment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int get employeeProfileId => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_salary')
  String? get baseSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_nett')
  String? get salaryNett => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition => throw _privateConstructorUsedError;

  /// Serializes this Employment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmploymentCopyWith<Employment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmploymentCopyWith<$Res> {
  factory $EmploymentCopyWith(
          Employment value, $Res Function(Employment) then) =
      _$EmploymentCopyWithImpl<$Res, Employment>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int employeeProfileId,
      int? status,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      Department? department,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'job_position') JobPosition? jobPosition});

  $DepartmentCopyWith<$Res>? get department;
  $JobLevelCopyWith<$Res>? get jobLevel;
  $JobPositionCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class _$EmploymentCopyWithImpl<$Res, $Val extends Employment>
    implements $EmploymentCopyWith<$Res> {
  _$EmploymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = null,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseSalary = freezed,
    Object? salaryNett = freezed,
    Object? department = freezed,
    Object? jobLevel = freezed,
    Object? jobPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: null == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
    ) as $Val);
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobLevelCopyWith<$Res>? get jobLevel {
    if (_value.jobLevel == null) {
      return null;
    }

    return $JobLevelCopyWith<$Res>(_value.jobLevel!, (value) {
      return _then(_value.copyWith(jobLevel: value) as $Val);
    });
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobPositionCopyWith<$Res>? get jobPosition {
    if (_value.jobPosition == null) {
      return null;
    }

    return $JobPositionCopyWith<$Res>(_value.jobPosition!, (value) {
      return _then(_value.copyWith(jobPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmploymentImplCopyWith<$Res>
    implements $EmploymentCopyWith<$Res> {
  factory _$$EmploymentImplCopyWith(
          _$EmploymentImpl value, $Res Function(_$EmploymentImpl) then) =
      __$$EmploymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int employeeProfileId,
      int? status,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      Department? department,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'job_position') JobPosition? jobPosition});

  @override
  $DepartmentCopyWith<$Res>? get department;
  @override
  $JobLevelCopyWith<$Res>? get jobLevel;
  @override
  $JobPositionCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class __$$EmploymentImplCopyWithImpl<$Res>
    extends _$EmploymentCopyWithImpl<$Res, _$EmploymentImpl>
    implements _$$EmploymentImplCopyWith<$Res> {
  __$$EmploymentImplCopyWithImpl(
      _$EmploymentImpl _value, $Res Function(_$EmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = null,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseSalary = freezed,
    Object? salaryNett = freezed,
    Object? department = freezed,
    Object? jobLevel = freezed,
    Object? jobPosition = freezed,
  }) {
    return _then(_$EmploymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: null == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmploymentImpl implements _Employment {
  const _$EmploymentImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') required this.employeeProfileId,
      this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'base_salary') this.baseSalary,
      @JsonKey(name: 'salary_nett') this.salaryNett,
      this.department,
      @JsonKey(name: 'job_level') this.jobLevel,
      @JsonKey(name: 'job_position') this.jobPosition});

  factory _$EmploymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmploymentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int employeeProfileId;
  @override
  final int? status;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'base_salary')
  final String? baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  final String? salaryNett;
  @override
  final Department? department;
  @override
  @JsonKey(name: 'job_level')
  final JobLevel? jobLevel;
  @override
  @JsonKey(name: 'job_position')
  final JobPosition? jobPosition;

  @override
  String toString() {
    return 'Employment(id: $id, employeeProfileId: $employeeProfileId, status: $status, startDate: $startDate, endDate: $endDate, baseSalary: $baseSalary, salaryNett: $salaryNett, department: $department, jobLevel: $jobLevel, jobPosition: $jobPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmploymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.baseSalary, baseSalary) ||
                other.baseSalary == baseSalary) &&
            (identical(other.salaryNett, salaryNett) ||
                other.salaryNett == salaryNett) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.jobPosition, jobPosition) ||
                other.jobPosition == jobPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeProfileId,
      status,
      startDate,
      endDate,
      baseSalary,
      salaryNett,
      department,
      jobLevel,
      jobPosition);

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      __$$EmploymentImplCopyWithImpl<_$EmploymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmploymentImplToJson(
      this,
    );
  }
}

abstract class _Employment implements Employment {
  const factory _Employment(
          {required final int id,
          @JsonKey(name: 'employee_profile_id')
          required final int employeeProfileId,
          final int? status,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate,
          @JsonKey(name: 'base_salary') final String? baseSalary,
          @JsonKey(name: 'salary_nett') final String? salaryNett,
          final Department? department,
          @JsonKey(name: 'job_level') final JobLevel? jobLevel,
          @JsonKey(name: 'job_position') final JobPosition? jobPosition}) =
      _$EmploymentImpl;

  factory _Employment.fromJson(Map<String, dynamic> json) =
      _$EmploymentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int get employeeProfileId;
  @override
  int? get status;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'base_salary')
  String? get baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  String? get salaryNett;
  @override
  Department? get department;
  @override
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel;
  @override
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
