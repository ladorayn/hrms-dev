// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_attendance_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateAttendanceRequestModel _$UpdateAttendanceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateAttendanceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateAttendanceRequestModel {
  @JsonKey(name: 'shift_id')
  int? get shiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_in_at')
  String? get clockInAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_out_at')
  String? get clockOutAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this UpdateAttendanceRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAttendanceRequestModelCopyWith<UpdateAttendanceRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAttendanceRequestModelCopyWith<$Res> {
  factory $UpdateAttendanceRequestModelCopyWith(
          UpdateAttendanceRequestModel value,
          $Res Function(UpdateAttendanceRequestModel) then) =
      _$UpdateAttendanceRequestModelCopyWithImpl<$Res,
          UpdateAttendanceRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int? shiftId,
      @JsonKey(name: 'clock_in_at') String? clockInAt,
      @JsonKey(name: 'clock_out_at') String? clockOutAt,
      String? notes});
}

/// @nodoc
class _$UpdateAttendanceRequestModelCopyWithImpl<$Res,
        $Val extends UpdateAttendanceRequestModel>
    implements $UpdateAttendanceRequestModelCopyWith<$Res> {
  _$UpdateAttendanceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = freezed,
    Object? clockInAt = freezed,
    Object? clockOutAt = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      clockInAt: freezed == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutAt: freezed == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAttendanceRequestModelImplCopyWith<$Res>
    implements $UpdateAttendanceRequestModelCopyWith<$Res> {
  factory _$$UpdateAttendanceRequestModelImplCopyWith(
          _$UpdateAttendanceRequestModelImpl value,
          $Res Function(_$UpdateAttendanceRequestModelImpl) then) =
      __$$UpdateAttendanceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int? shiftId,
      @JsonKey(name: 'clock_in_at') String? clockInAt,
      @JsonKey(name: 'clock_out_at') String? clockOutAt,
      String? notes});
}

/// @nodoc
class __$$UpdateAttendanceRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateAttendanceRequestModelCopyWithImpl<$Res,
        _$UpdateAttendanceRequestModelImpl>
    implements _$$UpdateAttendanceRequestModelImplCopyWith<$Res> {
  __$$UpdateAttendanceRequestModelImplCopyWithImpl(
      _$UpdateAttendanceRequestModelImpl _value,
      $Res Function(_$UpdateAttendanceRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = freezed,
    Object? clockInAt = freezed,
    Object? clockOutAt = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$UpdateAttendanceRequestModelImpl(
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      clockInAt: freezed == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutAt: freezed == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAttendanceRequestModelImpl
    implements _UpdateAttendanceRequestModel {
  const _$UpdateAttendanceRequestModelImpl(
      {@JsonKey(name: 'shift_id') this.shiftId,
      @JsonKey(name: 'clock_in_at') this.clockInAt,
      @JsonKey(name: 'clock_out_at') this.clockOutAt,
      this.notes});

  factory _$UpdateAttendanceRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateAttendanceRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'shift_id')
  final int? shiftId;
  @override
  @JsonKey(name: 'clock_in_at')
  final String? clockInAt;
  @override
  @JsonKey(name: 'clock_out_at')
  final String? clockOutAt;
  @override
  final String? notes;

  @override
  String toString() {
    return 'UpdateAttendanceRequestModel(shiftId: $shiftId, clockInAt: $clockInAt, clockOutAt: $clockOutAt, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttendanceRequestModelImpl &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.clockInAt, clockInAt) ||
                other.clockInAt == clockInAt) &&
            (identical(other.clockOutAt, clockOutAt) ||
                other.clockOutAt == clockOutAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shiftId, clockInAt, clockOutAt, notes);

  /// Create a copy of UpdateAttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttendanceRequestModelImplCopyWith<
          _$UpdateAttendanceRequestModelImpl>
      get copyWith => __$$UpdateAttendanceRequestModelImplCopyWithImpl<
          _$UpdateAttendanceRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAttendanceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateAttendanceRequestModel
    implements UpdateAttendanceRequestModel {
  const factory _UpdateAttendanceRequestModel(
      {@JsonKey(name: 'shift_id') final int? shiftId,
      @JsonKey(name: 'clock_in_at') final String? clockInAt,
      @JsonKey(name: 'clock_out_at') final String? clockOutAt,
      final String? notes}) = _$UpdateAttendanceRequestModelImpl;

  factory _UpdateAttendanceRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateAttendanceRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'shift_id')
  int? get shiftId;
  @override
  @JsonKey(name: 'clock_in_at')
  String? get clockInAt;
  @override
  @JsonKey(name: 'clock_out_at')
  String? get clockOutAt;
  @override
  String? get notes;

  /// Create a copy of UpdateAttendanceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttendanceRequestModelImplCopyWith<
          _$UpdateAttendanceRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
