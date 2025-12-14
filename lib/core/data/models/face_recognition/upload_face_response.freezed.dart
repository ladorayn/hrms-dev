// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_face_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadFace _$UploadFaceFromJson(Map<String, dynamic> json) {
  return _UploadFace.fromJson(json);
}

/// @nodoc
mixin _$UploadFace {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_path')
  String get photoPath => throw _privateConstructorUsedError;

  /// Serializes this UploadFace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadFace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFaceCopyWith<UploadFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFaceCopyWith<$Res> {
  factory $UploadFaceCopyWith(
          UploadFace value, $Res Function(UploadFace) then) =
      _$UploadFaceCopyWithImpl<$Res, UploadFace>;
  @useResult
  $Res call({String message, @JsonKey(name: 'photo_path') String photoPath});
}

/// @nodoc
class _$UploadFaceCopyWithImpl<$Res, $Val extends UploadFace>
    implements $UploadFaceCopyWith<$Res> {
  _$UploadFaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? photoPath = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFaceImplCopyWith<$Res>
    implements $UploadFaceCopyWith<$Res> {
  factory _$$UploadFaceImplCopyWith(
          _$UploadFaceImpl value, $Res Function(_$UploadFaceImpl) then) =
      __$$UploadFaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, @JsonKey(name: 'photo_path') String photoPath});
}

/// @nodoc
class __$$UploadFaceImplCopyWithImpl<$Res>
    extends _$UploadFaceCopyWithImpl<$Res, _$UploadFaceImpl>
    implements _$$UploadFaceImplCopyWith<$Res> {
  __$$UploadFaceImplCopyWithImpl(
      _$UploadFaceImpl _value, $Res Function(_$UploadFaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadFace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? photoPath = null,
  }) {
    return _then(_$UploadFaceImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFaceImpl implements _UploadFace {
  const _$UploadFaceImpl(
      {required this.message,
      @JsonKey(name: 'photo_path') required this.photoPath});

  factory _$UploadFaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFaceImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(name: 'photo_path')
  final String photoPath;

  @override
  String toString() {
    return 'UploadFace(message: $message, photoPath: $photoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFaceImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, photoPath);

  /// Create a copy of UploadFace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFaceImplCopyWith<_$UploadFaceImpl> get copyWith =>
      __$$UploadFaceImplCopyWithImpl<_$UploadFaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFaceImplToJson(
      this,
    );
  }
}

abstract class _UploadFace implements UploadFace {
  const factory _UploadFace(
          {required final String message,
          @JsonKey(name: 'photo_path') required final String photoPath}) =
      _$UploadFaceImpl;

  factory _UploadFace.fromJson(Map<String, dynamic> json) =
      _$UploadFaceImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'photo_path')
  String get photoPath;

  /// Create a copy of UploadFace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFaceImplCopyWith<_$UploadFaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
