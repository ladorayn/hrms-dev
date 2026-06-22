// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_out_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClockOutRequestModel _$ClockOutRequestModelFromJson(Map<String, dynamic> json) {
  return _ClockOutRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ClockOutRequestModel {
  @JsonKey(name: 'clock_out_at')
  String get clockOutAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;

  /// Serializes this ClockOutRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClockOutRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClockOutRequestModelCopyWith<ClockOutRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockOutRequestModelCopyWith<$Res> {
  factory $ClockOutRequestModelCopyWith(ClockOutRequestModel value,
          $Res Function(ClockOutRequestModel) then) =
      _$ClockOutRequestModelCopyWithImpl<$Res, ClockOutRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'clock_out_at') String clockOutAt,
      String? notes,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class _$ClockOutRequestModelCopyWithImpl<$Res,
        $Val extends ClockOutRequestModel>
    implements $ClockOutRequestModelCopyWith<$Res> {
  _$ClockOutRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClockOutRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clockOutAt = null,
    Object? notes = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_value.copyWith(
      clockOutAt: null == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ClockOutRequestModelImplCopyWith<$Res>
    implements $ClockOutRequestModelCopyWith<$Res> {
  factory _$$ClockOutRequestModelImplCopyWith(_$ClockOutRequestModelImpl value,
          $Res Function(_$ClockOutRequestModelImpl) then) =
      __$$ClockOutRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'clock_out_at') String clockOutAt,
      String? notes,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class __$$ClockOutRequestModelImplCopyWithImpl<$Res>
    extends _$ClockOutRequestModelCopyWithImpl<$Res, _$ClockOutRequestModelImpl>
    implements _$$ClockOutRequestModelImplCopyWith<$Res> {
  __$$ClockOutRequestModelImplCopyWithImpl(_$ClockOutRequestModelImpl _value,
      $Res Function(_$ClockOutRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClockOutRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clockOutAt = null,
    Object? notes = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_$ClockOutRequestModelImpl(
      clockOutAt: null == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ClockOutRequestModelImpl implements _ClockOutRequestModel {
  const _$ClockOutRequestModelImpl(
      {@JsonKey(name: 'clock_out_at') required this.clockOutAt,
      this.notes,
      @JsonKey(name: 'branch_id') this.branchId});

  factory _$ClockOutRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClockOutRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'clock_out_at')
  final String clockOutAt;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;

  @override
  String toString() {
    return 'ClockOutRequestModel(clockOutAt: $clockOutAt, notes: $notes, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockOutRequestModelImpl &&
            (identical(other.clockOutAt, clockOutAt) ||
                other.clockOutAt == clockOutAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clockOutAt, notes, branchId);

  /// Create a copy of ClockOutRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockOutRequestModelImplCopyWith<_$ClockOutRequestModelImpl>
      get copyWith =>
          __$$ClockOutRequestModelImplCopyWithImpl<_$ClockOutRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClockOutRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ClockOutRequestModel implements ClockOutRequestModel {
  const factory _ClockOutRequestModel(
          {@JsonKey(name: 'clock_out_at') required final String clockOutAt,
          final String? notes,
          @JsonKey(name: 'branch_id') final int? branchId}) =
      _$ClockOutRequestModelImpl;

  factory _ClockOutRequestModel.fromJson(Map<String, dynamic> json) =
      _$ClockOutRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'clock_out_at')
  String get clockOutAt;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;

  /// Create a copy of ClockOutRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClockOutRequestModelImplCopyWith<_$ClockOutRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
