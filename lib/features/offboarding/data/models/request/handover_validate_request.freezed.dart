// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_validate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HandoverValidateRequest _$HandoverValidateRequestFromJson(
    Map<String, dynamic> json) {
  return _HandoverValidateRequest.fromJson(json);
}

/// @nodoc
mixin _$HandoverValidateRequest {
  @JsonKey(name: 'handover_asset_id')
  int get handoverAssetId => throw _privateConstructorUsedError;

  /// Serializes this HandoverValidateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HandoverValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HandoverValidateRequestCopyWith<HandoverValidateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandoverValidateRequestCopyWith<$Res> {
  factory $HandoverValidateRequestCopyWith(HandoverValidateRequest value,
          $Res Function(HandoverValidateRequest) then) =
      _$HandoverValidateRequestCopyWithImpl<$Res, HandoverValidateRequest>;
  @useResult
  $Res call({@JsonKey(name: 'handover_asset_id') int handoverAssetId});
}

/// @nodoc
class _$HandoverValidateRequestCopyWithImpl<$Res,
        $Val extends HandoverValidateRequest>
    implements $HandoverValidateRequestCopyWith<$Res> {
  _$HandoverValidateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HandoverValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handoverAssetId = null,
  }) {
    return _then(_value.copyWith(
      handoverAssetId: null == handoverAssetId
          ? _value.handoverAssetId
          : handoverAssetId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandoverValidateRequestImplCopyWith<$Res>
    implements $HandoverValidateRequestCopyWith<$Res> {
  factory _$$HandoverValidateRequestImplCopyWith(
          _$HandoverValidateRequestImpl value,
          $Res Function(_$HandoverValidateRequestImpl) then) =
      __$$HandoverValidateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'handover_asset_id') int handoverAssetId});
}

/// @nodoc
class __$$HandoverValidateRequestImplCopyWithImpl<$Res>
    extends _$HandoverValidateRequestCopyWithImpl<$Res,
        _$HandoverValidateRequestImpl>
    implements _$$HandoverValidateRequestImplCopyWith<$Res> {
  __$$HandoverValidateRequestImplCopyWithImpl(
      _$HandoverValidateRequestImpl _value,
      $Res Function(_$HandoverValidateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of HandoverValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handoverAssetId = null,
  }) {
    return _then(_$HandoverValidateRequestImpl(
      handoverAssetId: null == handoverAssetId
          ? _value.handoverAssetId
          : handoverAssetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HandoverValidateRequestImpl implements _HandoverValidateRequest {
  const _$HandoverValidateRequestImpl(
      {@JsonKey(name: 'handover_asset_id') required this.handoverAssetId});

  factory _$HandoverValidateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HandoverValidateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'handover_asset_id')
  final int handoverAssetId;

  @override
  String toString() {
    return 'HandoverValidateRequest(handoverAssetId: $handoverAssetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandoverValidateRequestImpl &&
            (identical(other.handoverAssetId, handoverAssetId) ||
                other.handoverAssetId == handoverAssetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, handoverAssetId);

  /// Create a copy of HandoverValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandoverValidateRequestImplCopyWith<_$HandoverValidateRequestImpl>
      get copyWith => __$$HandoverValidateRequestImplCopyWithImpl<
          _$HandoverValidateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HandoverValidateRequestImplToJson(
      this,
    );
  }
}

abstract class _HandoverValidateRequest implements HandoverValidateRequest {
  const factory _HandoverValidateRequest(
      {@JsonKey(name: 'handover_asset_id')
      required final int handoverAssetId}) = _$HandoverValidateRequestImpl;

  factory _HandoverValidateRequest.fromJson(Map<String, dynamic> json) =
      _$HandoverValidateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'handover_asset_id')
  int get handoverAssetId;

  /// Create a copy of HandoverValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandoverValidateRequestImplCopyWith<_$HandoverValidateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
