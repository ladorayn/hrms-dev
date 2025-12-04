// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supervisor_assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_code')
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? avatarUrl = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$UserImpl(
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'employee_code') this.employeeCode,
      @JsonKey(name: 'avatar_url') this.avatarUrl});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'employee_code')
  final String? employeeCode;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, employeeId: $employeeId, employeeCode: $employeeCode, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, phone, employeeId, employeeCode, avatarUrl);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? name,
      final String? email,
      final String? phone,
      @JsonKey(name: 'employee_id') final int? employeeId,
      @JsonKey(name: 'employee_code') final String? employeeCode,
      @JsonKey(name: 'avatar_url') final String? avatarUrl}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'employee_code')
  String? get employeeCode;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionLevel _$PositionLevelFromJson(Map<String, dynamic> json) {
  return _PositionLevel.fromJson(json);
}

/// @nodoc
mixin _$PositionLevel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_root')
  bool? get isRoot => throw _privateConstructorUsedError;

  /// Serializes this PositionLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionLevelCopyWith<PositionLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionLevelCopyWith<$Res> {
  factory $PositionLevelCopyWith(
          PositionLevel value, $Res Function(PositionLevel) then) =
      _$PositionLevelCopyWithImpl<$Res, PositionLevel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      String? status,
      @JsonKey(name: 'is_root') bool? isRoot});
}

/// @nodoc
class _$PositionLevelCopyWithImpl<$Res, $Val extends PositionLevel>
    implements $PositionLevelCopyWith<$Res> {
  _$PositionLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? status = freezed,
    Object? isRoot = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoot: freezed == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionLevelImplCopyWith<$Res>
    implements $PositionLevelCopyWith<$Res> {
  factory _$$PositionLevelImplCopyWith(
          _$PositionLevelImpl value, $Res Function(_$PositionLevelImpl) then) =
      __$$PositionLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      String? status,
      @JsonKey(name: 'is_root') bool? isRoot});
}

/// @nodoc
class __$$PositionLevelImplCopyWithImpl<$Res>
    extends _$PositionLevelCopyWithImpl<$Res, _$PositionLevelImpl>
    implements _$$PositionLevelImplCopyWith<$Res> {
  __$$PositionLevelImplCopyWithImpl(
      _$PositionLevelImpl _value, $Res Function(_$PositionLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? status = freezed,
    Object? isRoot = freezed,
  }) {
    return _then(_$PositionLevelImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoot: freezed == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionLevelImpl implements _PositionLevel {
  const _$PositionLevelImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.status,
      @JsonKey(name: 'is_root') this.isRoot});

  factory _$PositionLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionLevelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  final String? status;
  @override
  @JsonKey(name: 'is_root')
  final bool? isRoot;

  @override
  String toString() {
    return 'PositionLevel(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, status: $status, isRoot: $isRoot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRoot, isRoot) || other.isRoot == isRoot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, createdAt,
      updatedAt, deletedAt, status, isRoot);

  /// Create a copy of PositionLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionLevelImplCopyWith<_$PositionLevelImpl> get copyWith =>
      __$$PositionLevelImplCopyWithImpl<_$PositionLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionLevelImplToJson(
      this,
    );
  }
}

abstract class _PositionLevel implements PositionLevel {
  const factory _PositionLevel(
      {final int? id,
      final String? name,
      final String? description,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      final String? status,
      @JsonKey(name: 'is_root') final bool? isRoot}) = _$PositionLevelImpl;

  factory _PositionLevel.fromJson(Map<String, dynamic> json) =
      _$PositionLevelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  String? get status;
  @override
  @JsonKey(name: 'is_root')
  bool? get isRoot;

  /// Create a copy of PositionLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionLevelImplCopyWith<_$PositionLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentForm _$AssessmentFormFromJson(Map<String, dynamic> json) {
  return _AssessmentForm.fromJson(json);
}

/// @nodoc
mixin _$AssessmentForm {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this AssessmentForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentFormCopyWith<AssessmentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentFormCopyWith<$Res> {
  factory $AssessmentFormCopyWith(
          AssessmentForm value, $Res Function(AssessmentForm) then) =
      _$AssessmentFormCopyWithImpl<$Res, AssessmentForm>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$AssessmentFormCopyWithImpl<$Res, $Val extends AssessmentForm>
    implements $AssessmentFormCopyWith<$Res> {
  _$AssessmentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentFormImplCopyWith<$Res>
    implements $AssessmentFormCopyWith<$Res> {
  factory _$$AssessmentFormImplCopyWith(_$AssessmentFormImpl value,
          $Res Function(_$AssessmentFormImpl) then) =
      __$$AssessmentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$AssessmentFormImplCopyWithImpl<$Res>
    extends _$AssessmentFormCopyWithImpl<$Res, _$AssessmentFormImpl>
    implements _$$AssessmentFormImplCopyWith<$Res> {
  __$$AssessmentFormImplCopyWithImpl(
      _$AssessmentFormImpl _value, $Res Function(_$AssessmentFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AssessmentFormImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentFormImpl implements _AssessmentForm {
  const _$AssessmentFormImpl({this.id, this.name});

  factory _$AssessmentFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentFormImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'AssessmentForm(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AssessmentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentFormImplCopyWith<_$AssessmentFormImpl> get copyWith =>
      __$$AssessmentFormImplCopyWithImpl<_$AssessmentFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentFormImplToJson(
      this,
    );
  }
}

abstract class _AssessmentForm implements AssessmentForm {
  const factory _AssessmentForm({final int? id, final String? name}) =
      _$AssessmentFormImpl;

  factory _AssessmentForm.fromJson(Map<String, dynamic> json) =
      _$AssessmentFormImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of AssessmentForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentFormImplCopyWith<_$AssessmentFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupervisorAssessment _$SupervisorAssessmentFromJson(Map<String, dynamic> json) {
  return _SupervisorAssessment.fromJson(json);
}

/// @nodoc
mixin _$SupervisorAssessment {
  int? get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_position')
  PositionLevel? get currentPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_level')
  PositionLevel? get currentLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_position')
  PositionLevel? get targetPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_level')
  PositionLevel? get targetLevel => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  AssessmentSchedule? get schedule => throw _privateConstructorUsedError;
  AssessmentForm? get form => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupervisorAssessment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupervisorAssessmentCopyWith<SupervisorAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupervisorAssessmentCopyWith<$Res> {
  factory $SupervisorAssessmentCopyWith(SupervisorAssessment value,
          $Res Function(SupervisorAssessment) then) =
      _$SupervisorAssessmentCopyWithImpl<$Res, SupervisorAssessment>;
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'current_position') PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') PositionLevel? currentLevel,
      @JsonKey(name: 'target_position') PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') PositionLevel? targetLevel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      AssessmentSchedule? schedule,
      AssessmentForm? form,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $UserCopyWith<$Res>? get user;
  $PositionLevelCopyWith<$Res>? get currentPosition;
  $PositionLevelCopyWith<$Res>? get currentLevel;
  $PositionLevelCopyWith<$Res>? get targetPosition;
  $PositionLevelCopyWith<$Res>? get targetLevel;
  $AssessmentScheduleCopyWith<$Res>? get schedule;
  $AssessmentFormCopyWith<$Res>? get form;
}

/// @nodoc
class _$SupervisorAssessmentCopyWithImpl<$Res,
        $Val extends SupervisorAssessment>
    implements $SupervisorAssessmentCopyWith<$Res> {
  _$SupervisorAssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? currentPosition = freezed,
    Object? currentLevel = freezed,
    Object? targetPosition = freezed,
    Object? targetLevel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? schedule = freezed,
    Object? form = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetLevel: freezed == targetLevel
          ? _value.targetLevel
          : targetLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as AssessmentSchedule?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AssessmentForm?,
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

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get currentPosition {
    if (_value.currentPosition == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.currentPosition!, (value) {
      return _then(_value.copyWith(currentPosition: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get currentLevel {
    if (_value.currentLevel == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.currentLevel!, (value) {
      return _then(_value.copyWith(currentLevel: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get targetPosition {
    if (_value.targetPosition == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.targetPosition!, (value) {
      return _then(_value.copyWith(targetPosition: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get targetLevel {
    if (_value.targetLevel == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.targetLevel!, (value) {
      return _then(_value.copyWith(targetLevel: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssessmentScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $AssessmentScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssessmentFormCopyWith<$Res>? get form {
    if (_value.form == null) {
      return null;
    }

    return $AssessmentFormCopyWith<$Res>(_value.form!, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupervisorAssessmentImplCopyWith<$Res>
    implements $SupervisorAssessmentCopyWith<$Res> {
  factory _$$SupervisorAssessmentImplCopyWith(_$SupervisorAssessmentImpl value,
          $Res Function(_$SupervisorAssessmentImpl) then) =
      __$$SupervisorAssessmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'current_position') PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') PositionLevel? currentLevel,
      @JsonKey(name: 'target_position') PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') PositionLevel? targetLevel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      AssessmentSchedule? schedule,
      AssessmentForm? form,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PositionLevelCopyWith<$Res>? get currentPosition;
  @override
  $PositionLevelCopyWith<$Res>? get currentLevel;
  @override
  $PositionLevelCopyWith<$Res>? get targetPosition;
  @override
  $PositionLevelCopyWith<$Res>? get targetLevel;
  @override
  $AssessmentScheduleCopyWith<$Res>? get schedule;
  @override
  $AssessmentFormCopyWith<$Res>? get form;
}

/// @nodoc
class __$$SupervisorAssessmentImplCopyWithImpl<$Res>
    extends _$SupervisorAssessmentCopyWithImpl<$Res, _$SupervisorAssessmentImpl>
    implements _$$SupervisorAssessmentImplCopyWith<$Res> {
  __$$SupervisorAssessmentImplCopyWithImpl(_$SupervisorAssessmentImpl _value,
      $Res Function(_$SupervisorAssessmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? currentPosition = freezed,
    Object? currentLevel = freezed,
    Object? targetPosition = freezed,
    Object? targetLevel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? schedule = freezed,
    Object? form = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SupervisorAssessmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetLevel: freezed == targetLevel
          ? _value.targetLevel
          : targetLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as AssessmentSchedule?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AssessmentForm?,
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
class _$SupervisorAssessmentImpl implements _SupervisorAssessment {
  const _$SupervisorAssessmentImpl(
      {this.id,
      this.user,
      @JsonKey(name: 'current_position') this.currentPosition,
      @JsonKey(name: 'current_level') this.currentLevel,
      @JsonKey(name: 'target_position') this.targetPosition,
      @JsonKey(name: 'target_level') this.targetLevel,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      this.schedule,
      this.form,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SupervisorAssessmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupervisorAssessmentImplFromJson(json);

  @override
  final int? id;
  @override
  final User? user;
  @override
  @JsonKey(name: 'current_position')
  final PositionLevel? currentPosition;
  @override
  @JsonKey(name: 'current_level')
  final PositionLevel? currentLevel;
  @override
  @JsonKey(name: 'target_position')
  final PositionLevel? targetPosition;
  @override
  @JsonKey(name: 'target_level')
  final PositionLevel? targetLevel;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  final AssessmentSchedule? schedule;
  @override
  final AssessmentForm? form;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SupervisorAssessment(id: $id, user: $user, currentPosition: $currentPosition, currentLevel: $currentLevel, targetPosition: $targetPosition, targetLevel: $targetLevel, status: $status, statusLabel: $statusLabel, schedule: $schedule, form: $form, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupervisorAssessmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.targetPosition, targetPosition) ||
                other.targetPosition == targetPosition) &&
            (identical(other.targetLevel, targetLevel) ||
                other.targetLevel == targetLevel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.form, form) || other.form == form) &&
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
      user,
      currentPosition,
      currentLevel,
      targetPosition,
      targetLevel,
      status,
      statusLabel,
      schedule,
      form,
      createdAt,
      updatedAt);

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupervisorAssessmentImplCopyWith<_$SupervisorAssessmentImpl>
      get copyWith =>
          __$$SupervisorAssessmentImplCopyWithImpl<_$SupervisorAssessmentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupervisorAssessmentImplToJson(
      this,
    );
  }
}

abstract class _SupervisorAssessment implements SupervisorAssessment {
  const factory _SupervisorAssessment(
      {final int? id,
      final User? user,
      @JsonKey(name: 'current_position') final PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') final PositionLevel? currentLevel,
      @JsonKey(name: 'target_position') final PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') final PositionLevel? targetLevel,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      final AssessmentSchedule? schedule,
      final AssessmentForm? form,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$SupervisorAssessmentImpl;

  factory _SupervisorAssessment.fromJson(Map<String, dynamic> json) =
      _$SupervisorAssessmentImpl.fromJson;

  @override
  int? get id;
  @override
  User? get user;
  @override
  @JsonKey(name: 'current_position')
  PositionLevel? get currentPosition;
  @override
  @JsonKey(name: 'current_level')
  PositionLevel? get currentLevel;
  @override
  @JsonKey(name: 'target_position')
  PositionLevel? get targetPosition;
  @override
  @JsonKey(name: 'target_level')
  PositionLevel? get targetLevel;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  AssessmentSchedule? get schedule;
  @override
  AssessmentForm? get form;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SupervisorAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupervisorAssessmentImplCopyWith<_$SupervisorAssessmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

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
  $Res call({int? id, String? name});
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
  $Res call({int? id, String? name});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl({this.id, this.name});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Department(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

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
  const factory _Department({final int? id, final String? name}) =
      _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Assessor _$AssessorFromJson(Map<String, dynamic> json) {
  return _Assessor.fromJson(json);
}

/// @nodoc
mixin _$Assessor {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'supervisor_assessment_id')
  int? get supervisorAssessmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;

  /// Serializes this Assessor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Assessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessorCopyWith<Assessor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessorCopyWith<$Res> {
  factory $AssessorCopyWith(Assessor value, $Res Function(Assessor) then) =
      _$AssessorCopyWithImpl<$Res, Assessor>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'supervisor_assessment_id') int? supervisorAssessmentId,
      @JsonKey(name: 'user_id') int? userId,
      int? score,
      String? notes,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class _$AssessorCopyWithImpl<$Res, $Val extends Assessor>
    implements $AssessorCopyWith<$Res> {
  _$AssessorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assessor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supervisorAssessmentId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supervisorAssessmentId: freezed == supervisorAssessmentId
          ? _value.supervisorAssessmentId
          : supervisorAssessmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessorImplCopyWith<$Res>
    implements $AssessorCopyWith<$Res> {
  factory _$$AssessorImplCopyWith(
          _$AssessorImpl value, $Res Function(_$AssessorImpl) then) =
      __$$AssessorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'supervisor_assessment_id') int? supervisorAssessmentId,
      @JsonKey(name: 'user_id') int? userId,
      int? score,
      String? notes,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class __$$AssessorImplCopyWithImpl<$Res>
    extends _$AssessorCopyWithImpl<$Res, _$AssessorImpl>
    implements _$$AssessorImplCopyWith<$Res> {
  __$$AssessorImplCopyWithImpl(
      _$AssessorImpl _value, $Res Function(_$AssessorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Assessor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supervisorAssessmentId = freezed,
    Object? userId = freezed,
    Object? score = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_$AssessorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supervisorAssessmentId: freezed == supervisorAssessmentId
          ? _value.supervisorAssessmentId
          : supervisorAssessmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessorImpl implements _Assessor {
  const _$AssessorImpl(
      {this.id,
      @JsonKey(name: 'supervisor_assessment_id') this.supervisorAssessmentId,
      @JsonKey(name: 'user_id') this.userId,
      this.score,
      this.notes,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel});

  factory _$AssessorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessorImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'supervisor_assessment_id')
  final int? supervisorAssessmentId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final int? score;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;

  @override
  String toString() {
    return 'Assessor(id: $id, supervisorAssessmentId: $supervisorAssessmentId, userId: $userId, score: $score, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, statusLabel: $statusLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supervisorAssessmentId, supervisorAssessmentId) ||
                other.supervisorAssessmentId == supervisorAssessmentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supervisorAssessmentId,
      userId, score, notes, createdAt, updatedAt, status, statusLabel);

  /// Create a copy of Assessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessorImplCopyWith<_$AssessorImpl> get copyWith =>
      __$$AssessorImplCopyWithImpl<_$AssessorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessorImplToJson(
      this,
    );
  }
}

abstract class _Assessor implements Assessor {
  const factory _Assessor(
          {final int? id,
          @JsonKey(name: 'supervisor_assessment_id')
          final int? supervisorAssessmentId,
          @JsonKey(name: 'user_id') final int? userId,
          final int? score,
          final String? notes,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          final int? status,
          @JsonKey(name: 'status_label') final String? statusLabel}) =
      _$AssessorImpl;

  factory _Assessor.fromJson(Map<String, dynamic> json) =
      _$AssessorImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'supervisor_assessment_id')
  int? get supervisorAssessmentId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  int? get score;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;

  /// Create a copy of Assessor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessorImplCopyWith<_$AssessorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_code')
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this Participant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res, Participant>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res, $Val extends Participant>
    implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? avatarUrl = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantImplCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$ParticipantImplCopyWith(
          _$ParticipantImpl value, $Res Function(_$ParticipantImpl) then) =
      __$$ParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class __$$ParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantCopyWithImpl<$Res, _$ParticipantImpl>
    implements _$$ParticipantImplCopyWith<$Res> {
  __$$ParticipantImplCopyWithImpl(
      _$ParticipantImpl _value, $Res Function(_$ParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ParticipantImpl(
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantImpl implements _Participant {
  const _$ParticipantImpl(
      {this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'employee_code') this.employeeCode,
      @JsonKey(name: 'avatar_url') this.avatarUrl});

  factory _$ParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'employee_code')
  final String? employeeCode;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @override
  String toString() {
    return 'Participant(id: $id, name: $name, email: $email, phone: $phone, employeeId: $employeeId, employeeCode: $employeeCode, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, phone, employeeId, employeeCode, avatarUrl);

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      __$$ParticipantImplCopyWithImpl<_$ParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantImplToJson(
      this,
    );
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
          {final int? id,
          final String? name,
          final String? email,
          final String? phone,
          @JsonKey(name: 'employee_id') final int? employeeId,
          @JsonKey(name: 'employee_code') final String? employeeCode,
          @JsonKey(name: 'avatar_url') final String? avatarUrl}) =
      _$ParticipantImpl;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$ParticipantImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'employee_code')
  String? get employeeCode;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentSchedule _$AssessmentScheduleFromJson(Map<String, dynamic> json) {
  return _AssessmentSchedule.fromJson(json);
}

/// @nodoc
mixin _$AssessmentSchedule {
  int? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  List<Participant>? get participants => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AssessmentSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentScheduleCopyWith<AssessmentSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentScheduleCopyWith<$Res> {
  factory $AssessmentScheduleCopyWith(
          AssessmentSchedule value, $Res Function(AssessmentSchedule) then) =
      _$AssessmentScheduleCopyWithImpl<$Res, AssessmentSchedule>;
  @useResult
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      List<Participant>? participants,
      String? notes,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$AssessmentScheduleCopyWithImpl<$Res, $Val extends AssessmentSchedule>
    implements $AssessmentScheduleCopyWith<$Res> {
  _$AssessmentScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? participants = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AssessmentScheduleImplCopyWith<$Res>
    implements $AssessmentScheduleCopyWith<$Res> {
  factory _$$AssessmentScheduleImplCopyWith(_$AssessmentScheduleImpl value,
          $Res Function(_$AssessmentScheduleImpl) then) =
      __$$AssessmentScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      List<Participant>? participants,
      String? notes,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$AssessmentScheduleImplCopyWithImpl<$Res>
    extends _$AssessmentScheduleCopyWithImpl<$Res, _$AssessmentScheduleImpl>
    implements _$$AssessmentScheduleImplCopyWith<$Res> {
  __$$AssessmentScheduleImplCopyWithImpl(_$AssessmentScheduleImpl _value,
      $Res Function(_$AssessmentScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? participants = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AssessmentScheduleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$AssessmentScheduleImpl implements _AssessmentSchedule {
  const _$AssessmentScheduleImpl(
      {this.id,
      this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      final List<Participant>? participants,
      this.notes,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _participants = participants;

  factory _$AssessmentScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentScheduleImplFromJson(json);

  @override
  final int? id;
  @override
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  final List<Participant>? _participants;
  @override
  List<Participant>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'AssessmentSchedule(id: $id, date: $date, startTime: $startTime, endTime: $endTime, participants: $participants, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.notes, notes) || other.notes == notes) &&
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
      date,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_participants),
      notes,
      createdAt,
      updatedAt);

  /// Create a copy of AssessmentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentScheduleImplCopyWith<_$AssessmentScheduleImpl> get copyWith =>
      __$$AssessmentScheduleImplCopyWithImpl<_$AssessmentScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentScheduleImplToJson(
      this,
    );
  }
}

abstract class _AssessmentSchedule implements AssessmentSchedule {
  const factory _AssessmentSchedule(
          {final int? id,
          final String? date,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          final List<Participant>? participants,
          final String? notes,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$AssessmentScheduleImpl;

  factory _AssessmentSchedule.fromJson(Map<String, dynamic> json) =
      _$AssessmentScheduleImpl.fromJson;

  @override
  int? get id;
  @override
  String? get date;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  List<Participant>? get participants;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of AssessmentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentScheduleImplCopyWith<_$AssessmentScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinalSubmissionField _$FinalSubmissionFieldFromJson(Map<String, dynamic> json) {
  return _FinalSubmissionField.fromJson(json);
}

/// @nodoc
mixin _$FinalSubmissionField {
  dynamic get value =>
      throw _privateConstructorUsedError; // Handles both int (score) and String (paragraph)
  @JsonKey(name: 'field_id')
  int? get fieldId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assessor_id')
  int? get assessorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_data')
  List<String>? get additionalData => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_submission_id')
  int? get formSubmissionId => throw _privateConstructorUsedError;

  /// Serializes this FinalSubmissionField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalSubmissionField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalSubmissionFieldCopyWith<FinalSubmissionField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalSubmissionFieldCopyWith<$Res> {
  factory $FinalSubmissionFieldCopyWith(FinalSubmissionField value,
          $Res Function(FinalSubmissionField) then) =
      _$FinalSubmissionFieldCopyWithImpl<$Res, FinalSubmissionField>;
  @useResult
  $Res call(
      {dynamic value,
      @JsonKey(name: 'field_id') int? fieldId,
      @JsonKey(name: 'assessor_id') int? assessorId,
      @JsonKey(name: 'additional_data') List<String>? additionalData,
      @JsonKey(name: 'form_submission_id') int? formSubmissionId});
}

/// @nodoc
class _$FinalSubmissionFieldCopyWithImpl<$Res,
        $Val extends FinalSubmissionField>
    implements $FinalSubmissionFieldCopyWith<$Res> {
  _$FinalSubmissionFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalSubmissionField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? fieldId = freezed,
    Object? assessorId = freezed,
    Object? additionalData = freezed,
    Object? formSubmissionId = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      assessorId: freezed == assessorId
          ? _value.assessorId
          : assessorId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      formSubmissionId: freezed == formSubmissionId
          ? _value.formSubmissionId
          : formSubmissionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinalSubmissionFieldImplCopyWith<$Res>
    implements $FinalSubmissionFieldCopyWith<$Res> {
  factory _$$FinalSubmissionFieldImplCopyWith(_$FinalSubmissionFieldImpl value,
          $Res Function(_$FinalSubmissionFieldImpl) then) =
      __$$FinalSubmissionFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic value,
      @JsonKey(name: 'field_id') int? fieldId,
      @JsonKey(name: 'assessor_id') int? assessorId,
      @JsonKey(name: 'additional_data') List<String>? additionalData,
      @JsonKey(name: 'form_submission_id') int? formSubmissionId});
}

/// @nodoc
class __$$FinalSubmissionFieldImplCopyWithImpl<$Res>
    extends _$FinalSubmissionFieldCopyWithImpl<$Res, _$FinalSubmissionFieldImpl>
    implements _$$FinalSubmissionFieldImplCopyWith<$Res> {
  __$$FinalSubmissionFieldImplCopyWithImpl(_$FinalSubmissionFieldImpl _value,
      $Res Function(_$FinalSubmissionFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalSubmissionField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? fieldId = freezed,
    Object? assessorId = freezed,
    Object? additionalData = freezed,
    Object? formSubmissionId = freezed,
  }) {
    return _then(_$FinalSubmissionFieldImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      assessorId: freezed == assessorId
          ? _value.assessorId
          : assessorId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      formSubmissionId: freezed == formSubmissionId
          ? _value.formSubmissionId
          : formSubmissionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalSubmissionFieldImpl implements _FinalSubmissionField {
  const _$FinalSubmissionFieldImpl(
      {required this.value,
      @JsonKey(name: 'field_id') this.fieldId,
      @JsonKey(name: 'assessor_id') this.assessorId,
      @JsonKey(name: 'additional_data') final List<String>? additionalData,
      @JsonKey(name: 'form_submission_id') this.formSubmissionId})
      : _additionalData = additionalData;

  factory _$FinalSubmissionFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalSubmissionFieldImplFromJson(json);

  @override
  final dynamic value;
// Handles both int (score) and String (paragraph)
  @override
  @JsonKey(name: 'field_id')
  final int? fieldId;
  @override
  @JsonKey(name: 'assessor_id')
  final int? assessorId;
  final List<String>? _additionalData;
  @override
  @JsonKey(name: 'additional_data')
  List<String>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableListView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'form_submission_id')
  final int? formSubmissionId;

  @override
  String toString() {
    return 'FinalSubmissionField(value: $value, fieldId: $fieldId, assessorId: $assessorId, additionalData: $additionalData, formSubmissionId: $formSubmissionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalSubmissionFieldImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.assessorId, assessorId) ||
                other.assessorId == assessorId) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData) &&
            (identical(other.formSubmissionId, formSubmissionId) ||
                other.formSubmissionId == formSubmissionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      fieldId,
      assessorId,
      const DeepCollectionEquality().hash(_additionalData),
      formSubmissionId);

  /// Create a copy of FinalSubmissionField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalSubmissionFieldImplCopyWith<_$FinalSubmissionFieldImpl>
      get copyWith =>
          __$$FinalSubmissionFieldImplCopyWithImpl<_$FinalSubmissionFieldImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalSubmissionFieldImplToJson(
      this,
    );
  }
}

abstract class _FinalSubmissionField implements FinalSubmissionField {
  const factory _FinalSubmissionField(
          {required final dynamic value,
          @JsonKey(name: 'field_id') final int? fieldId,
          @JsonKey(name: 'assessor_id') final int? assessorId,
          @JsonKey(name: 'additional_data') final List<String>? additionalData,
          @JsonKey(name: 'form_submission_id') final int? formSubmissionId}) =
      _$FinalSubmissionFieldImpl;

  factory _FinalSubmissionField.fromJson(Map<String, dynamic> json) =
      _$FinalSubmissionFieldImpl.fromJson;

  @override
  dynamic get value; // Handles both int (score) and String (paragraph)
  @override
  @JsonKey(name: 'field_id')
  int? get fieldId;
  @override
  @JsonKey(name: 'assessor_id')
  int? get assessorId;
  @override
  @JsonKey(name: 'additional_data')
  List<String>? get additionalData;
  @override
  @JsonKey(name: 'form_submission_id')
  int? get formSubmissionId;

  /// Create a copy of FinalSubmissionField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalSubmissionFieldImplCopyWith<_$FinalSubmissionFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FinalSubmissionData _$FinalSubmissionDataFromJson(Map<String, dynamic> json) {
  return _FinalSubmissionData.fromJson(json);
}

/// @nodoc
mixin _$FinalSubmissionData {
  String? get type => throw _privateConstructorUsedError;
  List<FinalSubmissionField>? get fields => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get sources => throw _privateConstructorUsedError;
  @JsonKey(name: 'merged_at')
  String? get mergedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'merged_by')
  String? get mergedBy => throw _privateConstructorUsedError;

  /// Serializes this FinalSubmissionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalSubmissionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalSubmissionDataCopyWith<FinalSubmissionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalSubmissionDataCopyWith<$Res> {
  factory $FinalSubmissionDataCopyWith(
          FinalSubmissionData value, $Res Function(FinalSubmissionData) then) =
      _$FinalSubmissionDataCopyWithImpl<$Res, FinalSubmissionData>;
  @useResult
  $Res call(
      {String? type,
      List<FinalSubmissionField>? fields,
      List<Map<String, dynamic>>? sources,
      @JsonKey(name: 'merged_at') String? mergedAt,
      @JsonKey(name: 'merged_by') String? mergedBy});
}

/// @nodoc
class _$FinalSubmissionDataCopyWithImpl<$Res, $Val extends FinalSubmissionData>
    implements $FinalSubmissionDataCopyWith<$Res> {
  _$FinalSubmissionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalSubmissionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? fields = freezed,
    Object? sources = freezed,
    Object? mergedAt = freezed,
    Object? mergedBy = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FinalSubmissionField>?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      mergedAt: freezed == mergedAt
          ? _value.mergedAt
          : mergedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mergedBy: freezed == mergedBy
          ? _value.mergedBy
          : mergedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinalSubmissionDataImplCopyWith<$Res>
    implements $FinalSubmissionDataCopyWith<$Res> {
  factory _$$FinalSubmissionDataImplCopyWith(_$FinalSubmissionDataImpl value,
          $Res Function(_$FinalSubmissionDataImpl) then) =
      __$$FinalSubmissionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      List<FinalSubmissionField>? fields,
      List<Map<String, dynamic>>? sources,
      @JsonKey(name: 'merged_at') String? mergedAt,
      @JsonKey(name: 'merged_by') String? mergedBy});
}

/// @nodoc
class __$$FinalSubmissionDataImplCopyWithImpl<$Res>
    extends _$FinalSubmissionDataCopyWithImpl<$Res, _$FinalSubmissionDataImpl>
    implements _$$FinalSubmissionDataImplCopyWith<$Res> {
  __$$FinalSubmissionDataImplCopyWithImpl(_$FinalSubmissionDataImpl _value,
      $Res Function(_$FinalSubmissionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalSubmissionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? fields = freezed,
    Object? sources = freezed,
    Object? mergedAt = freezed,
    Object? mergedBy = freezed,
  }) {
    return _then(_$FinalSubmissionDataImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FinalSubmissionField>?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      mergedAt: freezed == mergedAt
          ? _value.mergedAt
          : mergedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mergedBy: freezed == mergedBy
          ? _value.mergedBy
          : mergedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalSubmissionDataImpl implements _FinalSubmissionData {
  const _$FinalSubmissionDataImpl(
      {this.type,
      final List<FinalSubmissionField>? fields,
      final List<Map<String, dynamic>>? sources,
      @JsonKey(name: 'merged_at') this.mergedAt,
      @JsonKey(name: 'merged_by') this.mergedBy})
      : _fields = fields,
        _sources = sources;

  factory _$FinalSubmissionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalSubmissionDataImplFromJson(json);

  @override
  final String? type;
  final List<FinalSubmissionField>? _fields;
  @override
  List<FinalSubmissionField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _sources;
  @override
  List<Map<String, dynamic>>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'merged_at')
  final String? mergedAt;
  @override
  @JsonKey(name: 'merged_by')
  final String? mergedBy;

  @override
  String toString() {
    return 'FinalSubmissionData(type: $type, fields: $fields, sources: $sources, mergedAt: $mergedAt, mergedBy: $mergedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalSubmissionDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.mergedAt, mergedAt) ||
                other.mergedAt == mergedAt) &&
            (identical(other.mergedBy, mergedBy) ||
                other.mergedBy == mergedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_sources),
      mergedAt,
      mergedBy);

  /// Create a copy of FinalSubmissionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalSubmissionDataImplCopyWith<_$FinalSubmissionDataImpl> get copyWith =>
      __$$FinalSubmissionDataImplCopyWithImpl<_$FinalSubmissionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalSubmissionDataImplToJson(
      this,
    );
  }
}

abstract class _FinalSubmissionData implements FinalSubmissionData {
  const factory _FinalSubmissionData(
          {final String? type,
          final List<FinalSubmissionField>? fields,
          final List<Map<String, dynamic>>? sources,
          @JsonKey(name: 'merged_at') final String? mergedAt,
          @JsonKey(name: 'merged_by') final String? mergedBy}) =
      _$FinalSubmissionDataImpl;

  factory _FinalSubmissionData.fromJson(Map<String, dynamic> json) =
      _$FinalSubmissionDataImpl.fromJson;

  @override
  String? get type;
  @override
  List<FinalSubmissionField>? get fields;
  @override
  List<Map<String, dynamic>>? get sources;
  @override
  @JsonKey(name: 'merged_at')
  String? get mergedAt;
  @override
  @JsonKey(name: 'merged_by')
  String? get mergedBy;

  /// Create a copy of FinalSubmissionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalSubmissionDataImplCopyWith<_$FinalSubmissionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinalSubmission _$FinalSubmissionFromJson(Map<String, dynamic> json) {
  return _FinalSubmission.fromJson(json);
}

/// @nodoc
mixin _$FinalSubmission {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_by')
  int? get submittedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'formable_type')
  String? get formableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'formable_id')
  int? get formableId => throw _privateConstructorUsedError;
  FinalSubmissionData get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'validated_for')
  String? get validatedFor => throw _privateConstructorUsedError;

  /// Serializes this FinalSubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalSubmissionCopyWith<FinalSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalSubmissionCopyWith<$Res> {
  factory $FinalSubmissionCopyWith(
          FinalSubmission value, $Res Function(FinalSubmission) then) =
      _$FinalSubmissionCopyWithImpl<$Res, FinalSubmission>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy,
      @JsonKey(name: 'formable_type') String? formableType,
      @JsonKey(name: 'formable_id') int? formableId,
      FinalSubmissionData data,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'validated_for') String? validatedFor});

  $FinalSubmissionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FinalSubmissionCopyWithImpl<$Res, $Val extends FinalSubmission>
    implements $FinalSubmissionCopyWith<$Res> {
  _$FinalSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
    Object? formableType = freezed,
    Object? formableId = freezed,
    Object? data = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? validatedFor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      formableType: freezed == formableType
          ? _value.formableType
          : formableType // ignore: cast_nullable_to_non_nullable
              as String?,
      formableId: freezed == formableId
          ? _value.formableId
          : formableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FinalSubmissionData,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedFor: freezed == validatedFor
          ? _value.validatedFor
          : validatedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinalSubmissionDataCopyWith<$Res> get data {
    return $FinalSubmissionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinalSubmissionImplCopyWith<$Res>
    implements $FinalSubmissionCopyWith<$Res> {
  factory _$$FinalSubmissionImplCopyWith(_$FinalSubmissionImpl value,
          $Res Function(_$FinalSubmissionImpl) then) =
      __$$FinalSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy,
      @JsonKey(name: 'formable_type') String? formableType,
      @JsonKey(name: 'formable_id') int? formableId,
      FinalSubmissionData data,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'validated_for') String? validatedFor});

  @override
  $FinalSubmissionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FinalSubmissionImplCopyWithImpl<$Res>
    extends _$FinalSubmissionCopyWithImpl<$Res, _$FinalSubmissionImpl>
    implements _$$FinalSubmissionImplCopyWith<$Res> {
  __$$FinalSubmissionImplCopyWithImpl(
      _$FinalSubmissionImpl _value, $Res Function(_$FinalSubmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
    Object? formableType = freezed,
    Object? formableId = freezed,
    Object? data = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? validatedFor = freezed,
  }) {
    return _then(_$FinalSubmissionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      formableType: freezed == formableType
          ? _value.formableType
          : formableType // ignore: cast_nullable_to_non_nullable
              as String?,
      formableId: freezed == formableId
          ? _value.formableId
          : formableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FinalSubmissionData,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedFor: freezed == validatedFor
          ? _value.validatedFor
          : validatedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalSubmissionImpl implements _FinalSubmission {
  const _$FinalSubmissionImpl(
      {this.id,
      @JsonKey(name: 'form_id') this.formId,
      @JsonKey(name: 'submitted_by') this.submittedBy,
      @JsonKey(name: 'formable_type') this.formableType,
      @JsonKey(name: 'formable_id') this.formableId,
      required this.data,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'validated_for') this.validatedFor});

  factory _$FinalSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalSubmissionImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  @JsonKey(name: 'submitted_by')
  final int? submittedBy;
  @override
  @JsonKey(name: 'formable_type')
  final String? formableType;
  @override
  @JsonKey(name: 'formable_id')
  final int? formableId;
  @override
  final FinalSubmissionData data;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'validated_for')
  final String? validatedFor;

  @override
  String toString() {
    return 'FinalSubmission(id: $id, formId: $formId, submittedBy: $submittedBy, formableType: $formableType, formableId: $formableId, data: $data, createdAt: $createdAt, updatedAt: $updatedAt, validatedFor: $validatedFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalSubmissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.submittedBy, submittedBy) ||
                other.submittedBy == submittedBy) &&
            (identical(other.formableType, formableType) ||
                other.formableType == formableType) &&
            (identical(other.formableId, formableId) ||
                other.formableId == formableId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.validatedFor, validatedFor) ||
                other.validatedFor == validatedFor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, formId, submittedBy,
      formableType, formableId, data, createdAt, updatedAt, validatedFor);

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalSubmissionImplCopyWith<_$FinalSubmissionImpl> get copyWith =>
      __$$FinalSubmissionImplCopyWithImpl<_$FinalSubmissionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalSubmissionImplToJson(
      this,
    );
  }
}

abstract class _FinalSubmission implements FinalSubmission {
  const factory _FinalSubmission(
          {final int? id,
          @JsonKey(name: 'form_id') final int? formId,
          @JsonKey(name: 'submitted_by') final int? submittedBy,
          @JsonKey(name: 'formable_type') final String? formableType,
          @JsonKey(name: 'formable_id') final int? formableId,
          required final FinalSubmissionData data,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'validated_for') final String? validatedFor}) =
      _$FinalSubmissionImpl;

  factory _FinalSubmission.fromJson(Map<String, dynamic> json) =
      _$FinalSubmissionImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  @JsonKey(name: 'submitted_by')
  int? get submittedBy;
  @override
  @JsonKey(name: 'formable_type')
  String? get formableType;
  @override
  @JsonKey(name: 'formable_id')
  int? get formableId;
  @override
  FinalSubmissionData get data;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'validated_for')
  String? get validatedFor;

  /// Create a copy of FinalSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalSubmissionImplCopyWith<_$FinalSubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupervisorAssessmentDetail _$SupervisorAssessmentDetailFromJson(
    Map<String, dynamic> json) {
  return _SupervisorAssessmentDetail.fromJson(json);
}

/// @nodoc
mixin _$SupervisorAssessmentDetail {
  int? get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_start_date')
  String? get employeeStartDate =>
      throw _privateConstructorUsedError; // New field
  @JsonKey(name: 'current_position')
  PositionLevel? get currentPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_level')
  PositionLevel? get currentLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_department')
  Department? get currentDepartment =>
      throw _privateConstructorUsedError; // New field
  @JsonKey(name: 'target_position')
  PositionLevel? get targetPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_level')
  PositionLevel? get targetLevel => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  AssessmentSchedule? get schedule => throw _privateConstructorUsedError;
  List<Assessor>? get assessors =>
      throw _privateConstructorUsedError; // New field (List)
  AssessmentForm? get form => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_submission')
  FinalSubmission? get finalSubmission =>
      throw _privateConstructorUsedError; // New field (Complex)
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupervisorAssessmentDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupervisorAssessmentDetailCopyWith<SupervisorAssessmentDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupervisorAssessmentDetailCopyWith<$Res> {
  factory $SupervisorAssessmentDetailCopyWith(SupervisorAssessmentDetail value,
          $Res Function(SupervisorAssessmentDetail) then) =
      _$SupervisorAssessmentDetailCopyWithImpl<$Res,
          SupervisorAssessmentDetail>;
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'employee_start_date') String? employeeStartDate,
      @JsonKey(name: 'current_position') PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') PositionLevel? currentLevel,
      @JsonKey(name: 'current_department') Department? currentDepartment,
      @JsonKey(name: 'target_position') PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') PositionLevel? targetLevel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      AssessmentSchedule? schedule,
      List<Assessor>? assessors,
      AssessmentForm? form,
      @JsonKey(name: 'final_submission') FinalSubmission? finalSubmission,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $UserCopyWith<$Res>? get user;
  $PositionLevelCopyWith<$Res>? get currentPosition;
  $PositionLevelCopyWith<$Res>? get currentLevel;
  $DepartmentCopyWith<$Res>? get currentDepartment;
  $PositionLevelCopyWith<$Res>? get targetPosition;
  $PositionLevelCopyWith<$Res>? get targetLevel;
  $AssessmentScheduleCopyWith<$Res>? get schedule;
  $AssessmentFormCopyWith<$Res>? get form;
  $FinalSubmissionCopyWith<$Res>? get finalSubmission;
}

/// @nodoc
class _$SupervisorAssessmentDetailCopyWithImpl<$Res,
        $Val extends SupervisorAssessmentDetail>
    implements $SupervisorAssessmentDetailCopyWith<$Res> {
  _$SupervisorAssessmentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? employeeStartDate = freezed,
    Object? currentPosition = freezed,
    Object? currentLevel = freezed,
    Object? currentDepartment = freezed,
    Object? targetPosition = freezed,
    Object? targetLevel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? schedule = freezed,
    Object? assessors = freezed,
    Object? form = freezed,
    Object? finalSubmission = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      employeeStartDate: freezed == employeeStartDate
          ? _value.employeeStartDate
          : employeeStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentDepartment: freezed == currentDepartment
          ? _value.currentDepartment
          : currentDepartment // ignore: cast_nullable_to_non_nullable
              as Department?,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetLevel: freezed == targetLevel
          ? _value.targetLevel
          : targetLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as AssessmentSchedule?,
      assessors: freezed == assessors
          ? _value.assessors
          : assessors // ignore: cast_nullable_to_non_nullable
              as List<Assessor>?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AssessmentForm?,
      finalSubmission: freezed == finalSubmission
          ? _value.finalSubmission
          : finalSubmission // ignore: cast_nullable_to_non_nullable
              as FinalSubmission?,
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

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get currentPosition {
    if (_value.currentPosition == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.currentPosition!, (value) {
      return _then(_value.copyWith(currentPosition: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get currentLevel {
    if (_value.currentLevel == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.currentLevel!, (value) {
      return _then(_value.copyWith(currentLevel: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get currentDepartment {
    if (_value.currentDepartment == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.currentDepartment!, (value) {
      return _then(_value.copyWith(currentDepartment: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get targetPosition {
    if (_value.targetPosition == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.targetPosition!, (value) {
      return _then(_value.copyWith(targetPosition: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionLevelCopyWith<$Res>? get targetLevel {
    if (_value.targetLevel == null) {
      return null;
    }

    return $PositionLevelCopyWith<$Res>(_value.targetLevel!, (value) {
      return _then(_value.copyWith(targetLevel: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssessmentScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $AssessmentScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssessmentFormCopyWith<$Res>? get form {
    if (_value.form == null) {
      return null;
    }

    return $AssessmentFormCopyWith<$Res>(_value.form!, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinalSubmissionCopyWith<$Res>? get finalSubmission {
    if (_value.finalSubmission == null) {
      return null;
    }

    return $FinalSubmissionCopyWith<$Res>(_value.finalSubmission!, (value) {
      return _then(_value.copyWith(finalSubmission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupervisorAssessmentDetailImplCopyWith<$Res>
    implements $SupervisorAssessmentDetailCopyWith<$Res> {
  factory _$$SupervisorAssessmentDetailImplCopyWith(
          _$SupervisorAssessmentDetailImpl value,
          $Res Function(_$SupervisorAssessmentDetailImpl) then) =
      __$$SupervisorAssessmentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'employee_start_date') String? employeeStartDate,
      @JsonKey(name: 'current_position') PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') PositionLevel? currentLevel,
      @JsonKey(name: 'current_department') Department? currentDepartment,
      @JsonKey(name: 'target_position') PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') PositionLevel? targetLevel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      AssessmentSchedule? schedule,
      List<Assessor>? assessors,
      AssessmentForm? form,
      @JsonKey(name: 'final_submission') FinalSubmission? finalSubmission,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PositionLevelCopyWith<$Res>? get currentPosition;
  @override
  $PositionLevelCopyWith<$Res>? get currentLevel;
  @override
  $DepartmentCopyWith<$Res>? get currentDepartment;
  @override
  $PositionLevelCopyWith<$Res>? get targetPosition;
  @override
  $PositionLevelCopyWith<$Res>? get targetLevel;
  @override
  $AssessmentScheduleCopyWith<$Res>? get schedule;
  @override
  $AssessmentFormCopyWith<$Res>? get form;
  @override
  $FinalSubmissionCopyWith<$Res>? get finalSubmission;
}

/// @nodoc
class __$$SupervisorAssessmentDetailImplCopyWithImpl<$Res>
    extends _$SupervisorAssessmentDetailCopyWithImpl<$Res,
        _$SupervisorAssessmentDetailImpl>
    implements _$$SupervisorAssessmentDetailImplCopyWith<$Res> {
  __$$SupervisorAssessmentDetailImplCopyWithImpl(
      _$SupervisorAssessmentDetailImpl _value,
      $Res Function(_$SupervisorAssessmentDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? employeeStartDate = freezed,
    Object? currentPosition = freezed,
    Object? currentLevel = freezed,
    Object? currentDepartment = freezed,
    Object? targetPosition = freezed,
    Object? targetLevel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? schedule = freezed,
    Object? assessors = freezed,
    Object? form = freezed,
    Object? finalSubmission = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SupervisorAssessmentDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      employeeStartDate: freezed == employeeStartDate
          ? _value.employeeStartDate
          : employeeStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentLevel: freezed == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      currentDepartment: freezed == currentDepartment
          ? _value.currentDepartment
          : currentDepartment // ignore: cast_nullable_to_non_nullable
              as Department?,
      targetPosition: freezed == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      targetLevel: freezed == targetLevel
          ? _value.targetLevel
          : targetLevel // ignore: cast_nullable_to_non_nullable
              as PositionLevel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as AssessmentSchedule?,
      assessors: freezed == assessors
          ? _value._assessors
          : assessors // ignore: cast_nullable_to_non_nullable
              as List<Assessor>?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AssessmentForm?,
      finalSubmission: freezed == finalSubmission
          ? _value.finalSubmission
          : finalSubmission // ignore: cast_nullable_to_non_nullable
              as FinalSubmission?,
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
class _$SupervisorAssessmentDetailImpl implements _SupervisorAssessmentDetail {
  const _$SupervisorAssessmentDetailImpl(
      {this.id,
      this.user,
      @JsonKey(name: 'employee_start_date') this.employeeStartDate,
      @JsonKey(name: 'current_position') this.currentPosition,
      @JsonKey(name: 'current_level') this.currentLevel,
      @JsonKey(name: 'current_department') this.currentDepartment,
      @JsonKey(name: 'target_position') this.targetPosition,
      @JsonKey(name: 'target_level') this.targetLevel,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      this.schedule,
      final List<Assessor>? assessors,
      this.form,
      @JsonKey(name: 'final_submission') this.finalSubmission,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _assessors = assessors;

  factory _$SupervisorAssessmentDetailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupervisorAssessmentDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final User? user;
  @override
  @JsonKey(name: 'employee_start_date')
  final String? employeeStartDate;
// New field
  @override
  @JsonKey(name: 'current_position')
  final PositionLevel? currentPosition;
  @override
  @JsonKey(name: 'current_level')
  final PositionLevel? currentLevel;
  @override
  @JsonKey(name: 'current_department')
  final Department? currentDepartment;
// New field
  @override
  @JsonKey(name: 'target_position')
  final PositionLevel? targetPosition;
  @override
  @JsonKey(name: 'target_level')
  final PositionLevel? targetLevel;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  final AssessmentSchedule? schedule;
  final List<Assessor>? _assessors;
  @override
  List<Assessor>? get assessors {
    final value = _assessors;
    if (value == null) return null;
    if (_assessors is EqualUnmodifiableListView) return _assessors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// New field (List)
  @override
  final AssessmentForm? form;
  @override
  @JsonKey(name: 'final_submission')
  final FinalSubmission? finalSubmission;
// New field (Complex)
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SupervisorAssessmentDetail(id: $id, user: $user, employeeStartDate: $employeeStartDate, currentPosition: $currentPosition, currentLevel: $currentLevel, currentDepartment: $currentDepartment, targetPosition: $targetPosition, targetLevel: $targetLevel, status: $status, statusLabel: $statusLabel, schedule: $schedule, assessors: $assessors, form: $form, finalSubmission: $finalSubmission, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupervisorAssessmentDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.employeeStartDate, employeeStartDate) ||
                other.employeeStartDate == employeeStartDate) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.currentDepartment, currentDepartment) ||
                other.currentDepartment == currentDepartment) &&
            (identical(other.targetPosition, targetPosition) ||
                other.targetPosition == targetPosition) &&
            (identical(other.targetLevel, targetLevel) ||
                other.targetLevel == targetLevel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            const DeepCollectionEquality()
                .equals(other._assessors, _assessors) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.finalSubmission, finalSubmission) ||
                other.finalSubmission == finalSubmission) &&
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
      user,
      employeeStartDate,
      currentPosition,
      currentLevel,
      currentDepartment,
      targetPosition,
      targetLevel,
      status,
      statusLabel,
      schedule,
      const DeepCollectionEquality().hash(_assessors),
      form,
      finalSubmission,
      createdAt,
      updatedAt);

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupervisorAssessmentDetailImplCopyWith<_$SupervisorAssessmentDetailImpl>
      get copyWith => __$$SupervisorAssessmentDetailImplCopyWithImpl<
          _$SupervisorAssessmentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupervisorAssessmentDetailImplToJson(
      this,
    );
  }
}

abstract class _SupervisorAssessmentDetail
    implements SupervisorAssessmentDetail {
  const factory _SupervisorAssessmentDetail(
      {final int? id,
      final User? user,
      @JsonKey(name: 'employee_start_date') final String? employeeStartDate,
      @JsonKey(name: 'current_position') final PositionLevel? currentPosition,
      @JsonKey(name: 'current_level') final PositionLevel? currentLevel,
      @JsonKey(name: 'current_department') final Department? currentDepartment,
      @JsonKey(name: 'target_position') final PositionLevel? targetPosition,
      @JsonKey(name: 'target_level') final PositionLevel? targetLevel,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      final AssessmentSchedule? schedule,
      final List<Assessor>? assessors,
      final AssessmentForm? form,
      @JsonKey(name: 'final_submission') final FinalSubmission? finalSubmission,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$SupervisorAssessmentDetailImpl;

  factory _SupervisorAssessmentDetail.fromJson(Map<String, dynamic> json) =
      _$SupervisorAssessmentDetailImpl.fromJson;

  @override
  int? get id;
  @override
  User? get user;
  @override
  @JsonKey(name: 'employee_start_date')
  String? get employeeStartDate; // New field
  @override
  @JsonKey(name: 'current_position')
  PositionLevel? get currentPosition;
  @override
  @JsonKey(name: 'current_level')
  PositionLevel? get currentLevel;
  @override
  @JsonKey(name: 'current_department')
  Department? get currentDepartment; // New field
  @override
  @JsonKey(name: 'target_position')
  PositionLevel? get targetPosition;
  @override
  @JsonKey(name: 'target_level')
  PositionLevel? get targetLevel;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  AssessmentSchedule? get schedule;
  @override
  List<Assessor>? get assessors; // New field (List)
  @override
  AssessmentForm? get form;
  @override
  @JsonKey(name: 'final_submission')
  FinalSubmission? get finalSubmission; // New field (Complex)
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SupervisorAssessmentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupervisorAssessmentDetailImplCopyWith<_$SupervisorAssessmentDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
