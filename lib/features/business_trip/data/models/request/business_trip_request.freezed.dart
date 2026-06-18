// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_trip_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessTripRequest _$BusinessTripRequestFromJson(Map<String, dynamic> json) {
  return _BusinessTripRequest.fromJson(json);
}

/// @nodoc
mixin _$BusinessTripRequest {
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this BusinessTripRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTripRequestCopyWith<BusinessTripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTripRequestCopyWith<$Res> {
  factory $BusinessTripRequestCopyWith(
          BusinessTripRequest value, $Res Function(BusinessTripRequest) then) =
      _$BusinessTripRequestCopyWithImpl<$Res, BusinessTripRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String destination,
      String reason});
}

/// @nodoc
class _$BusinessTripRequestCopyWithImpl<$Res, $Val extends BusinessTripRequest>
    implements $BusinessTripRequestCopyWith<$Res> {
  _$BusinessTripRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? destination = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTripRequestImplCopyWith<$Res>
    implements $BusinessTripRequestCopyWith<$Res> {
  factory _$$BusinessTripRequestImplCopyWith(_$BusinessTripRequestImpl value,
          $Res Function(_$BusinessTripRequestImpl) then) =
      __$$BusinessTripRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String destination,
      String reason});
}

/// @nodoc
class __$$BusinessTripRequestImplCopyWithImpl<$Res>
    extends _$BusinessTripRequestCopyWithImpl<$Res, _$BusinessTripRequestImpl>
    implements _$$BusinessTripRequestImplCopyWith<$Res> {
  __$$BusinessTripRequestImplCopyWithImpl(_$BusinessTripRequestImpl _value,
      $Res Function(_$BusinessTripRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? destination = null,
    Object? reason = null,
  }) {
    return _then(_$BusinessTripRequestImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTripRequestImpl implements _BusinessTripRequest {
  const _$BusinessTripRequestImpl(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.destination,
      required this.reason});

  factory _$BusinessTripRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTripRequestImplFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final String destination;
  @override
  final String reason;

  @override
  String toString() {
    return 'BusinessTripRequest(startDate: $startDate, endDate: $endDate, destination: $destination, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTripRequestImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, destination, reason);

  /// Create a copy of BusinessTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTripRequestImplCopyWith<_$BusinessTripRequestImpl> get copyWith =>
      __$$BusinessTripRequestImplCopyWithImpl<_$BusinessTripRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTripRequestImplToJson(
      this,
    );
  }
}

abstract class _BusinessTripRequest implements BusinessTripRequest {
  const factory _BusinessTripRequest(
      {@JsonKey(name: 'start_date') required final String startDate,
      @JsonKey(name: 'end_date') required final String endDate,
      required final String destination,
      required final String reason}) = _$BusinessTripRequestImpl;

  factory _BusinessTripRequest.fromJson(Map<String, dynamic> json) =
      _$BusinessTripRequestImpl.fromJson;

  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  String get destination;
  @override
  String get reason;

  /// Create a copy of BusinessTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTripRequestImplCopyWith<_$BusinessTripRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
