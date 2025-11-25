// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_view_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayslipRequest _$PayslipRequestFromJson(Map<String, dynamic> json) {
  return _PayslipRequest.fromJson(json);
}

/// @nodoc
mixin _$PayslipRequest {
  String get password => throw _privateConstructorUsedError;

  /// Serializes this PayslipRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayslipRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayslipRequestCopyWith<PayslipRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipRequestCopyWith<$Res> {
  factory $PayslipRequestCopyWith(
          PayslipRequest value, $Res Function(PayslipRequest) then) =
      _$PayslipRequestCopyWithImpl<$Res, PayslipRequest>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PayslipRequestCopyWithImpl<$Res, $Val extends PayslipRequest>
    implements $PayslipRequestCopyWith<$Res> {
  _$PayslipRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayslipRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayslipRequestImplCopyWith<$Res>
    implements $PayslipRequestCopyWith<$Res> {
  factory _$$PayslipRequestImplCopyWith(_$PayslipRequestImpl value,
          $Res Function(_$PayslipRequestImpl) then) =
      __$$PayslipRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PayslipRequestImplCopyWithImpl<$Res>
    extends _$PayslipRequestCopyWithImpl<$Res, _$PayslipRequestImpl>
    implements _$$PayslipRequestImplCopyWith<$Res> {
  __$$PayslipRequestImplCopyWithImpl(
      _$PayslipRequestImpl _value, $Res Function(_$PayslipRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayslipRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PayslipRequestImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipRequestImpl implements _PayslipRequest {
  const _$PayslipRequestImpl({required this.password});

  factory _$PayslipRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipRequestImplFromJson(json);

  @override
  final String password;

  @override
  String toString() {
    return 'PayslipRequest(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipRequestImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of PayslipRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipRequestImplCopyWith<_$PayslipRequestImpl> get copyWith =>
      __$$PayslipRequestImplCopyWithImpl<_$PayslipRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipRequestImplToJson(
      this,
    );
  }
}

abstract class _PayslipRequest implements PayslipRequest {
  const factory _PayslipRequest({required final String password}) =
      _$PayslipRequestImpl;

  factory _PayslipRequest.fromJson(Map<String, dynamic> json) =
      _$PayslipRequestImpl.fromJson;

  @override
  String get password;

  /// Create a copy of PayslipRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipRequestImplCopyWith<_$PayslipRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
