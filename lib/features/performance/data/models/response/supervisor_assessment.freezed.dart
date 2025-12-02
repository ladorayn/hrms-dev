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
  String? get schedule => throw _privateConstructorUsedError;
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
      String? schedule,
      AssessmentForm? form,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $UserCopyWith<$Res>? get user;
  $PositionLevelCopyWith<$Res>? get currentPosition;
  $PositionLevelCopyWith<$Res>? get currentLevel;
  $PositionLevelCopyWith<$Res>? get targetPosition;
  $PositionLevelCopyWith<$Res>? get targetLevel;
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
              as String?,
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
      String? schedule,
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
              as String?,
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
  final String? schedule;
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
      final String? schedule,
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
  String? get schedule;
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
