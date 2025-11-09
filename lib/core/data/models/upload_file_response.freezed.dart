// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadFile _$UploadFileFromJson(Map<String, dynamic> json) {
  return _UploadFile.fromJson(json);
}

/// @nodoc
mixin _$UploadFile {
  String get path => throw _privateConstructorUsedError;
  String get disk => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String get mimeType => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this UploadFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileCopyWith<UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileCopyWith<$Res> {
  factory $UploadFileCopyWith(
          UploadFile value, $Res Function(UploadFile) then) =
      _$UploadFileCopyWithImpl<$Res, UploadFile>;
  @useResult
  $Res call(
      {String path,
      String disk,
      String filename,
      @JsonKey(name: 'mime_type') String mimeType,
      int size,
      String url});
}

/// @nodoc
class _$UploadFileCopyWithImpl<$Res, $Val extends UploadFile>
    implements $UploadFileCopyWith<$Res> {
  _$UploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? disk = null,
    Object? filename = null,
    Object? mimeType = null,
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      disk: null == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileImplCopyWith<$Res>
    implements $UploadFileCopyWith<$Res> {
  factory _$$UploadFileImplCopyWith(
          _$UploadFileImpl value, $Res Function(_$UploadFileImpl) then) =
      __$$UploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      String disk,
      String filename,
      @JsonKey(name: 'mime_type') String mimeType,
      int size,
      String url});
}

/// @nodoc
class __$$UploadFileImplCopyWithImpl<$Res>
    extends _$UploadFileCopyWithImpl<$Res, _$UploadFileImpl>
    implements _$$UploadFileImplCopyWith<$Res> {
  __$$UploadFileImplCopyWithImpl(
      _$UploadFileImpl _value, $Res Function(_$UploadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? disk = null,
    Object? filename = null,
    Object? mimeType = null,
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_$UploadFileImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      disk: null == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileImpl implements _UploadFile {
  const _$UploadFileImpl(
      {required this.path,
      required this.disk,
      required this.filename,
      @JsonKey(name: 'mime_type') required this.mimeType,
      required this.size,
      required this.url});

  factory _$UploadFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileImplFromJson(json);

  @override
  final String path;
  @override
  final String disk;
  @override
  final String filename;
  @override
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @override
  final int size;
  @override
  final String url;

  @override
  String toString() {
    return 'UploadFile(path: $path, disk: $disk, filename: $filename, mimeType: $mimeType, size: $size, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.disk, disk) || other.disk == disk) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, path, disk, filename, mimeType, size, url);

  /// Create a copy of UploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      __$$UploadFileImplCopyWithImpl<_$UploadFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileImplToJson(
      this,
    );
  }
}

abstract class _UploadFile implements UploadFile {
  const factory _UploadFile(
      {required final String path,
      required final String disk,
      required final String filename,
      @JsonKey(name: 'mime_type') required final String mimeType,
      required final int size,
      required final String url}) = _$UploadFileImpl;

  factory _UploadFile.fromJson(Map<String, dynamic> json) =
      _$UploadFileImpl.fromJson;

  @override
  String get path;
  @override
  String get disk;
  @override
  String get filename;
  @override
  @JsonKey(name: 'mime_type')
  String get mimeType;
  @override
  int get size;
  @override
  String get url;

  /// Create a copy of UploadFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
