// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employment_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

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
  $Res call({int id, String name});
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
    Object? id = null,
    Object? name = null,
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
  $Res call({int id, String name});
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
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DepartmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl({required this.id, required this.name});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

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
  const factory _Department(
      {required final int id, required final String name}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobLevel _$JobLevelFromJson(Map<String, dynamic> json) {
  return _JobLevel.fromJson(json);
}

/// @nodoc
mixin _$JobLevel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this JobLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobLevelCopyWith<JobLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobLevelCopyWith<$Res> {
  factory $JobLevelCopyWith(JobLevel value, $Res Function(JobLevel) then) =
      _$JobLevelCopyWithImpl<$Res, JobLevel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$JobLevelCopyWithImpl<$Res, $Val extends JobLevel>
    implements $JobLevelCopyWith<$Res> {
  _$JobLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobLevelImplCopyWith<$Res>
    implements $JobLevelCopyWith<$Res> {
  factory _$$JobLevelImplCopyWith(
          _$JobLevelImpl value, $Res Function(_$JobLevelImpl) then) =
      __$$JobLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$JobLevelImplCopyWithImpl<$Res>
    extends _$JobLevelCopyWithImpl<$Res, _$JobLevelImpl>
    implements _$$JobLevelImplCopyWith<$Res> {
  __$$JobLevelImplCopyWithImpl(
      _$JobLevelImpl _value, $Res Function(_$JobLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$JobLevelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobLevelImpl implements _JobLevel {
  const _$JobLevelImpl({required this.id, required this.name});

  factory _$JobLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobLevelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'JobLevel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      __$$JobLevelImplCopyWithImpl<_$JobLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobLevelImplToJson(
      this,
    );
  }
}

abstract class _JobLevel implements JobLevel {
  const factory _JobLevel({required final int id, required final String name}) =
      _$JobLevelImpl;

  factory _JobLevel.fromJson(Map<String, dynamic> json) =
      _$JobLevelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobPosition _$JobPositionFromJson(Map<String, dynamic> json) {
  return _JobPosition.fromJson(json);
}

/// @nodoc
mixin _$JobPosition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this JobPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPositionCopyWith<JobPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPositionCopyWith<$Res> {
  factory $JobPositionCopyWith(
          JobPosition value, $Res Function(JobPosition) then) =
      _$JobPositionCopyWithImpl<$Res, JobPosition>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$JobPositionCopyWithImpl<$Res, $Val extends JobPosition>
    implements $JobPositionCopyWith<$Res> {
  _$JobPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPositionImplCopyWith<$Res>
    implements $JobPositionCopyWith<$Res> {
  factory _$$JobPositionImplCopyWith(
          _$JobPositionImpl value, $Res Function(_$JobPositionImpl) then) =
      __$$JobPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$JobPositionImplCopyWithImpl<$Res>
    extends _$JobPositionCopyWithImpl<$Res, _$JobPositionImpl>
    implements _$$JobPositionImplCopyWith<$Res> {
  __$$JobPositionImplCopyWithImpl(
      _$JobPositionImpl _value, $Res Function(_$JobPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$JobPositionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPositionImpl implements _JobPosition {
  const _$JobPositionImpl({required this.id, required this.name});

  factory _$JobPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPositionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'JobPosition(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPositionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      __$$JobPositionImplCopyWithImpl<_$JobPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPositionImplToJson(
      this,
    );
  }
}

abstract class _JobPosition implements JobPosition {
  const factory _JobPosition(
      {required final int id, required final String name}) = _$JobPositionImpl;

  factory _JobPosition.fromJson(Map<String, dynamic> json) =
      _$JobPositionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
