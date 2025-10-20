// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_balance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveBalanceResponse _$LeaveBalanceResponseFromJson(Map<String, dynamic> json) {
  return _LeaveBalanceResponse.fromJson(json);
}

/// @nodoc
mixin _$LeaveBalanceResponse {
  @JsonKey(name: "available_time_off")
  int? get availableTimeOff => throw _privateConstructorUsedError;
  @JsonKey(name: "time_off_used")
  int? get timeOffUsed => throw _privateConstructorUsedError;

  /// Serializes this LeaveBalanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveBalanceResponseCopyWith<LeaveBalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveBalanceResponseCopyWith<$Res> {
  factory $LeaveBalanceResponseCopyWith(LeaveBalanceResponse value,
          $Res Function(LeaveBalanceResponse) then) =
      _$LeaveBalanceResponseCopyWithImpl<$Res, LeaveBalanceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "available_time_off") int? availableTimeOff,
      @JsonKey(name: "time_off_used") int? timeOffUsed});
}

/// @nodoc
class _$LeaveBalanceResponseCopyWithImpl<$Res,
        $Val extends LeaveBalanceResponse>
    implements $LeaveBalanceResponseCopyWith<$Res> {
  _$LeaveBalanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableTimeOff = freezed,
    Object? timeOffUsed = freezed,
  }) {
    return _then(_value.copyWith(
      availableTimeOff: freezed == availableTimeOff
          ? _value.availableTimeOff
          : availableTimeOff // ignore: cast_nullable_to_non_nullable
              as int?,
      timeOffUsed: freezed == timeOffUsed
          ? _value.timeOffUsed
          : timeOffUsed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveBalanceResponseImplCopyWith<$Res>
    implements $LeaveBalanceResponseCopyWith<$Res> {
  factory _$$LeaveBalanceResponseImplCopyWith(_$LeaveBalanceResponseImpl value,
          $Res Function(_$LeaveBalanceResponseImpl) then) =
      __$$LeaveBalanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "available_time_off") int? availableTimeOff,
      @JsonKey(name: "time_off_used") int? timeOffUsed});
}

/// @nodoc
class __$$LeaveBalanceResponseImplCopyWithImpl<$Res>
    extends _$LeaveBalanceResponseCopyWithImpl<$Res, _$LeaveBalanceResponseImpl>
    implements _$$LeaveBalanceResponseImplCopyWith<$Res> {
  __$$LeaveBalanceResponseImplCopyWithImpl(_$LeaveBalanceResponseImpl _value,
      $Res Function(_$LeaveBalanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableTimeOff = freezed,
    Object? timeOffUsed = freezed,
  }) {
    return _then(_$LeaveBalanceResponseImpl(
      availableTimeOff: freezed == availableTimeOff
          ? _value.availableTimeOff
          : availableTimeOff // ignore: cast_nullable_to_non_nullable
              as int?,
      timeOffUsed: freezed == timeOffUsed
          ? _value.timeOffUsed
          : timeOffUsed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveBalanceResponseImpl implements _LeaveBalanceResponse {
  const _$LeaveBalanceResponseImpl(
      {@JsonKey(name: "available_time_off") this.availableTimeOff,
      @JsonKey(name: "time_off_used") this.timeOffUsed});

  factory _$LeaveBalanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveBalanceResponseImplFromJson(json);

  @override
  @JsonKey(name: "available_time_off")
  final int? availableTimeOff;
  @override
  @JsonKey(name: "time_off_used")
  final int? timeOffUsed;

  @override
  String toString() {
    return 'LeaveBalanceResponse(availableTimeOff: $availableTimeOff, timeOffUsed: $timeOffUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveBalanceResponseImpl &&
            (identical(other.availableTimeOff, availableTimeOff) ||
                other.availableTimeOff == availableTimeOff) &&
            (identical(other.timeOffUsed, timeOffUsed) ||
                other.timeOffUsed == timeOffUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, availableTimeOff, timeOffUsed);

  /// Create a copy of LeaveBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveBalanceResponseImplCopyWith<_$LeaveBalanceResponseImpl>
      get copyWith =>
          __$$LeaveBalanceResponseImplCopyWithImpl<_$LeaveBalanceResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveBalanceResponseImplToJson(
      this,
    );
  }
}

abstract class _LeaveBalanceResponse implements LeaveBalanceResponse {
  const factory _LeaveBalanceResponse(
          {@JsonKey(name: "available_time_off") final int? availableTimeOff,
          @JsonKey(name: "time_off_used") final int? timeOffUsed}) =
      _$LeaveBalanceResponseImpl;

  factory _LeaveBalanceResponse.fromJson(Map<String, dynamic> json) =
      _$LeaveBalanceResponseImpl.fromJson;

  @override
  @JsonKey(name: "available_time_off")
  int? get availableTimeOff;
  @override
  @JsonKey(name: "time_off_used")
  int? get timeOffUsed;

  /// Create a copy of LeaveBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveBalanceResponseImplCopyWith<_$LeaveBalanceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
