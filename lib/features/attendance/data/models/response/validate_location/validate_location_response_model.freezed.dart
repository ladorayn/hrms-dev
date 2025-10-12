// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_location_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateLocationResponseModel _$ValidateLocationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateLocationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateLocationResponseModel {
  @JsonKey(name: 'is_valid')
  bool? get isValid => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_radius')
  int? get maxRadius => throw _privateConstructorUsedError;

  /// Serializes this ValidateLocationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateLocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateLocationResponseModelCopyWith<ValidateLocationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateLocationResponseModelCopyWith<$Res> {
  factory $ValidateLocationResponseModelCopyWith(
          ValidateLocationResponseModel value,
          $Res Function(ValidateLocationResponseModel) then) =
      _$ValidateLocationResponseModelCopyWithImpl<$Res,
          ValidateLocationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_valid') bool? isValid,
      double? distance,
      @JsonKey(name: 'max_radius') int? maxRadius});
}

/// @nodoc
class _$ValidateLocationResponseModelCopyWithImpl<$Res,
        $Val extends ValidateLocationResponseModel>
    implements $ValidateLocationResponseModelCopyWith<$Res> {
  _$ValidateLocationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateLocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? distance = freezed,
    Object? maxRadius = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRadius: freezed == maxRadius
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateLocationResponseModelImplCopyWith<$Res>
    implements $ValidateLocationResponseModelCopyWith<$Res> {
  factory _$$ValidateLocationResponseModelImplCopyWith(
          _$ValidateLocationResponseModelImpl value,
          $Res Function(_$ValidateLocationResponseModelImpl) then) =
      __$$ValidateLocationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_valid') bool? isValid,
      double? distance,
      @JsonKey(name: 'max_radius') int? maxRadius});
}

/// @nodoc
class __$$ValidateLocationResponseModelImplCopyWithImpl<$Res>
    extends _$ValidateLocationResponseModelCopyWithImpl<$Res,
        _$ValidateLocationResponseModelImpl>
    implements _$$ValidateLocationResponseModelImplCopyWith<$Res> {
  __$$ValidateLocationResponseModelImplCopyWithImpl(
      _$ValidateLocationResponseModelImpl _value,
      $Res Function(_$ValidateLocationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateLocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? distance = freezed,
    Object? maxRadius = freezed,
  }) {
    return _then(_$ValidateLocationResponseModelImpl(
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRadius: freezed == maxRadius
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateLocationResponseModelImpl
    implements _ValidateLocationResponseModel {
  const _$ValidateLocationResponseModelImpl(
      {@JsonKey(name: 'is_valid') this.isValid,
      this.distance,
      @JsonKey(name: 'max_radius') this.maxRadius});

  factory _$ValidateLocationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidateLocationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'is_valid')
  final bool? isValid;
  @override
  final double? distance;
  @override
  @JsonKey(name: 'max_radius')
  final int? maxRadius;

  @override
  String toString() {
    return 'ValidateLocationResponseModel(isValid: $isValid, distance: $distance, maxRadius: $maxRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLocationResponseModelImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.maxRadius, maxRadius) ||
                other.maxRadius == maxRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isValid, distance, maxRadius);

  /// Create a copy of ValidateLocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLocationResponseModelImplCopyWith<
          _$ValidateLocationResponseModelImpl>
      get copyWith => __$$ValidateLocationResponseModelImplCopyWithImpl<
          _$ValidateLocationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateLocationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateLocationResponseModel
    implements ValidateLocationResponseModel {
  const factory _ValidateLocationResponseModel(
          {@JsonKey(name: 'is_valid') final bool? isValid,
          final double? distance,
          @JsonKey(name: 'max_radius') final int? maxRadius}) =
      _$ValidateLocationResponseModelImpl;

  factory _ValidateLocationResponseModel.fromJson(Map<String, dynamic> json) =
      _$ValidateLocationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'is_valid')
  bool? get isValid;
  @override
  double? get distance;
  @override
  @JsonKey(name: 'max_radius')
  int? get maxRadius;

  /// Create a copy of ValidateLocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateLocationResponseModelImplCopyWith<
          _$ValidateLocationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
