// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FCMRegistrationRequest _$FCMRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _FCMRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$FCMRegistrationRequest {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  int get platform => throw _privateConstructorUsedError;

  /// Serializes this FCMRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMRegistrationRequestCopyWith<FCMRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMRegistrationRequestCopyWith<$Res> {
  factory $FCMRegistrationRequestCopyWith(FCMRegistrationRequest value,
          $Res Function(FCMRegistrationRequest) then) =
      _$FCMRegistrationRequestCopyWithImpl<$Res, FCMRegistrationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'platform') int platform});
}

/// @nodoc
class _$FCMRegistrationRequestCopyWithImpl<$Res,
        $Val extends FCMRegistrationRequest>
    implements $FCMRegistrationRequestCopyWith<$Res> {
  _$FCMRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMRegistrationRequestImplCopyWith<$Res>
    implements $FCMRegistrationRequestCopyWith<$Res> {
  factory _$$FCMRegistrationRequestImplCopyWith(
          _$FCMRegistrationRequestImpl value,
          $Res Function(_$FCMRegistrationRequestImpl) then) =
      __$$FCMRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'platform') int platform});
}

/// @nodoc
class __$$FCMRegistrationRequestImplCopyWithImpl<$Res>
    extends _$FCMRegistrationRequestCopyWithImpl<$Res,
        _$FCMRegistrationRequestImpl>
    implements _$$FCMRegistrationRequestImplCopyWith<$Res> {
  __$$FCMRegistrationRequestImplCopyWithImpl(
      _$FCMRegistrationRequestImpl _value,
      $Res Function(_$FCMRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? platform = null,
  }) {
    return _then(_$FCMRegistrationRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMRegistrationRequestImpl implements _FCMRegistrationRequest {
  const _$FCMRegistrationRequestImpl(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'platform') required this.platform});

  factory _$FCMRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMRegistrationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'platform')
  final int platform;

  @override
  String toString() {
    return 'FCMRegistrationRequest(token: $token, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMRegistrationRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, platform);

  /// Create a copy of FCMRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMRegistrationRequestImplCopyWith<_$FCMRegistrationRequestImpl>
      get copyWith => __$$FCMRegistrationRequestImplCopyWithImpl<
          _$FCMRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _FCMRegistrationRequest implements FCMRegistrationRequest {
  const factory _FCMRegistrationRequest(
          {@JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'platform') required final int platform}) =
      _$FCMRegistrationRequestImpl;

  factory _FCMRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$FCMRegistrationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'platform')
  int get platform;

  /// Create a copy of FCMRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMRegistrationRequestImplCopyWith<_$FCMRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
