// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_location_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateLocationRequestModel _$ValidateLocationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateLocationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateLocationRequestModel {
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;

  /// Serializes this ValidateLocationRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateLocationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateLocationRequestModelCopyWith<ValidateLocationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateLocationRequestModelCopyWith<$Res> {
  factory $ValidateLocationRequestModelCopyWith(
          ValidateLocationRequestModel value,
          $Res Function(ValidateLocationRequestModel) then) =
      _$ValidateLocationRequestModelCopyWithImpl<$Res,
          ValidateLocationRequestModel>;
  @useResult
  $Res call(
      {String latitude,
      String longitude,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class _$ValidateLocationRequestModelCopyWithImpl<$Res,
        $Val extends ValidateLocationRequestModel>
    implements $ValidateLocationRequestModelCopyWith<$Res> {
  _$ValidateLocationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateLocationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? branchId = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateLocationRequestModelImplCopyWith<$Res>
    implements $ValidateLocationRequestModelCopyWith<$Res> {
  factory _$$ValidateLocationRequestModelImplCopyWith(
          _$ValidateLocationRequestModelImpl value,
          $Res Function(_$ValidateLocationRequestModelImpl) then) =
      __$$ValidateLocationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String latitude,
      String longitude,
      @JsonKey(name: 'branch_id') int? branchId});
}

/// @nodoc
class __$$ValidateLocationRequestModelImplCopyWithImpl<$Res>
    extends _$ValidateLocationRequestModelCopyWithImpl<$Res,
        _$ValidateLocationRequestModelImpl>
    implements _$$ValidateLocationRequestModelImplCopyWith<$Res> {
  __$$ValidateLocationRequestModelImplCopyWithImpl(
      _$ValidateLocationRequestModelImpl _value,
      $Res Function(_$ValidateLocationRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateLocationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? branchId = freezed,
  }) {
    return _then(_$ValidateLocationRequestModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateLocationRequestModelImpl
    implements _ValidateLocationRequestModel {
  const _$ValidateLocationRequestModelImpl(
      {required this.latitude,
      required this.longitude,
      @JsonKey(name: 'branch_id') this.branchId});

  factory _$ValidateLocationRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidateLocationRequestModelImplFromJson(json);

  @override
  final String latitude;
  @override
  final String longitude;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;

  @override
  String toString() {
    return 'ValidateLocationRequestModel(latitude: $latitude, longitude: $longitude, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLocationRequestModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, branchId);

  /// Create a copy of ValidateLocationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLocationRequestModelImplCopyWith<
          _$ValidateLocationRequestModelImpl>
      get copyWith => __$$ValidateLocationRequestModelImplCopyWithImpl<
          _$ValidateLocationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateLocationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateLocationRequestModel
    implements ValidateLocationRequestModel {
  const factory _ValidateLocationRequestModel(
          {required final String latitude,
          required final String longitude,
          @JsonKey(name: 'branch_id') final int? branchId}) =
      _$ValidateLocationRequestModelImpl;

  factory _ValidateLocationRequestModel.fromJson(Map<String, dynamic> json) =
      _$ValidateLocationRequestModelImpl.fromJson;

  @override
  String get latitude;
  @override
  String get longitude;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;

  /// Create a copy of ValidateLocationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateLocationRequestModelImplCopyWith<
          _$ValidateLocationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
