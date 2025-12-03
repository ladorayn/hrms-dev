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

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_login_at')
  String? get firstLoginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile')
  EmployeeProfile? get employeeProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'faces')
  List<FaceData>? get faces => throw _privateConstructorUsedError;
  Employment? get employment => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_id') int? employeeId,
      String? code,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      String name,
      String email,
      List<String>? roles,
      @JsonKey(name: 'first_login_at') String? firstLoginAt,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin,
      @JsonKey(name: 'employee_profile') EmployeeProfile? employeeProfile,
      @JsonKey(name: 'faces') List<FaceData>? faces,
      Employment? employment});

  $EmployeeProfileCopyWith<$Res>? get employeeProfile;
  $EmploymentCopyWith<$Res>? get employment;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = freezed,
    Object? code = freezed,
    Object? photoProfileUrl = freezed,
    Object? name = null,
    Object? email = null,
    Object? roles = freezed,
    Object? firstLoginAt = freezed,
    Object? isFirstLogin = freezed,
    Object? employeeProfile = freezed,
    Object? faces = freezed,
    Object? employment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      firstLoginAt: freezed == firstLoginAt
          ? _value.firstLoginAt
          : firstLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      employeeProfile: freezed == employeeProfile
          ? _value.employeeProfile
          : employeeProfile // ignore: cast_nullable_to_non_nullable
              as EmployeeProfile?,
      faces: freezed == faces
          ? _value.faces
          : faces // ignore: cast_nullable_to_non_nullable
              as List<FaceData>?,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
    ) as $Val);
  }

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeProfileCopyWith<$Res>? get employeeProfile {
    if (_value.employeeProfile == null) {
      return null;
    }

    return $EmployeeProfileCopyWith<$Res>(_value.employeeProfile!, (value) {
      return _then(_value.copyWith(employeeProfile: value) as $Val);
    });
  }

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmploymentCopyWith<$Res>? get employment {
    if (_value.employment == null) {
      return null;
    }

    return $EmploymentCopyWith<$Res>(_value.employment!, (value) {
      return _then(_value.copyWith(employment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseImplCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$UserProfileResponseImplCopyWith(_$UserProfileResponseImpl value,
          $Res Function(_$UserProfileResponseImpl) then) =
      __$$UserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_id') int? employeeId,
      String? code,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      String name,
      String email,
      List<String>? roles,
      @JsonKey(name: 'first_login_at') String? firstLoginAt,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin,
      @JsonKey(name: 'employee_profile') EmployeeProfile? employeeProfile,
      @JsonKey(name: 'faces') List<FaceData>? faces,
      Employment? employment});

  @override
  $EmployeeProfileCopyWith<$Res>? get employeeProfile;
  @override
  $EmploymentCopyWith<$Res>? get employment;
}

/// @nodoc
class __$$UserProfileResponseImplCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$UserProfileResponseImpl>
    implements _$$UserProfileResponseImplCopyWith<$Res> {
  __$$UserProfileResponseImplCopyWithImpl(_$UserProfileResponseImpl _value,
      $Res Function(_$UserProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = freezed,
    Object? code = freezed,
    Object? photoProfileUrl = freezed,
    Object? name = null,
    Object? email = null,
    Object? roles = freezed,
    Object? firstLoginAt = freezed,
    Object? isFirstLogin = freezed,
    Object? employeeProfile = freezed,
    Object? faces = freezed,
    Object? employment = freezed,
  }) {
    return _then(_$UserProfileResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      firstLoginAt: freezed == firstLoginAt
          ? _value.firstLoginAt
          : firstLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      employeeProfile: freezed == employeeProfile
          ? _value.employeeProfile
          : employeeProfile // ignore: cast_nullable_to_non_nullable
              as EmployeeProfile?,
      faces: freezed == faces
          ? _value._faces
          : faces // ignore: cast_nullable_to_non_nullable
              as List<FaceData>?,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseImpl implements _UserProfileResponse {
  const _$UserProfileResponseImpl(
      {required this.id,
      @JsonKey(name: 'employee_id') this.employeeId,
      this.code,
      @JsonKey(name: 'photo_profile_url') this.photoProfileUrl,
      required this.name,
      required this.email,
      final List<String>? roles,
      @JsonKey(name: 'first_login_at') this.firstLoginAt,
      @JsonKey(name: 'is_first_login') this.isFirstLogin,
      @JsonKey(name: 'employee_profile') this.employeeProfile,
      @JsonKey(name: 'faces') final List<FaceData>? faces,
      this.employment})
      : _roles = roles,
        _faces = faces;

  factory _$UserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  final String? code;
  @override
  @JsonKey(name: 'photo_profile_url')
  final String? photoProfileUrl;
  @override
  final String name;
  @override
  final String email;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_login_at')
  final String? firstLoginAt;
  @override
  @JsonKey(name: 'is_first_login')
  final bool? isFirstLogin;
  @override
  @JsonKey(name: 'employee_profile')
  final EmployeeProfile? employeeProfile;
  final List<FaceData>? _faces;
  @override
  @JsonKey(name: 'faces')
  List<FaceData>? get faces {
    final value = _faces;
    if (value == null) return null;
    if (_faces is EqualUnmodifiableListView) return _faces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Employment? employment;

  @override
  String toString() {
    return 'UserProfileResponse(id: $id, employeeId: $employeeId, code: $code, photoProfileUrl: $photoProfileUrl, name: $name, email: $email, roles: $roles, firstLoginAt: $firstLoginAt, isFirstLogin: $isFirstLogin, employeeProfile: $employeeProfile, faces: $faces, employment: $employment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.photoProfileUrl, photoProfileUrl) ||
                other.photoProfileUrl == photoProfileUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.firstLoginAt, firstLoginAt) ||
                other.firstLoginAt == firstLoginAt) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin) &&
            (identical(other.employeeProfile, employeeProfile) ||
                other.employeeProfile == employeeProfile) &&
            const DeepCollectionEquality().equals(other._faces, _faces) &&
            (identical(other.employment, employment) ||
                other.employment == employment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeId,
      code,
      photoProfileUrl,
      name,
      email,
      const DeepCollectionEquality().hash(_roles),
      firstLoginAt,
      isFirstLogin,
      employeeProfile,
      const DeepCollectionEquality().hash(_faces),
      employment);

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      __$$UserProfileResponseImplCopyWithImpl<_$UserProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse implements UserProfileResponse {
  const factory _UserProfileResponse(
      {required final int id,
      @JsonKey(name: 'employee_id') final int? employeeId,
      final String? code,
      @JsonKey(name: 'photo_profile_url') final String? photoProfileUrl,
      required final String name,
      required final String email,
      final List<String>? roles,
      @JsonKey(name: 'first_login_at') final String? firstLoginAt,
      @JsonKey(name: 'is_first_login') final bool? isFirstLogin,
      @JsonKey(name: 'employee_profile') final EmployeeProfile? employeeProfile,
      @JsonKey(name: 'faces') final List<FaceData>? faces,
      final Employment? employment}) = _$UserProfileResponseImpl;

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  String? get code;
  @override
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl;
  @override
  String get name;
  @override
  String get email;
  @override
  List<String>? get roles;
  @override
  @JsonKey(name: 'first_login_at')
  String? get firstLoginAt;
  @override
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin;
  @override
  @JsonKey(name: 'employee_profile')
  EmployeeProfile? get employeeProfile;
  @override
  @JsonKey(name: 'faces')
  List<FaceData>? get faces;
  @override
  Employment? get employment;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
