// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_request_view_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayslipItem _$PayslipItemFromJson(Map<String, dynamic> json) {
  return _PayslipItem.fromJson(json);
}

/// @nodoc
mixin _$PayslipItem {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculation_basis')
  String? get calculationBasis => throw _privateConstructorUsedError;
  @JsonKey(name: 'contribution_type')
  String? get contributionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_deduction_id')
  int? get salaryDeductionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowance_name')
  String? get allowanceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowance_value')
  double? get allowanceValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowance_type_id')
  int? get allowanceTypeId => throw _privateConstructorUsedError;

  /// Serializes this PayslipItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayslipItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayslipItemCopyWith<PayslipItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipItemCopyWith<$Res> {
  factory $PayslipItemCopyWith(
          PayslipItem value, $Res Function(PayslipItem) then) =
      _$PayslipItemCopyWithImpl<$Res, PayslipItem>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      double? amount,
      @JsonKey(name: 'calculation_basis') String? calculationBasis,
      @JsonKey(name: 'contribution_type') String? contributionType,
      @JsonKey(name: 'salary_deduction_id') int? salaryDeductionId,
      @JsonKey(name: 'allowance_name') String? allowanceName,
      @JsonKey(name: 'allowance_value') double? allowanceValue,
      @JsonKey(name: 'allowance_type_id') int? allowanceTypeId});
}

/// @nodoc
class _$PayslipItemCopyWithImpl<$Res, $Val extends PayslipItem>
    implements $PayslipItemCopyWith<$Res> {
  _$PayslipItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayslipItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? calculationBasis = freezed,
    Object? contributionType = freezed,
    Object? salaryDeductionId = freezed,
    Object? allowanceName = freezed,
    Object? allowanceValue = freezed,
    Object? allowanceTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      calculationBasis: freezed == calculationBasis
          ? _value.calculationBasis
          : calculationBasis // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionType: freezed == contributionType
          ? _value.contributionType
          : contributionType // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryDeductionId: freezed == salaryDeductionId
          ? _value.salaryDeductionId
          : salaryDeductionId // ignore: cast_nullable_to_non_nullable
              as int?,
      allowanceName: freezed == allowanceName
          ? _value.allowanceName
          : allowanceName // ignore: cast_nullable_to_non_nullable
              as String?,
      allowanceValue: freezed == allowanceValue
          ? _value.allowanceValue
          : allowanceValue // ignore: cast_nullable_to_non_nullable
              as double?,
      allowanceTypeId: freezed == allowanceTypeId
          ? _value.allowanceTypeId
          : allowanceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayslipItemImplCopyWith<$Res>
    implements $PayslipItemCopyWith<$Res> {
  factory _$$PayslipItemImplCopyWith(
          _$PayslipItemImpl value, $Res Function(_$PayslipItemImpl) then) =
      __$$PayslipItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      double? amount,
      @JsonKey(name: 'calculation_basis') String? calculationBasis,
      @JsonKey(name: 'contribution_type') String? contributionType,
      @JsonKey(name: 'salary_deduction_id') int? salaryDeductionId,
      @JsonKey(name: 'allowance_name') String? allowanceName,
      @JsonKey(name: 'allowance_value') double? allowanceValue,
      @JsonKey(name: 'allowance_type_id') int? allowanceTypeId});
}

/// @nodoc
class __$$PayslipItemImplCopyWithImpl<$Res>
    extends _$PayslipItemCopyWithImpl<$Res, _$PayslipItemImpl>
    implements _$$PayslipItemImplCopyWith<$Res> {
  __$$PayslipItemImplCopyWithImpl(
      _$PayslipItemImpl _value, $Res Function(_$PayslipItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayslipItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? calculationBasis = freezed,
    Object? contributionType = freezed,
    Object? salaryDeductionId = freezed,
    Object? allowanceName = freezed,
    Object? allowanceValue = freezed,
    Object? allowanceTypeId = freezed,
  }) {
    return _then(_$PayslipItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      calculationBasis: freezed == calculationBasis
          ? _value.calculationBasis
          : calculationBasis // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionType: freezed == contributionType
          ? _value.contributionType
          : contributionType // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryDeductionId: freezed == salaryDeductionId
          ? _value.salaryDeductionId
          : salaryDeductionId // ignore: cast_nullable_to_non_nullable
              as int?,
      allowanceName: freezed == allowanceName
          ? _value.allowanceName
          : allowanceName // ignore: cast_nullable_to_non_nullable
              as String?,
      allowanceValue: freezed == allowanceValue
          ? _value.allowanceValue
          : allowanceValue // ignore: cast_nullable_to_non_nullable
              as double?,
      allowanceTypeId: freezed == allowanceTypeId
          ? _value.allowanceTypeId
          : allowanceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipItemImpl implements _PayslipItem {
  const _$PayslipItemImpl(
      {this.name,
      this.type,
      this.amount,
      @JsonKey(name: 'calculation_basis') this.calculationBasis,
      @JsonKey(name: 'contribution_type') this.contributionType,
      @JsonKey(name: 'salary_deduction_id') this.salaryDeductionId,
      @JsonKey(name: 'allowance_name') this.allowanceName,
      @JsonKey(name: 'allowance_value') this.allowanceValue,
      @JsonKey(name: 'allowance_type_id') this.allowanceTypeId});

  factory _$PayslipItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final double? amount;
  @override
  @JsonKey(name: 'calculation_basis')
  final String? calculationBasis;
  @override
  @JsonKey(name: 'contribution_type')
  final String? contributionType;
  @override
  @JsonKey(name: 'salary_deduction_id')
  final int? salaryDeductionId;
  @override
  @JsonKey(name: 'allowance_name')
  final String? allowanceName;
  @override
  @JsonKey(name: 'allowance_value')
  final double? allowanceValue;
  @override
  @JsonKey(name: 'allowance_type_id')
  final int? allowanceTypeId;

  @override
  String toString() {
    return 'PayslipItem(name: $name, type: $type, amount: $amount, calculationBasis: $calculationBasis, contributionType: $contributionType, salaryDeductionId: $salaryDeductionId, allowanceName: $allowanceName, allowanceValue: $allowanceValue, allowanceTypeId: $allowanceTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.calculationBasis, calculationBasis) ||
                other.calculationBasis == calculationBasis) &&
            (identical(other.contributionType, contributionType) ||
                other.contributionType == contributionType) &&
            (identical(other.salaryDeductionId, salaryDeductionId) ||
                other.salaryDeductionId == salaryDeductionId) &&
            (identical(other.allowanceName, allowanceName) ||
                other.allowanceName == allowanceName) &&
            (identical(other.allowanceValue, allowanceValue) ||
                other.allowanceValue == allowanceValue) &&
            (identical(other.allowanceTypeId, allowanceTypeId) ||
                other.allowanceTypeId == allowanceTypeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      amount,
      calculationBasis,
      contributionType,
      salaryDeductionId,
      allowanceName,
      allowanceValue,
      allowanceTypeId);

  /// Create a copy of PayslipItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipItemImplCopyWith<_$PayslipItemImpl> get copyWith =>
      __$$PayslipItemImplCopyWithImpl<_$PayslipItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipItemImplToJson(
      this,
    );
  }
}

abstract class _PayslipItem implements PayslipItem {
  const factory _PayslipItem(
          {final String? name,
          final String? type,
          final double? amount,
          @JsonKey(name: 'calculation_basis') final String? calculationBasis,
          @JsonKey(name: 'contribution_type') final String? contributionType,
          @JsonKey(name: 'salary_deduction_id') final int? salaryDeductionId,
          @JsonKey(name: 'allowance_name') final String? allowanceName,
          @JsonKey(name: 'allowance_value') final double? allowanceValue,
          @JsonKey(name: 'allowance_type_id') final int? allowanceTypeId}) =
      _$PayslipItemImpl;

  factory _PayslipItem.fromJson(Map<String, dynamic> json) =
      _$PayslipItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'calculation_basis')
  String? get calculationBasis;
  @override
  @JsonKey(name: 'contribution_type')
  String? get contributionType;
  @override
  @JsonKey(name: 'salary_deduction_id')
  int? get salaryDeductionId;
  @override
  @JsonKey(name: 'allowance_name')
  String? get allowanceName;
  @override
  @JsonKey(name: 'allowance_value')
  double? get allowanceValue;
  @override
  @JsonKey(name: 'allowance_type_id')
  int? get allowanceTypeId;

  /// Create a copy of PayslipItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipItemImplCopyWith<_$PayslipItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalEarning _$AdditionalEarningFromJson(Map<String, dynamic> json) {
  return _AdditionalEarning.fromJson(json);
}

/// @nodoc
mixin _$AdditionalEarning {
  String? get name => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;

  /// Serializes this AdditionalEarning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalEarning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalEarningCopyWith<AdditionalEarning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalEarningCopyWith<$Res> {
  factory $AdditionalEarningCopyWith(
          AdditionalEarning value, $Res Function(AdditionalEarning) then) =
      _$AdditionalEarningCopyWithImpl<$Res, AdditionalEarning>;
  @useResult
  $Res call({String? name, String? amount});
}

/// @nodoc
class _$AdditionalEarningCopyWithImpl<$Res, $Val extends AdditionalEarning>
    implements $AdditionalEarningCopyWith<$Res> {
  _$AdditionalEarningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalEarning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalEarningImplCopyWith<$Res>
    implements $AdditionalEarningCopyWith<$Res> {
  factory _$$AdditionalEarningImplCopyWith(_$AdditionalEarningImpl value,
          $Res Function(_$AdditionalEarningImpl) then) =
      __$$AdditionalEarningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? amount});
}

/// @nodoc
class __$$AdditionalEarningImplCopyWithImpl<$Res>
    extends _$AdditionalEarningCopyWithImpl<$Res, _$AdditionalEarningImpl>
    implements _$$AdditionalEarningImplCopyWith<$Res> {
  __$$AdditionalEarningImplCopyWithImpl(_$AdditionalEarningImpl _value,
      $Res Function(_$AdditionalEarningImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalEarning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$AdditionalEarningImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalEarningImpl implements _AdditionalEarning {
  const _$AdditionalEarningImpl({this.name, this.amount});

  factory _$AdditionalEarningImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalEarningImplFromJson(json);

  @override
  final String? name;
  @override
  final String? amount;

  @override
  String toString() {
    return 'AdditionalEarning(name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalEarningImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount);

  /// Create a copy of AdditionalEarning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalEarningImplCopyWith<_$AdditionalEarningImpl> get copyWith =>
      __$$AdditionalEarningImplCopyWithImpl<_$AdditionalEarningImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalEarningImplToJson(
      this,
    );
  }
}

abstract class _AdditionalEarning implements AdditionalEarning {
  const factory _AdditionalEarning({final String? name, final String? amount}) =
      _$AdditionalEarningImpl;

  factory _AdditionalEarning.fromJson(Map<String, dynamic> json) =
      _$AdditionalEarningImpl.fromJson;

  @override
  String? get name;
  @override
  String? get amount;

  /// Create a copy of AdditionalEarning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalEarningImplCopyWith<_$AdditionalEarningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DepartmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Department(id: $id, name: $name, description: $description, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, deletedAt, createdAt, updatedAt);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department(
      {final int? id,
      final String? name,
      final String? description,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayslipDetailEmployee _$PayslipDetailEmployeeFromJson(
    Map<String, dynamic> json) {
  return _PayslipDetailEmployee.fromJson(json);
}

/// @nodoc
mixin _$PayslipDetailEmployee {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_nett')
  String? get salaryNett =>
      throw _privateConstructorUsedError; // Keeping as String as per JSON
  @JsonKey(name: 'base_salary')
  String? get baseSalary =>
      throw _privateConstructorUsedError; // Keeping as String as per JSON
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level')
  String? get jobLevel => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;

  /// Serializes this PayslipDetailEmployee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayslipDetailEmployee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayslipDetailEmployeeCopyWith<PayslipDetailEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipDetailEmployeeCopyWith<$Res> {
  factory $PayslipDetailEmployeeCopyWith(PayslipDetailEmployee value,
          $Res Function(PayslipDetailEmployee) then) =
      _$PayslipDetailEmployeeCopyWithImpl<$Res, PayslipDetailEmployee>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'job_title') String? jobTitle,
      @JsonKey(name: 'job_level') String? jobLevel,
      String? npwp,
      String? department});
}

/// @nodoc
class _$PayslipDetailEmployeeCopyWithImpl<$Res,
        $Val extends PayslipDetailEmployee>
    implements $PayslipDetailEmployeeCopyWith<$Res> {
  _$PayslipDetailEmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayslipDetailEmployee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? salaryNett = freezed,
    Object? baseSalary = freezed,
    Object? jobTitle = freezed,
    Object? jobLevel = freezed,
    Object? npwp = freezed,
    Object? department = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayslipDetailEmployeeImplCopyWith<$Res>
    implements $PayslipDetailEmployeeCopyWith<$Res> {
  factory _$$PayslipDetailEmployeeImplCopyWith(
          _$PayslipDetailEmployeeImpl value,
          $Res Function(_$PayslipDetailEmployeeImpl) then) =
      __$$PayslipDetailEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'job_title') String? jobTitle,
      @JsonKey(name: 'job_level') String? jobLevel,
      String? npwp,
      String? department});
}

/// @nodoc
class __$$PayslipDetailEmployeeImplCopyWithImpl<$Res>
    extends _$PayslipDetailEmployeeCopyWithImpl<$Res,
        _$PayslipDetailEmployeeImpl>
    implements _$$PayslipDetailEmployeeImplCopyWith<$Res> {
  __$$PayslipDetailEmployeeImplCopyWithImpl(_$PayslipDetailEmployeeImpl _value,
      $Res Function(_$PayslipDetailEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayslipDetailEmployee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? salaryNett = freezed,
    Object? baseSalary = freezed,
    Object? jobTitle = freezed,
    Object? jobLevel = freezed,
    Object? npwp = freezed,
    Object? department = freezed,
  }) {
    return _then(_$PayslipDetailEmployeeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipDetailEmployeeImpl implements _PayslipDetailEmployee {
  const _$PayslipDetailEmployeeImpl(
      {this.id,
      this.name,
      this.email,
      @JsonKey(name: 'salary_nett') this.salaryNett,
      @JsonKey(name: 'base_salary') this.baseSalary,
      @JsonKey(name: 'job_title') this.jobTitle,
      @JsonKey(name: 'job_level') this.jobLevel,
      this.npwp,
      this.department});

  factory _$PayslipDetailEmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipDetailEmployeeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'salary_nett')
  final String? salaryNett;
// Keeping as String as per JSON
  @override
  @JsonKey(name: 'base_salary')
  final String? baseSalary;
// Keeping as String as per JSON
  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  @override
  @JsonKey(name: 'job_level')
  final String? jobLevel;
  @override
  final String? npwp;
  @override
  final String? department;

  @override
  String toString() {
    return 'PayslipDetailEmployee(id: $id, name: $name, email: $email, salaryNett: $salaryNett, baseSalary: $baseSalary, jobTitle: $jobTitle, jobLevel: $jobLevel, npwp: $npwp, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipDetailEmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.salaryNett, salaryNett) ||
                other.salaryNett == salaryNett) &&
            (identical(other.baseSalary, baseSalary) ||
                other.baseSalary == baseSalary) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.npwp, npwp) || other.npwp == npwp) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, salaryNett,
      baseSalary, jobTitle, jobLevel, npwp, department);

  /// Create a copy of PayslipDetailEmployee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipDetailEmployeeImplCopyWith<_$PayslipDetailEmployeeImpl>
      get copyWith => __$$PayslipDetailEmployeeImplCopyWithImpl<
          _$PayslipDetailEmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipDetailEmployeeImplToJson(
      this,
    );
  }
}

abstract class _PayslipDetailEmployee implements PayslipDetailEmployee {
  const factory _PayslipDetailEmployee(
      {final int? id,
      final String? name,
      final String? email,
      @JsonKey(name: 'salary_nett') final String? salaryNett,
      @JsonKey(name: 'base_salary') final String? baseSalary,
      @JsonKey(name: 'job_title') final String? jobTitle,
      @JsonKey(name: 'job_level') final String? jobLevel,
      final String? npwp,
      final String? department}) = _$PayslipDetailEmployeeImpl;

  factory _PayslipDetailEmployee.fromJson(Map<String, dynamic> json) =
      _$PayslipDetailEmployeeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'salary_nett')
  String? get salaryNett; // Keeping as String as per JSON
  @override
  @JsonKey(name: 'base_salary')
  String? get baseSalary; // Keeping as String as per JSON
  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  @JsonKey(name: 'job_level')
  String? get jobLevel;
  @override
  String? get npwp;
  @override
  String? get department;

  /// Create a copy of PayslipDetailEmployee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipDetailEmployeeImplCopyWith<_$PayslipDetailEmployeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayslipDetailResponse _$PayslipDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _PayslipDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$PayslipDetailResponse {
  int? get id => throw _privateConstructorUsedError;
  PayslipDetailEmployee? get employee => throw _privateConstructorUsedError;
  @JsonKey(name: 'gross_pay')
  String? get grossPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_pay')
  int? get netPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_hours')
  String? get workingHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_days')
  int? get workingDays => throw _privateConstructorUsedError;
  List<PayslipItem>? get allowance => throw _privateConstructorUsedError;
  List<PayslipItem>? get overtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_earning')
  List<AdditionalEarning>? get additionalEarning =>
      throw _privateConstructorUsedError;
  List<PayslipItem>? get deduction => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_at')
  String? get sentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payrun_id')
  int? get payrunId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employment_id')
  int? get employmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_be_edited')
  bool? get canBeEdited => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_be_approved')
  bool? get canBeApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_be_voided')
  bool? get canBeVoided => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_allowances')
  double? get totalAllowances => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_overtime')
  String? get totalOvertime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_penalties')
  String? get totalPenalties => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_additional_earnings')
  double? get totalAdditionalEarnings => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_deductions')
  double? get totalDeductions => throw _privateConstructorUsedError;

  /// Serializes this PayslipDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayslipDetailResponseCopyWith<PayslipDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipDetailResponseCopyWith<$Res> {
  factory $PayslipDetailResponseCopyWith(PayslipDetailResponse value,
          $Res Function(PayslipDetailResponse) then) =
      _$PayslipDetailResponseCopyWithImpl<$Res, PayslipDetailResponse>;
  @useResult
  $Res call(
      {int? id,
      PayslipDetailEmployee? employee,
      @JsonKey(name: 'gross_pay') String? grossPay,
      @JsonKey(name: 'net_pay') int? netPay,
      @JsonKey(name: 'working_hours') String? workingHours,
      @JsonKey(name: 'working_days') int? workingDays,
      List<PayslipItem>? allowance,
      List<PayslipItem>? overtime,
      @JsonKey(name: 'additional_earning')
      List<AdditionalEarning>? additionalEarning,
      List<PayslipItem>? deduction,
      String? currency,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'payrun_id') int? payrunId,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employment_id') int? employmentId,
      @JsonKey(name: 'can_be_edited') bool? canBeEdited,
      @JsonKey(name: 'can_be_approved') bool? canBeApproved,
      @JsonKey(name: 'can_be_voided') bool? canBeVoided,
      @JsonKey(name: 'total_allowances') double? totalAllowances,
      @JsonKey(name: 'total_overtime') String? totalOvertime,
      @JsonKey(name: 'total_penalties') String? totalPenalties,
      @JsonKey(name: 'total_additional_earnings')
      double? totalAdditionalEarnings,
      @JsonKey(name: 'total_deductions') double? totalDeductions});

  $PayslipDetailEmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class _$PayslipDetailResponseCopyWithImpl<$Res,
        $Val extends PayslipDetailResponse>
    implements $PayslipDetailResponseCopyWith<$Res> {
  _$PayslipDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employee = freezed,
    Object? grossPay = freezed,
    Object? netPay = freezed,
    Object? workingHours = freezed,
    Object? workingDays = freezed,
    Object? allowance = freezed,
    Object? overtime = freezed,
    Object? additionalEarning = freezed,
    Object? deduction = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tenantId = freezed,
    Object? payrunId = freezed,
    Object? employeeId = freezed,
    Object? employmentId = freezed,
    Object? canBeEdited = freezed,
    Object? canBeApproved = freezed,
    Object? canBeVoided = freezed,
    Object? totalAllowances = freezed,
    Object? totalOvertime = freezed,
    Object? totalPenalties = freezed,
    Object? totalAdditionalEarnings = freezed,
    Object? totalDeductions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as PayslipDetailEmployee?,
      grossPay: freezed == grossPay
          ? _value.grossPay
          : grossPay // ignore: cast_nullable_to_non_nullable
              as String?,
      netPay: freezed == netPay
          ? _value.netPay
          : netPay // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as int?,
      allowance: freezed == allowance
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      overtime: freezed == overtime
          ? _value.overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      additionalEarning: freezed == additionalEarning
          ? _value.additionalEarning
          : additionalEarning // ignore: cast_nullable_to_non_nullable
              as List<AdditionalEarning>?,
      deduction: freezed == deduction
          ? _value.deduction
          : deduction // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      payrunId: freezed == payrunId
          ? _value.payrunId
          : payrunId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentId: freezed == employmentId
          ? _value.employmentId
          : employmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      canBeEdited: freezed == canBeEdited
          ? _value.canBeEdited
          : canBeEdited // ignore: cast_nullable_to_non_nullable
              as bool?,
      canBeApproved: freezed == canBeApproved
          ? _value.canBeApproved
          : canBeApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      canBeVoided: freezed == canBeVoided
          ? _value.canBeVoided
          : canBeVoided // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalAllowances: freezed == totalAllowances
          ? _value.totalAllowances
          : totalAllowances // ignore: cast_nullable_to_non_nullable
              as double?,
      totalOvertime: freezed == totalOvertime
          ? _value.totalOvertime
          : totalOvertime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPenalties: freezed == totalPenalties
          ? _value.totalPenalties
          : totalPenalties // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAdditionalEarnings: freezed == totalAdditionalEarnings
          ? _value.totalAdditionalEarnings
          : totalAdditionalEarnings // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeductions: freezed == totalDeductions
          ? _value.totalDeductions
          : totalDeductions // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayslipDetailEmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $PayslipDetailEmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayslipDetailResponseImplCopyWith<$Res>
    implements $PayslipDetailResponseCopyWith<$Res> {
  factory _$$PayslipDetailResponseImplCopyWith(
          _$PayslipDetailResponseImpl value,
          $Res Function(_$PayslipDetailResponseImpl) then) =
      __$$PayslipDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      PayslipDetailEmployee? employee,
      @JsonKey(name: 'gross_pay') String? grossPay,
      @JsonKey(name: 'net_pay') int? netPay,
      @JsonKey(name: 'working_hours') String? workingHours,
      @JsonKey(name: 'working_days') int? workingDays,
      List<PayslipItem>? allowance,
      List<PayslipItem>? overtime,
      @JsonKey(name: 'additional_earning')
      List<AdditionalEarning>? additionalEarning,
      List<PayslipItem>? deduction,
      String? currency,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'payrun_id') int? payrunId,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employment_id') int? employmentId,
      @JsonKey(name: 'can_be_edited') bool? canBeEdited,
      @JsonKey(name: 'can_be_approved') bool? canBeApproved,
      @JsonKey(name: 'can_be_voided') bool? canBeVoided,
      @JsonKey(name: 'total_allowances') double? totalAllowances,
      @JsonKey(name: 'total_overtime') String? totalOvertime,
      @JsonKey(name: 'total_penalties') String? totalPenalties,
      @JsonKey(name: 'total_additional_earnings')
      double? totalAdditionalEarnings,
      @JsonKey(name: 'total_deductions') double? totalDeductions});

  @override
  $PayslipDetailEmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$PayslipDetailResponseImplCopyWithImpl<$Res>
    extends _$PayslipDetailResponseCopyWithImpl<$Res,
        _$PayslipDetailResponseImpl>
    implements _$$PayslipDetailResponseImplCopyWith<$Res> {
  __$$PayslipDetailResponseImplCopyWithImpl(_$PayslipDetailResponseImpl _value,
      $Res Function(_$PayslipDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employee = freezed,
    Object? grossPay = freezed,
    Object? netPay = freezed,
    Object? workingHours = freezed,
    Object? workingDays = freezed,
    Object? allowance = freezed,
    Object? overtime = freezed,
    Object? additionalEarning = freezed,
    Object? deduction = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tenantId = freezed,
    Object? payrunId = freezed,
    Object? employeeId = freezed,
    Object? employmentId = freezed,
    Object? canBeEdited = freezed,
    Object? canBeApproved = freezed,
    Object? canBeVoided = freezed,
    Object? totalAllowances = freezed,
    Object? totalOvertime = freezed,
    Object? totalPenalties = freezed,
    Object? totalAdditionalEarnings = freezed,
    Object? totalDeductions = freezed,
  }) {
    return _then(_$PayslipDetailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as PayslipDetailEmployee?,
      grossPay: freezed == grossPay
          ? _value.grossPay
          : grossPay // ignore: cast_nullable_to_non_nullable
              as String?,
      netPay: freezed == netPay
          ? _value.netPay
          : netPay // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as int?,
      allowance: freezed == allowance
          ? _value._allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      overtime: freezed == overtime
          ? _value._overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      additionalEarning: freezed == additionalEarning
          ? _value._additionalEarning
          : additionalEarning // ignore: cast_nullable_to_non_nullable
              as List<AdditionalEarning>?,
      deduction: freezed == deduction
          ? _value._deduction
          : deduction // ignore: cast_nullable_to_non_nullable
              as List<PayslipItem>?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      payrunId: freezed == payrunId
          ? _value.payrunId
          : payrunId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentId: freezed == employmentId
          ? _value.employmentId
          : employmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      canBeEdited: freezed == canBeEdited
          ? _value.canBeEdited
          : canBeEdited // ignore: cast_nullable_to_non_nullable
              as bool?,
      canBeApproved: freezed == canBeApproved
          ? _value.canBeApproved
          : canBeApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      canBeVoided: freezed == canBeVoided
          ? _value.canBeVoided
          : canBeVoided // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalAllowances: freezed == totalAllowances
          ? _value.totalAllowances
          : totalAllowances // ignore: cast_nullable_to_non_nullable
              as double?,
      totalOvertime: freezed == totalOvertime
          ? _value.totalOvertime
          : totalOvertime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPenalties: freezed == totalPenalties
          ? _value.totalPenalties
          : totalPenalties // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAdditionalEarnings: freezed == totalAdditionalEarnings
          ? _value.totalAdditionalEarnings
          : totalAdditionalEarnings // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeductions: freezed == totalDeductions
          ? _value.totalDeductions
          : totalDeductions // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipDetailResponseImpl implements _PayslipDetailResponse {
  const _$PayslipDetailResponseImpl(
      {this.id,
      this.employee,
      @JsonKey(name: 'gross_pay') this.grossPay,
      @JsonKey(name: 'net_pay') this.netPay,
      @JsonKey(name: 'working_hours') this.workingHours,
      @JsonKey(name: 'working_days') this.workingDays,
      final List<PayslipItem>? allowance,
      final List<PayslipItem>? overtime,
      @JsonKey(name: 'additional_earning')
      final List<AdditionalEarning>? additionalEarning,
      final List<PayslipItem>? deduction,
      this.currency,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      @JsonKey(name: 'sent_at') this.sentAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'payrun_id') this.payrunId,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'employment_id') this.employmentId,
      @JsonKey(name: 'can_be_edited') this.canBeEdited,
      @JsonKey(name: 'can_be_approved') this.canBeApproved,
      @JsonKey(name: 'can_be_voided') this.canBeVoided,
      @JsonKey(name: 'total_allowances') this.totalAllowances,
      @JsonKey(name: 'total_overtime') this.totalOvertime,
      @JsonKey(name: 'total_penalties') this.totalPenalties,
      @JsonKey(name: 'total_additional_earnings') this.totalAdditionalEarnings,
      @JsonKey(name: 'total_deductions') this.totalDeductions})
      : _allowance = allowance,
        _overtime = overtime,
        _additionalEarning = additionalEarning,
        _deduction = deduction;

  factory _$PayslipDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipDetailResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final PayslipDetailEmployee? employee;
  @override
  @JsonKey(name: 'gross_pay')
  final String? grossPay;
  @override
  @JsonKey(name: 'net_pay')
  final int? netPay;
  @override
  @JsonKey(name: 'working_hours')
  final String? workingHours;
  @override
  @JsonKey(name: 'working_days')
  final int? workingDays;
  final List<PayslipItem>? _allowance;
  @override
  List<PayslipItem>? get allowance {
    final value = _allowance;
    if (value == null) return null;
    if (_allowance is EqualUnmodifiableListView) return _allowance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PayslipItem>? _overtime;
  @override
  List<PayslipItem>? get overtime {
    final value = _overtime;
    if (value == null) return null;
    if (_overtime is EqualUnmodifiableListView) return _overtime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdditionalEarning>? _additionalEarning;
  @override
  @JsonKey(name: 'additional_earning')
  List<AdditionalEarning>? get additionalEarning {
    final value = _additionalEarning;
    if (value == null) return null;
    if (_additionalEarning is EqualUnmodifiableListView)
      return _additionalEarning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PayslipItem>? _deduction;
  @override
  List<PayslipItem>? get deduction {
    final value = _deduction;
    if (value == null) return null;
    if (_deduction is EqualUnmodifiableListView) return _deduction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? currency;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'sent_at')
  final String? sentAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'payrun_id')
  final int? payrunId;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'employment_id')
  final int? employmentId;
  @override
  @JsonKey(name: 'can_be_edited')
  final bool? canBeEdited;
  @override
  @JsonKey(name: 'can_be_approved')
  final bool? canBeApproved;
  @override
  @JsonKey(name: 'can_be_voided')
  final bool? canBeVoided;
  @override
  @JsonKey(name: 'total_allowances')
  final double? totalAllowances;
  @override
  @JsonKey(name: 'total_overtime')
  final String? totalOvertime;
  @override
  @JsonKey(name: 'total_penalties')
  final String? totalPenalties;
  @override
  @JsonKey(name: 'total_additional_earnings')
  final double? totalAdditionalEarnings;
  @override
  @JsonKey(name: 'total_deductions')
  final double? totalDeductions;

  @override
  String toString() {
    return 'PayslipDetailResponse(id: $id, employee: $employee, grossPay: $grossPay, netPay: $netPay, workingHours: $workingHours, workingDays: $workingDays, allowance: $allowance, overtime: $overtime, additionalEarning: $additionalEarning, deduction: $deduction, currency: $currency, status: $status, statusLabel: $statusLabel, sentAt: $sentAt, createdAt: $createdAt, updatedAt: $updatedAt, tenantId: $tenantId, payrunId: $payrunId, employeeId: $employeeId, employmentId: $employmentId, canBeEdited: $canBeEdited, canBeApproved: $canBeApproved, canBeVoided: $canBeVoided, totalAllowances: $totalAllowances, totalOvertime: $totalOvertime, totalPenalties: $totalPenalties, totalAdditionalEarnings: $totalAdditionalEarnings, totalDeductions: $totalDeductions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.grossPay, grossPay) ||
                other.grossPay == grossPay) &&
            (identical(other.netPay, netPay) || other.netPay == netPay) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours) &&
            (identical(other.workingDays, workingDays) ||
                other.workingDays == workingDays) &&
            const DeepCollectionEquality()
                .equals(other._allowance, _allowance) &&
            const DeepCollectionEquality().equals(other._overtime, _overtime) &&
            const DeepCollectionEquality()
                .equals(other._additionalEarning, _additionalEarning) &&
            const DeepCollectionEquality()
                .equals(other._deduction, _deduction) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.payrunId, payrunId) ||
                other.payrunId == payrunId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employmentId, employmentId) ||
                other.employmentId == employmentId) &&
            (identical(other.canBeEdited, canBeEdited) ||
                other.canBeEdited == canBeEdited) &&
            (identical(other.canBeApproved, canBeApproved) ||
                other.canBeApproved == canBeApproved) &&
            (identical(other.canBeVoided, canBeVoided) ||
                other.canBeVoided == canBeVoided) &&
            (identical(other.totalAllowances, totalAllowances) ||
                other.totalAllowances == totalAllowances) &&
            (identical(other.totalOvertime, totalOvertime) ||
                other.totalOvertime == totalOvertime) &&
            (identical(other.totalPenalties, totalPenalties) ||
                other.totalPenalties == totalPenalties) &&
            (identical(
                    other.totalAdditionalEarnings, totalAdditionalEarnings) ||
                other.totalAdditionalEarnings == totalAdditionalEarnings) &&
            (identical(other.totalDeductions, totalDeductions) ||
                other.totalDeductions == totalDeductions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        employee,
        grossPay,
        netPay,
        workingHours,
        workingDays,
        const DeepCollectionEquality().hash(_allowance),
        const DeepCollectionEquality().hash(_overtime),
        const DeepCollectionEquality().hash(_additionalEarning),
        const DeepCollectionEquality().hash(_deduction),
        currency,
        status,
        statusLabel,
        sentAt,
        createdAt,
        updatedAt,
        tenantId,
        payrunId,
        employeeId,
        employmentId,
        canBeEdited,
        canBeApproved,
        canBeVoided,
        totalAllowances,
        totalOvertime,
        totalPenalties,
        totalAdditionalEarnings,
        totalDeductions
      ]);

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipDetailResponseImplCopyWith<_$PayslipDetailResponseImpl>
      get copyWith => __$$PayslipDetailResponseImplCopyWithImpl<
          _$PayslipDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _PayslipDetailResponse implements PayslipDetailResponse {
  const factory _PayslipDetailResponse(
          {final int? id,
          final PayslipDetailEmployee? employee,
          @JsonKey(name: 'gross_pay') final String? grossPay,
          @JsonKey(name: 'net_pay') final int? netPay,
          @JsonKey(name: 'working_hours') final String? workingHours,
          @JsonKey(name: 'working_days') final int? workingDays,
          final List<PayslipItem>? allowance,
          final List<PayslipItem>? overtime,
          @JsonKey(name: 'additional_earning')
          final List<AdditionalEarning>? additionalEarning,
          final List<PayslipItem>? deduction,
          final String? currency,
          final int? status,
          @JsonKey(name: 'status_label') final String? statusLabel,
          @JsonKey(name: 'sent_at') final String? sentAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'tenant_id') final int? tenantId,
          @JsonKey(name: 'payrun_id') final int? payrunId,
          @JsonKey(name: 'employee_id') final int? employeeId,
          @JsonKey(name: 'employment_id') final int? employmentId,
          @JsonKey(name: 'can_be_edited') final bool? canBeEdited,
          @JsonKey(name: 'can_be_approved') final bool? canBeApproved,
          @JsonKey(name: 'can_be_voided') final bool? canBeVoided,
          @JsonKey(name: 'total_allowances') final double? totalAllowances,
          @JsonKey(name: 'total_overtime') final String? totalOvertime,
          @JsonKey(name: 'total_penalties') final String? totalPenalties,
          @JsonKey(name: 'total_additional_earnings')
          final double? totalAdditionalEarnings,
          @JsonKey(name: 'total_deductions') final double? totalDeductions}) =
      _$PayslipDetailResponseImpl;

  factory _PayslipDetailResponse.fromJson(Map<String, dynamic> json) =
      _$PayslipDetailResponseImpl.fromJson;

  @override
  int? get id;
  @override
  PayslipDetailEmployee? get employee;
  @override
  @JsonKey(name: 'gross_pay')
  String? get grossPay;
  @override
  @JsonKey(name: 'net_pay')
  int? get netPay;
  @override
  @JsonKey(name: 'working_hours')
  String? get workingHours;
  @override
  @JsonKey(name: 'working_days')
  int? get workingDays;
  @override
  List<PayslipItem>? get allowance;
  @override
  List<PayslipItem>? get overtime;
  @override
  @JsonKey(name: 'additional_earning')
  List<AdditionalEarning>? get additionalEarning;
  @override
  List<PayslipItem>? get deduction;
  @override
  String? get currency;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'sent_at')
  String? get sentAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'payrun_id')
  int? get payrunId;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'employment_id')
  int? get employmentId;
  @override
  @JsonKey(name: 'can_be_edited')
  bool? get canBeEdited;
  @override
  @JsonKey(name: 'can_be_approved')
  bool? get canBeApproved;
  @override
  @JsonKey(name: 'can_be_voided')
  bool? get canBeVoided;
  @override
  @JsonKey(name: 'total_allowances')
  double? get totalAllowances;
  @override
  @JsonKey(name: 'total_overtime')
  String? get totalOvertime;
  @override
  @JsonKey(name: 'total_penalties')
  String? get totalPenalties;
  @override
  @JsonKey(name: 'total_additional_earnings')
  double? get totalAdditionalEarnings;
  @override
  @JsonKey(name: 'total_deductions')
  double? get totalDeductions;

  /// Create a copy of PayslipDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipDetailResponseImplCopyWith<_$PayslipDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
