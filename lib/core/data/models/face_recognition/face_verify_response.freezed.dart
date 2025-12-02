// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaceVerify _$FaceVerifyFromJson(Map<String, dynamic> json) {
  return _FaceVerify.fromJson(json);
}

/// @nodoc
mixin _$FaceVerify {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_match')
  bool? get isMatch => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarity_score')
  double? get similarityScore => throw _privateConstructorUsedError;
  double? get threshold => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_embedding_id')
  int? get matchedEmbeddingId => throw _privateConstructorUsedError;

  /// Serializes this FaceVerify to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaceVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaceVerifyCopyWith<FaceVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceVerifyCopyWith<$Res> {
  factory $FaceVerifyCopyWith(
          FaceVerify value, $Res Function(FaceVerify) then) =
      _$FaceVerifyCopyWithImpl<$Res, FaceVerify>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'is_match') bool? isMatch,
      @JsonKey(name: 'similarity_score') double? similarityScore,
      double? threshold,
      String? message,
      @JsonKey(name: 'matched_embedding_id') int? matchedEmbeddingId});
}

/// @nodoc
class _$FaceVerifyCopyWithImpl<$Res, $Val extends FaceVerify>
    implements $FaceVerifyCopyWith<$Res> {
  _$FaceVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? isMatch = freezed,
    Object? similarityScore = freezed,
    Object? threshold = freezed,
    Object? message = freezed,
    Object? matchedEmbeddingId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMatch: freezed == isMatch
          ? _value.isMatch
          : isMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      similarityScore: freezed == similarityScore
          ? _value.similarityScore
          : similarityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      threshold: freezed == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedEmbeddingId: freezed == matchedEmbeddingId
          ? _value.matchedEmbeddingId
          : matchedEmbeddingId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceVerifyImplCopyWith<$Res>
    implements $FaceVerifyCopyWith<$Res> {
  factory _$$FaceVerifyImplCopyWith(
          _$FaceVerifyImpl value, $Res Function(_$FaceVerifyImpl) then) =
      __$$FaceVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'is_match') bool? isMatch,
      @JsonKey(name: 'similarity_score') double? similarityScore,
      double? threshold,
      String? message,
      @JsonKey(name: 'matched_embedding_id') int? matchedEmbeddingId});
}

/// @nodoc
class __$$FaceVerifyImplCopyWithImpl<$Res>
    extends _$FaceVerifyCopyWithImpl<$Res, _$FaceVerifyImpl>
    implements _$$FaceVerifyImplCopyWith<$Res> {
  __$$FaceVerifyImplCopyWithImpl(
      _$FaceVerifyImpl _value, $Res Function(_$FaceVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? isMatch = freezed,
    Object? similarityScore = freezed,
    Object? threshold = freezed,
    Object? message = freezed,
    Object? matchedEmbeddingId = freezed,
  }) {
    return _then(_$FaceVerifyImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMatch: freezed == isMatch
          ? _value.isMatch
          : isMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      similarityScore: freezed == similarityScore
          ? _value.similarityScore
          : similarityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      threshold: freezed == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedEmbeddingId: freezed == matchedEmbeddingId
          ? _value.matchedEmbeddingId
          : matchedEmbeddingId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceVerifyImpl implements _FaceVerify {
  const _$FaceVerifyImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'is_match') this.isMatch,
      @JsonKey(name: 'similarity_score') this.similarityScore,
      this.threshold,
      this.message,
      @JsonKey(name: 'matched_embedding_id') this.matchedEmbeddingId});

  factory _$FaceVerifyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceVerifyImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'is_match')
  final bool? isMatch;
  @override
  @JsonKey(name: 'similarity_score')
  final double? similarityScore;
  @override
  final double? threshold;
  @override
  final String? message;
  @override
  @JsonKey(name: 'matched_embedding_id')
  final int? matchedEmbeddingId;

  @override
  String toString() {
    return 'FaceVerify(userId: $userId, isMatch: $isMatch, similarityScore: $similarityScore, threshold: $threshold, message: $message, matchedEmbeddingId: $matchedEmbeddingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceVerifyImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isMatch, isMatch) || other.isMatch == isMatch) &&
            (identical(other.similarityScore, similarityScore) ||
                other.similarityScore == similarityScore) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.matchedEmbeddingId, matchedEmbeddingId) ||
                other.matchedEmbeddingId == matchedEmbeddingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isMatch, similarityScore,
      threshold, message, matchedEmbeddingId);

  /// Create a copy of FaceVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceVerifyImplCopyWith<_$FaceVerifyImpl> get copyWith =>
      __$$FaceVerifyImplCopyWithImpl<_$FaceVerifyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceVerifyImplToJson(
      this,
    );
  }
}

abstract class _FaceVerify implements FaceVerify {
  const factory _FaceVerify(
      {@JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'is_match') final bool? isMatch,
      @JsonKey(name: 'similarity_score') final double? similarityScore,
      final double? threshold,
      final String? message,
      @JsonKey(name: 'matched_embedding_id')
      final int? matchedEmbeddingId}) = _$FaceVerifyImpl;

  factory _FaceVerify.fromJson(Map<String, dynamic> json) =
      _$FaceVerifyImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'is_match')
  bool? get isMatch;
  @override
  @JsonKey(name: 'similarity_score')
  double? get similarityScore;
  @override
  double? get threshold;
  @override
  String? get message;
  @override
  @JsonKey(name: 'matched_embedding_id')
  int? get matchedEmbeddingId;

  /// Create a copy of FaceVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceVerifyImplCopyWith<_$FaceVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
