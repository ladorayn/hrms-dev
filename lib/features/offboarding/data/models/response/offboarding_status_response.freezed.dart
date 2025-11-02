// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offboarding_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffboardingStatusResponse _$OffboardingStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _OffboardingStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$OffboardingStatusResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'effective_resignation_date')
  String? get effectiveResignationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_working_date')
  String? get lastWorkingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OffboardingStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffboardingStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffboardingStatusResponseCopyWith<OffboardingStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffboardingStatusResponseCopyWith<$Res> {
  factory $OffboardingStatusResponseCopyWith(OffboardingStatusResponse value,
          $Res Function(OffboardingStatusResponse) then) =
      _$OffboardingStatusResponseCopyWithImpl<$Res, OffboardingStatusResponse>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'effective_resignation_date')
      String? effectiveResignationDate,
      @JsonKey(name: 'last_working_date') String? lastWorkingDate,
      @JsonKey(name: 'form_id') int? formId,
      int? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$OffboardingStatusResponseCopyWithImpl<$Res,
        $Val extends OffboardingStatusResponse>
    implements $OffboardingStatusResponseCopyWith<$Res> {
  _$OffboardingStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffboardingStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? effectiveResignationDate = freezed,
    Object? lastWorkingDate = freezed,
    Object? formId = freezed,
    Object? status = freezed,
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
      effectiveResignationDate: freezed == effectiveResignationDate
          ? _value.effectiveResignationDate
          : effectiveResignationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastWorkingDate: freezed == lastWorkingDate
          ? _value.lastWorkingDate
          : lastWorkingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$OffboardingStatusResponseImplCopyWith<$Res>
    implements $OffboardingStatusResponseCopyWith<$Res> {
  factory _$$OffboardingStatusResponseImplCopyWith(
          _$OffboardingStatusResponseImpl value,
          $Res Function(_$OffboardingStatusResponseImpl) then) =
      __$$OffboardingStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'effective_resignation_date')
      String? effectiveResignationDate,
      @JsonKey(name: 'last_working_date') String? lastWorkingDate,
      @JsonKey(name: 'form_id') int? formId,
      int? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$OffboardingStatusResponseImplCopyWithImpl<$Res>
    extends _$OffboardingStatusResponseCopyWithImpl<$Res,
        _$OffboardingStatusResponseImpl>
    implements _$$OffboardingStatusResponseImplCopyWith<$Res> {
  __$$OffboardingStatusResponseImplCopyWithImpl(
      _$OffboardingStatusResponseImpl _value,
      $Res Function(_$OffboardingStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffboardingStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? effectiveResignationDate = freezed,
    Object? lastWorkingDate = freezed,
    Object? formId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OffboardingStatusResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      effectiveResignationDate: freezed == effectiveResignationDate
          ? _value.effectiveResignationDate
          : effectiveResignationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastWorkingDate: freezed == lastWorkingDate
          ? _value.lastWorkingDate
          : lastWorkingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$OffboardingStatusResponseImpl implements _OffboardingStatusResponse {
  const _$OffboardingStatusResponseImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'effective_resignation_date')
      this.effectiveResignationDate,
      @JsonKey(name: 'last_working_date') this.lastWorkingDate,
      @JsonKey(name: 'form_id') this.formId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OffboardingStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffboardingStatusResponseImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'effective_resignation_date')
  final String? effectiveResignationDate;
  @override
  @JsonKey(name: 'last_working_date')
  final String? lastWorkingDate;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  final int? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OffboardingStatusResponse(id: $id, userId: $userId, effectiveResignationDate: $effectiveResignationDate, lastWorkingDate: $lastWorkingDate, formId: $formId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffboardingStatusResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(
                    other.effectiveResignationDate, effectiveResignationDate) ||
                other.effectiveResignationDate == effectiveResignationDate) &&
            (identical(other.lastWorkingDate, lastWorkingDate) ||
                other.lastWorkingDate == lastWorkingDate) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.status, status) || other.status == status) &&
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
      effectiveResignationDate,
      lastWorkingDate,
      formId,
      status,
      createdAt,
      updatedAt);

  /// Create a copy of OffboardingStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffboardingStatusResponseImplCopyWith<_$OffboardingStatusResponseImpl>
      get copyWith => __$$OffboardingStatusResponseImplCopyWithImpl<
          _$OffboardingStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffboardingStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _OffboardingStatusResponse implements OffboardingStatusResponse {
  const factory _OffboardingStatusResponse(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'effective_resignation_date')
          final String? effectiveResignationDate,
          @JsonKey(name: 'last_working_date') final String? lastWorkingDate,
          @JsonKey(name: 'form_id') final int? formId,
          final int? status,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$OffboardingStatusResponseImpl;

  factory _OffboardingStatusResponse.fromJson(Map<String, dynamic> json) =
      _$OffboardingStatusResponseImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'effective_resignation_date')
  String? get effectiveResignationDate;
  @override
  @JsonKey(name: 'last_working_date')
  String? get lastWorkingDate;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  int? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of OffboardingStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffboardingStatusResponseImplCopyWith<_$OffboardingStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
