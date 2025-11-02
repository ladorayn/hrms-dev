// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveType _$LeaveTypeFromJson(Map<String, dynamic> json) {
  return _LeaveType.fromJson(json);
}

/// @nodoc
mixin _$LeaveType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'quota_configuration')
  String get quotaConfiguration => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Entitlement> get entitlements => throw _privateConstructorUsedError;

  /// Serializes this LeaveType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveTypeCopyWith<LeaveType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveTypeCopyWith<$Res> {
  factory $LeaveTypeCopyWith(LeaveType value, $Res Function(LeaveType) then) =
      _$LeaveTypeCopyWithImpl<$Res, LeaveType>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String gender,
      @JsonKey(name: 'quota_configuration') String quotaConfiguration,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<Entitlement> entitlements});
}

/// @nodoc
class _$LeaveTypeCopyWithImpl<$Res, $Val extends LeaveType>
    implements $LeaveTypeCopyWith<$Res> {
  _$LeaveTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? gender = null,
    Object? quotaConfiguration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? entitlements = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      quotaConfiguration: null == quotaConfiguration
          ? _value.quotaConfiguration
          : quotaConfiguration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entitlements: null == entitlements
          ? _value.entitlements
          : entitlements // ignore: cast_nullable_to_non_nullable
              as List<Entitlement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveTypeImplCopyWith<$Res>
    implements $LeaveTypeCopyWith<$Res> {
  factory _$$LeaveTypeImplCopyWith(
          _$LeaveTypeImpl value, $Res Function(_$LeaveTypeImpl) then) =
      __$$LeaveTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String gender,
      @JsonKey(name: 'quota_configuration') String quotaConfiguration,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<Entitlement> entitlements});
}

/// @nodoc
class __$$LeaveTypeImplCopyWithImpl<$Res>
    extends _$LeaveTypeCopyWithImpl<$Res, _$LeaveTypeImpl>
    implements _$$LeaveTypeImplCopyWith<$Res> {
  __$$LeaveTypeImplCopyWithImpl(
      _$LeaveTypeImpl _value, $Res Function(_$LeaveTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? gender = null,
    Object? quotaConfiguration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? entitlements = null,
  }) {
    return _then(_$LeaveTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      quotaConfiguration: null == quotaConfiguration
          ? _value.quotaConfiguration
          : quotaConfiguration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entitlements: null == entitlements
          ? _value._entitlements
          : entitlements // ignore: cast_nullable_to_non_nullable
              as List<Entitlement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveTypeImpl implements _LeaveType {
  const _$LeaveTypeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.gender,
      @JsonKey(name: 'quota_configuration') required this.quotaConfiguration,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<Entitlement> entitlements})
      : _entitlements = entitlements;

  factory _$LeaveTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String gender;
  @override
  @JsonKey(name: 'quota_configuration')
  final String quotaConfiguration;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final List<Entitlement> _entitlements;
  @override
  List<Entitlement> get entitlements {
    if (_entitlements is EqualUnmodifiableListView) return _entitlements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entitlements);
  }

  @override
  String toString() {
    return 'LeaveType(id: $id, name: $name, description: $description, gender: $gender, quotaConfiguration: $quotaConfiguration, createdAt: $createdAt, updatedAt: $updatedAt, entitlements: $entitlements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.quotaConfiguration, quotaConfiguration) ||
                other.quotaConfiguration == quotaConfiguration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._entitlements, _entitlements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      gender,
      quotaConfiguration,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_entitlements));

  /// Create a copy of LeaveType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveTypeImplCopyWith<_$LeaveTypeImpl> get copyWith =>
      __$$LeaveTypeImplCopyWithImpl<_$LeaveTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveTypeImplToJson(
      this,
    );
  }
}

abstract class _LeaveType implements LeaveType {
  const factory _LeaveType(
      {required final int id,
      required final String name,
      required final String description,
      required final String gender,
      @JsonKey(name: 'quota_configuration')
      required final String quotaConfiguration,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      required final List<Entitlement> entitlements}) = _$LeaveTypeImpl;

  factory _LeaveType.fromJson(Map<String, dynamic> json) =
      _$LeaveTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get gender;
  @override
  @JsonKey(name: 'quota_configuration')
  String get quotaConfiguration;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  List<Entitlement> get entitlements;

  /// Create a copy of LeaveType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveTypeImplCopyWith<_$LeaveTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Entitlement _$EntitlementFromJson(Map<String, dynamic> json) {
  return _Entitlement.fromJson(json);
}

/// @nodoc
mixin _$Entitlement {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type_id')
  int get leaveTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level')
  String get jobLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'quota_days')
  int get quotaDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'carry_over_allowed')
  bool get carryOverAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_carry_over_days')
  int get maxCarryOverDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'deduct_employee_balance')
  bool get deductEmployeeBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'carry_over_expiry')
  DateTime? get carryOverExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Entitlement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntitlementCopyWith<Entitlement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntitlementCopyWith<$Res> {
  factory $EntitlementCopyWith(
          Entitlement value, $Res Function(Entitlement) then) =
      _$EntitlementCopyWithImpl<$Res, Entitlement>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'leave_type_id') int leaveTypeId,
      @JsonKey(name: 'job_level') String jobLevel,
      @JsonKey(name: 'quota_days') int quotaDays,
      @JsonKey(name: 'carry_over_allowed') bool carryOverAllowed,
      @JsonKey(name: 'max_carry_over_days') int maxCarryOverDays,
      @JsonKey(name: 'deduct_employee_balance') bool deductEmployeeBalance,
      @JsonKey(name: 'carry_over_expiry') DateTime? carryOverExpiry,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$EntitlementCopyWithImpl<$Res, $Val extends Entitlement>
    implements $EntitlementCopyWith<$Res> {
  _$EntitlementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leaveTypeId = null,
    Object? jobLevel = null,
    Object? quotaDays = null,
    Object? carryOverAllowed = null,
    Object? maxCarryOverDays = null,
    Object? deductEmployeeBalance = null,
    Object? carryOverExpiry = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leaveTypeId: null == leaveTypeId
          ? _value.leaveTypeId
          : leaveTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      jobLevel: null == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String,
      quotaDays: null == quotaDays
          ? _value.quotaDays
          : quotaDays // ignore: cast_nullable_to_non_nullable
              as int,
      carryOverAllowed: null == carryOverAllowed
          ? _value.carryOverAllowed
          : carryOverAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      maxCarryOverDays: null == maxCarryOverDays
          ? _value.maxCarryOverDays
          : maxCarryOverDays // ignore: cast_nullable_to_non_nullable
              as int,
      deductEmployeeBalance: null == deductEmployeeBalance
          ? _value.deductEmployeeBalance
          : deductEmployeeBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      carryOverExpiry: freezed == carryOverExpiry
          ? _value.carryOverExpiry
          : carryOverExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntitlementImplCopyWith<$Res>
    implements $EntitlementCopyWith<$Res> {
  factory _$$EntitlementImplCopyWith(
          _$EntitlementImpl value, $Res Function(_$EntitlementImpl) then) =
      __$$EntitlementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'leave_type_id') int leaveTypeId,
      @JsonKey(name: 'job_level') String jobLevel,
      @JsonKey(name: 'quota_days') int quotaDays,
      @JsonKey(name: 'carry_over_allowed') bool carryOverAllowed,
      @JsonKey(name: 'max_carry_over_days') int maxCarryOverDays,
      @JsonKey(name: 'deduct_employee_balance') bool deductEmployeeBalance,
      @JsonKey(name: 'carry_over_expiry') DateTime? carryOverExpiry,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$EntitlementImplCopyWithImpl<$Res>
    extends _$EntitlementCopyWithImpl<$Res, _$EntitlementImpl>
    implements _$$EntitlementImplCopyWith<$Res> {
  __$$EntitlementImplCopyWithImpl(
      _$EntitlementImpl _value, $Res Function(_$EntitlementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leaveTypeId = null,
    Object? jobLevel = null,
    Object? quotaDays = null,
    Object? carryOverAllowed = null,
    Object? maxCarryOverDays = null,
    Object? deductEmployeeBalance = null,
    Object? carryOverExpiry = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$EntitlementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leaveTypeId: null == leaveTypeId
          ? _value.leaveTypeId
          : leaveTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      jobLevel: null == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String,
      quotaDays: null == quotaDays
          ? _value.quotaDays
          : quotaDays // ignore: cast_nullable_to_non_nullable
              as int,
      carryOverAllowed: null == carryOverAllowed
          ? _value.carryOverAllowed
          : carryOverAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      maxCarryOverDays: null == maxCarryOverDays
          ? _value.maxCarryOverDays
          : maxCarryOverDays // ignore: cast_nullable_to_non_nullable
              as int,
      deductEmployeeBalance: null == deductEmployeeBalance
          ? _value.deductEmployeeBalance
          : deductEmployeeBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      carryOverExpiry: freezed == carryOverExpiry
          ? _value.carryOverExpiry
          : carryOverExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntitlementImpl implements _Entitlement {
  const _$EntitlementImpl(
      {required this.id,
      @JsonKey(name: 'leave_type_id') required this.leaveTypeId,
      @JsonKey(name: 'job_level') required this.jobLevel,
      @JsonKey(name: 'quota_days') required this.quotaDays,
      @JsonKey(name: 'carry_over_allowed') required this.carryOverAllowed,
      @JsonKey(name: 'max_carry_over_days') required this.maxCarryOverDays,
      @JsonKey(name: 'deduct_employee_balance')
      required this.deductEmployeeBalance,
      @JsonKey(name: 'carry_over_expiry') this.carryOverExpiry,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$EntitlementImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntitlementImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'leave_type_id')
  final int leaveTypeId;
  @override
  @JsonKey(name: 'job_level')
  final String jobLevel;
  @override
  @JsonKey(name: 'quota_days')
  final int quotaDays;
  @override
  @JsonKey(name: 'carry_over_allowed')
  final bool carryOverAllowed;
  @override
  @JsonKey(name: 'max_carry_over_days')
  final int maxCarryOverDays;
  @override
  @JsonKey(name: 'deduct_employee_balance')
  final bool deductEmployeeBalance;
  @override
  @JsonKey(name: 'carry_over_expiry')
  final DateTime? carryOverExpiry;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Entitlement(id: $id, leaveTypeId: $leaveTypeId, jobLevel: $jobLevel, quotaDays: $quotaDays, carryOverAllowed: $carryOverAllowed, maxCarryOverDays: $maxCarryOverDays, deductEmployeeBalance: $deductEmployeeBalance, carryOverExpiry: $carryOverExpiry, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntitlementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leaveTypeId, leaveTypeId) ||
                other.leaveTypeId == leaveTypeId) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.quotaDays, quotaDays) ||
                other.quotaDays == quotaDays) &&
            (identical(other.carryOverAllowed, carryOverAllowed) ||
                other.carryOverAllowed == carryOverAllowed) &&
            (identical(other.maxCarryOverDays, maxCarryOverDays) ||
                other.maxCarryOverDays == maxCarryOverDays) &&
            (identical(other.deductEmployeeBalance, deductEmployeeBalance) ||
                other.deductEmployeeBalance == deductEmployeeBalance) &&
            (identical(other.carryOverExpiry, carryOverExpiry) ||
                other.carryOverExpiry == carryOverExpiry) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      leaveTypeId,
      jobLevel,
      quotaDays,
      carryOverAllowed,
      maxCarryOverDays,
      deductEmployeeBalance,
      carryOverExpiry,
      createdAt,
      updatedAt);

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntitlementImplCopyWith<_$EntitlementImpl> get copyWith =>
      __$$EntitlementImplCopyWithImpl<_$EntitlementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntitlementImplToJson(
      this,
    );
  }
}

abstract class _Entitlement implements Entitlement {
  const factory _Entitlement(
      {required final int id,
      @JsonKey(name: 'leave_type_id') required final int leaveTypeId,
      @JsonKey(name: 'job_level') required final String jobLevel,
      @JsonKey(name: 'quota_days') required final int quotaDays,
      @JsonKey(name: 'carry_over_allowed') required final bool carryOverAllowed,
      @JsonKey(name: 'max_carry_over_days') required final int maxCarryOverDays,
      @JsonKey(name: 'deduct_employee_balance')
      required final bool deductEmployeeBalance,
      @JsonKey(name: 'carry_over_expiry') final DateTime? carryOverExpiry,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$EntitlementImpl;

  factory _Entitlement.fromJson(Map<String, dynamic> json) =
      _$EntitlementImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'leave_type_id')
  int get leaveTypeId;
  @override
  @JsonKey(name: 'job_level')
  String get jobLevel;
  @override
  @JsonKey(name: 'quota_days')
  int get quotaDays;
  @override
  @JsonKey(name: 'carry_over_allowed')
  bool get carryOverAllowed;
  @override
  @JsonKey(name: 'max_carry_over_days')
  int get maxCarryOverDays;
  @override
  @JsonKey(name: 'deduct_employee_balance')
  bool get deductEmployeeBalance;
  @override
  @JsonKey(name: 'carry_over_expiry')
  DateTime? get carryOverExpiry;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntitlementImplCopyWith<_$EntitlementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
