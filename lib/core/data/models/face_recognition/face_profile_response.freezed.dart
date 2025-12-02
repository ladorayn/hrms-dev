// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaceData _$FaceDataFromJson(Map<String, dynamic> json) {
  return _FaceData.fromJson(json);
}

/// @nodoc
mixin _$FaceData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'quality_score')
  double? get qualityScore => throw _privateConstructorUsedError;
  int? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FaceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaceDataCopyWith<FaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceDataCopyWith<$Res> {
  factory $FaceDataCopyWith(FaceData value, $Res Function(FaceData) then) =
      _$FaceDataCopyWithImpl<$Res, FaceData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'quality_score') double? qualityScore,
      int? source,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'image_path') String? imagePath,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$FaceDataCopyWithImpl<$Res, $Val extends FaceData>
    implements $FaceDataCopyWith<$Res> {
  _$FaceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? isActive = freezed,
    Object? qualityScore = freezed,
    Object? source = freezed,
    Object? createdBy = freezed,
    Object? imagePath = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualityScore: freezed == qualityScore
          ? _value.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceDataImplCopyWith<$Res>
    implements $FaceDataCopyWith<$Res> {
  factory _$$FaceDataImplCopyWith(
          _$FaceDataImpl value, $Res Function(_$FaceDataImpl) then) =
      __$$FaceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'quality_score') double? qualityScore,
      int? source,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'image_path') String? imagePath,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$FaceDataImplCopyWithImpl<$Res>
    extends _$FaceDataCopyWithImpl<$Res, _$FaceDataImpl>
    implements _$$FaceDataImplCopyWith<$Res> {
  __$$FaceDataImplCopyWithImpl(
      _$FaceDataImpl _value, $Res Function(_$FaceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? isActive = freezed,
    Object? qualityScore = freezed,
    Object? source = freezed,
    Object? createdBy = freezed,
    Object? imagePath = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FaceDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualityScore: freezed == qualityScore
          ? _value.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceDataImpl implements _FaceData {
  const _$FaceDataImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'quality_score') this.qualityScore,
      this.source,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'image_path') this.imagePath,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$FaceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'quality_score')
  final double? qualityScore;
  @override
  final int? source;
  @override
  @JsonKey(name: 'created_by')
  final int? createdBy;
  @override
  @JsonKey(name: 'image_path')
  final String? imagePath;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'FaceData(id: $id, userId: $userId, isActive: $isActive, qualityScore: $qualityScore, source: $source, createdBy: $createdBy, imagePath: $imagePath, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.qualityScore, qualityScore) ||
                other.qualityScore == qualityScore) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      isActive,
      qualityScore,
      source,
      createdBy,
      imagePath,
      imageUrl,
      createdAt,
      updatedAt);

  /// Create a copy of FaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceDataImplCopyWith<_$FaceDataImpl> get copyWith =>
      __$$FaceDataImplCopyWithImpl<_$FaceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceDataImplToJson(
      this,
    );
  }
}

abstract class _FaceData implements FaceData {
  const factory _FaceData(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'quality_score') final double? qualityScore,
      final int? source,
      @JsonKey(name: 'created_by') final int? createdBy,
      @JsonKey(name: 'image_path') final String? imagePath,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$FaceDataImpl;

  factory _FaceData.fromJson(Map<String, dynamic> json) =
      _$FaceDataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'quality_score')
  double? get qualityScore;
  @override
  int? get source;
  @override
  @JsonKey(name: 'created_by')
  int? get createdBy;
  @override
  @JsonKey(name: 'image_path')
  String? get imagePath;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of FaceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceDataImplCopyWith<_$FaceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  List<FaceData>? get faces => throw _privateConstructorUsedError;

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      List<FaceData>? faces});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? faces = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faces: freezed == faces
          ? _value.faces
          : faces // ignore: cast_nullable_to_non_nullable
              as List<FaceData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      List<FaceData>? faces});
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? faces = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faces: freezed == faces
          ? _value._faces
          : faces // ignore: cast_nullable_to_non_nullable
              as List<FaceData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl(
      {this.name,
      this.email,
      this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final List<FaceData>? faces})
      : _faces = faces;

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final List<FaceData>? _faces;
  @override
  List<FaceData>? get faces {
    final value = _faces;
    if (value == null) return null;
    if (_faces is EqualUnmodifiableListView) return _faces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfileData(name: $name, email: $email, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, faces: $faces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._faces, _faces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, id, createdAt,
      updatedAt, const DeepCollectionEquality().hash(_faces));

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {final String? name,
      final String? email,
      final int? id,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final List<FaceData>? faces}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  List<FaceData>? get faces;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
