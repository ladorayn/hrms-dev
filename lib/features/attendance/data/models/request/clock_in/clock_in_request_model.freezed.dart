// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_in_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClockInRequestModel _$ClockInRequestModelFromJson(Map<String, dynamic> json) {
  return _ClockInRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ClockInRequestModel {
  @JsonKey(name: 'shift_id')
  int get shiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_in_at')
  String get clockInAt => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;

  /// Serializes this ClockInRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClockInRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClockInRequestModelCopyWith<ClockInRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockInRequestModelCopyWith<$Res> {
  factory $ClockInRequestModelCopyWith(
          ClockInRequestModel value, $Res Function(ClockInRequestModel) then) =
      _$ClockInRequestModelCopyWithImpl<$Res, ClockInRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int shiftId,
      @JsonKey(name: 'clock_in_at') String clockInAt,
      double latitude,
      double longitude,
      String? notes,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class _$ClockInRequestModelCopyWithImpl<$Res, $Val extends ClockInRequestModel>
    implements $ClockInRequestModelCopyWith<$Res> {
  _$ClockInRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClockInRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = null,
    Object? clockInAt = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? notes = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_value.copyWith(
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      clockInAt: null == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClockInRequestModelImplCopyWith<$Res>
    implements $ClockInRequestModelCopyWith<$Res> {
  factory _$$ClockInRequestModelImplCopyWith(_$ClockInRequestModelImpl value,
          $Res Function(_$ClockInRequestModelImpl) then) =
      __$$ClockInRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'shift_id') int shiftId,
      @JsonKey(name: 'clock_in_at') String clockInAt,
      double latitude,
      double longitude,
      String? notes,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class __$$ClockInRequestModelImplCopyWithImpl<$Res>
    extends _$ClockInRequestModelCopyWithImpl<$Res, _$ClockInRequestModelImpl>
    implements _$$ClockInRequestModelImplCopyWith<$Res> {
  __$$ClockInRequestModelImplCopyWithImpl(_$ClockInRequestModelImpl _value,
      $Res Function(_$ClockInRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClockInRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = null,
    Object? clockInAt = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? notes = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_$ClockInRequestModelImpl(
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      clockInAt: null == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClockInRequestModelImpl implements _ClockInRequestModel {
  const _$ClockInRequestModelImpl(
      {@JsonKey(name: 'shift_id') required this.shiftId,
      @JsonKey(name: 'clock_in_at') required this.clockInAt,
      required this.latitude,
      required this.longitude,
      this.notes,
      @JsonKey(name: 'branch_id') this.branchId});

  factory _$ClockInRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClockInRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'shift_id')
  final int shiftId;
  @override
  @JsonKey(name: 'clock_in_at')
  final String clockInAt;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;

  @override
  String toString() {
    return 'ClockInRequestModel(shiftId: $shiftId, clockInAt: $clockInAt, latitude: $latitude, longitude: $longitude, notes: $notes, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockInRequestModelImpl &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.clockInAt, clockInAt) ||
                other.clockInAt == clockInAt) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, shiftId, clockInAt, latitude, longitude, notes, branchId);

  /// Create a copy of ClockInRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockInRequestModelImplCopyWith<_$ClockInRequestModelImpl> get copyWith =>
      __$$ClockInRequestModelImplCopyWithImpl<_$ClockInRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClockInRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ClockInRequestModel implements ClockInRequestModel {
  const factory _ClockInRequestModel(
          {@JsonKey(name: 'shift_id') required final int shiftId,
          @JsonKey(name: 'clock_in_at') required final String clockInAt,
          required final double latitude,
          required final double longitude,
          final String? notes,
          @JsonKey(name: 'branch_id') final int? branchId}) =
      _$ClockInRequestModelImpl;

  factory _ClockInRequestModel.fromJson(Map<String, dynamic> json) =
      _$ClockInRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'shift_id')
  int get shiftId;
  @override
  @JsonKey(name: 'clock_in_at')
  String get clockInAt;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;

  /// Create a copy of ClockInRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClockInRequestModelImplCopyWith<_$ClockInRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
