// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

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
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verify_at')
  String? get emailVerifyAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_login_at')
  String? get firstLoginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_id')
  int? get profileId => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;

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
      {String name,
      String email,
      @JsonKey(name: 'email_verify_at') String? emailVerifyAt,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin,
      @JsonKey(name: 'first_login_at') String? firstLoginAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'profile_id') int? profileId,
      String? profile});
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
    Object? name = null,
    Object? email = null,
    Object? emailVerifyAt = freezed,
    Object? tenantId = freezed,
    Object? isFirstLogin = freezed,
    Object? firstLoginAt = freezed,
    Object? deletedAt = freezed,
    Object? fcmToken = freezed,
    Object? profileId = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifyAt: freezed == emailVerifyAt
          ? _value.emailVerifyAt
          : emailVerifyAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstLoginAt: freezed == firstLoginAt
          ? _value.firstLoginAt
          : firstLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
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
      {String name,
      String email,
      @JsonKey(name: 'email_verify_at') String? emailVerifyAt,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin,
      @JsonKey(name: 'first_login_at') String? firstLoginAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'profile_id') int? profileId,
      String? profile});
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
    Object? name = null,
    Object? email = null,
    Object? emailVerifyAt = freezed,
    Object? tenantId = freezed,
    Object? isFirstLogin = freezed,
    Object? firstLoginAt = freezed,
    Object? deletedAt = freezed,
    Object? fcmToken = freezed,
    Object? profileId = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$UserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifyAt: freezed == emailVerifyAt
          ? _value.emailVerifyAt
          : emailVerifyAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstLoginAt: freezed == firstLoginAt
          ? _value.firstLoginAt
          : firstLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.name,
      required this.email,
      @JsonKey(name: 'email_verify_at') this.emailVerifyAt,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'is_first_login') this.isFirstLogin,
      @JsonKey(name: 'first_login_at') this.firstLoginAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'fcm_token') this.fcmToken,
      @JsonKey(name: 'profile_id') this.profileId,
      this.profile});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'email_verify_at')
  final String? emailVerifyAt;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'is_first_login')
  final bool? isFirstLogin;
  @override
  @JsonKey(name: 'first_login_at')
  final String? firstLoginAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @override
  @JsonKey(name: 'profile_id')
  final int? profileId;
  @override
  final String? profile;

  @override
  String toString() {
    return 'User(name: $name, email: $email, emailVerifyAt: $emailVerifyAt, tenantId: $tenantId, isFirstLogin: $isFirstLogin, firstLoginAt: $firstLoginAt, deletedAt: $deletedAt, fcmToken: $fcmToken, profileId: $profileId, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifyAt, emailVerifyAt) ||
                other.emailVerifyAt == emailVerifyAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin) &&
            (identical(other.firstLoginAt, firstLoginAt) ||
                other.firstLoginAt == firstLoginAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      emailVerifyAt,
      tenantId,
      isFirstLogin,
      firstLoginAt,
      deletedAt,
      fcmToken,
      profileId,
      profile);

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
      {required final String name,
      required final String email,
      @JsonKey(name: 'email_verify_at') final String? emailVerifyAt,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      @JsonKey(name: 'is_first_login') final bool? isFirstLogin,
      @JsonKey(name: 'first_login_at') final String? firstLoginAt,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'fcm_token') final String? fcmToken,
      @JsonKey(name: 'profile_id') final int? profileId,
      final String? profile}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'email_verify_at')
  String? get emailVerifyAt;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin;
  @override
  @JsonKey(name: 'first_login_at')
  String? get firstLoginAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  @JsonKey(name: 'profile_id')
  int? get profileId;
  @override
  String? get profile;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
