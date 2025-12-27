// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_value_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackingValueRequest _$TrackingValueRequestFromJson(Map<String, dynamic> json) {
  return _TrackingValueRequest.fromJson(json);
}

/// @nodoc
mixin _$TrackingValueRequest {
  @JsonKey(name: 'key_result_id')
  int? get keyResultId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracking_period_id')
  int? get trackingPeriodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_value')
  int? get actualValue => throw _privateConstructorUsedError;

  /// Serializes this TrackingValueRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackingValueRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingValueRequestCopyWith<TrackingValueRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingValueRequestCopyWith<$Res> {
  factory $TrackingValueRequestCopyWith(TrackingValueRequest value,
          $Res Function(TrackingValueRequest) then) =
      _$TrackingValueRequestCopyWithImpl<$Res, TrackingValueRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key_result_id') int? keyResultId,
      @JsonKey(name: 'tracking_period_id') int? trackingPeriodId,
      @JsonKey(name: 'actual_value') int? actualValue});
}

/// @nodoc
class _$TrackingValueRequestCopyWithImpl<$Res,
        $Val extends TrackingValueRequest>
    implements $TrackingValueRequestCopyWith<$Res> {
  _$TrackingValueRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingValueRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyResultId = freezed,
    Object? trackingPeriodId = freezed,
    Object? actualValue = freezed,
  }) {
    return _then(_value.copyWith(
      keyResultId: freezed == keyResultId
          ? _value.keyResultId
          : keyResultId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingPeriodId: freezed == trackingPeriodId
          ? _value.trackingPeriodId
          : trackingPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingValueRequestImplCopyWith<$Res>
    implements $TrackingValueRequestCopyWith<$Res> {
  factory _$$TrackingValueRequestImplCopyWith(_$TrackingValueRequestImpl value,
          $Res Function(_$TrackingValueRequestImpl) then) =
      __$$TrackingValueRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key_result_id') int? keyResultId,
      @JsonKey(name: 'tracking_period_id') int? trackingPeriodId,
      @JsonKey(name: 'actual_value') int? actualValue});
}

/// @nodoc
class __$$TrackingValueRequestImplCopyWithImpl<$Res>
    extends _$TrackingValueRequestCopyWithImpl<$Res, _$TrackingValueRequestImpl>
    implements _$$TrackingValueRequestImplCopyWith<$Res> {
  __$$TrackingValueRequestImplCopyWithImpl(_$TrackingValueRequestImpl _value,
      $Res Function(_$TrackingValueRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingValueRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyResultId = freezed,
    Object? trackingPeriodId = freezed,
    Object? actualValue = freezed,
  }) {
    return _then(_$TrackingValueRequestImpl(
      keyResultId: freezed == keyResultId
          ? _value.keyResultId
          : keyResultId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingPeriodId: freezed == trackingPeriodId
          ? _value.trackingPeriodId
          : trackingPeriodId // ignore: cast_nullable_to_non_nullable
              as int?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingValueRequestImpl implements _TrackingValueRequest {
  const _$TrackingValueRequestImpl(
      {@JsonKey(name: 'key_result_id') this.keyResultId,
      @JsonKey(name: 'tracking_period_id') this.trackingPeriodId,
      @JsonKey(name: 'actual_value') this.actualValue});

  factory _$TrackingValueRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingValueRequestImplFromJson(json);

  @override
  @JsonKey(name: 'key_result_id')
  final int? keyResultId;
  @override
  @JsonKey(name: 'tracking_period_id')
  final int? trackingPeriodId;
  @override
  @JsonKey(name: 'actual_value')
  final int? actualValue;

  @override
  String toString() {
    return 'TrackingValueRequest(keyResultId: $keyResultId, trackingPeriodId: $trackingPeriodId, actualValue: $actualValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingValueRequestImpl &&
            (identical(other.keyResultId, keyResultId) ||
                other.keyResultId == keyResultId) &&
            (identical(other.trackingPeriodId, trackingPeriodId) ||
                other.trackingPeriodId == trackingPeriodId) &&
            (identical(other.actualValue, actualValue) ||
                other.actualValue == actualValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyResultId, trackingPeriodId, actualValue);

  /// Create a copy of TrackingValueRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingValueRequestImplCopyWith<_$TrackingValueRequestImpl>
      get copyWith =>
          __$$TrackingValueRequestImplCopyWithImpl<_$TrackingValueRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingValueRequestImplToJson(
      this,
    );
  }
}

abstract class _TrackingValueRequest implements TrackingValueRequest {
  const factory _TrackingValueRequest(
          {@JsonKey(name: 'key_result_id') final int? keyResultId,
          @JsonKey(name: 'tracking_period_id') final int? trackingPeriodId,
          @JsonKey(name: 'actual_value') final int? actualValue}) =
      _$TrackingValueRequestImpl;

  factory _TrackingValueRequest.fromJson(Map<String, dynamic> json) =
      _$TrackingValueRequestImpl.fromJson;

  @override
  @JsonKey(name: 'key_result_id')
  int? get keyResultId;
  @override
  @JsonKey(name: 'tracking_period_id')
  int? get trackingPeriodId;
  @override
  @JsonKey(name: 'actual_value')
  int? get actualValue;

  /// Create a copy of TrackingValueRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingValueRequestImplCopyWith<_$TrackingValueRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
