// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_trip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessTripData _$BusinessTripDataFromJson(Map<String, dynamic> json) {
  return _BusinessTripData.fromJson(json);
}

/// @nodoc
mixin _$BusinessTripData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  String? get destination => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_str')
  String? get statusStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_at')
  String? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_by_id')
  int? get approvedById => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  dynamic get metadata => throw _privateConstructorUsedError;
  BusinessTripUser? get user => throw _privateConstructorUsedError;
  BusinessTripApprover? get approver => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this BusinessTripData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTripDataCopyWith<BusinessTripData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTripDataCopyWith<$Res> {
  factory $BusinessTripDataCopyWith(
          BusinessTripData value, $Res Function(BusinessTripData) then) =
      _$BusinessTripDataCopyWithImpl<$Res, BusinessTripData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      String? destination,
      String? reason,
      int? status,
      @JsonKey(name: 'status_str') String? statusStr,
      @JsonKey(name: 'approved_at') String? approvedAt,
      @JsonKey(name: 'approved_by_id') int? approvedById,
      String? notes,
      dynamic metadata,
      BusinessTripUser? user,
      BusinessTripApprover? approver,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});

  $BusinessTripUserCopyWith<$Res>? get user;
  $BusinessTripApproverCopyWith<$Res>? get approver;
}

/// @nodoc
class _$BusinessTripDataCopyWithImpl<$Res, $Val extends BusinessTripData>
    implements $BusinessTripDataCopyWith<$Res> {
  _$BusinessTripDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? tenantId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? destination = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? statusStr = freezed,
    Object? approvedAt = freezed,
    Object? approvedById = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
    Object? user = freezed,
    Object? approver = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusStr: freezed == statusStr
          ? _value.statusStr
          : statusStr // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedById: freezed == approvedById
          ? _value.approvedById
          : approvedById // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BusinessTripUser?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as BusinessTripApprover?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTripUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $BusinessTripUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTripApproverCopyWith<$Res>? get approver {
    if (_value.approver == null) {
      return null;
    }

    return $BusinessTripApproverCopyWith<$Res>(_value.approver!, (value) {
      return _then(_value.copyWith(approver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessTripDataImplCopyWith<$Res>
    implements $BusinessTripDataCopyWith<$Res> {
  factory _$$BusinessTripDataImplCopyWith(_$BusinessTripDataImpl value,
          $Res Function(_$BusinessTripDataImpl) then) =
      __$$BusinessTripDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      String? destination,
      String? reason,
      int? status,
      @JsonKey(name: 'status_str') String? statusStr,
      @JsonKey(name: 'approved_at') String? approvedAt,
      @JsonKey(name: 'approved_by_id') int? approvedById,
      String? notes,
      dynamic metadata,
      BusinessTripUser? user,
      BusinessTripApprover? approver,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});

  @override
  $BusinessTripUserCopyWith<$Res>? get user;
  @override
  $BusinessTripApproverCopyWith<$Res>? get approver;
}

/// @nodoc
class __$$BusinessTripDataImplCopyWithImpl<$Res>
    extends _$BusinessTripDataCopyWithImpl<$Res, _$BusinessTripDataImpl>
    implements _$$BusinessTripDataImplCopyWith<$Res> {
  __$$BusinessTripDataImplCopyWithImpl(_$BusinessTripDataImpl _value,
      $Res Function(_$BusinessTripDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? tenantId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? destination = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? statusStr = freezed,
    Object? approvedAt = freezed,
    Object? approvedById = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
    Object? user = freezed,
    Object? approver = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$BusinessTripDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusStr: freezed == statusStr
          ? _value.statusStr
          : statusStr // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedById: freezed == approvedById
          ? _value.approvedById
          : approvedById // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BusinessTripUser?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as BusinessTripApprover?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTripDataImpl implements _BusinessTripData {
  const _$BusinessTripDataImpl(
      {required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      this.destination,
      this.reason,
      this.status,
      @JsonKey(name: 'status_str') this.statusStr,
      @JsonKey(name: 'approved_at') this.approvedAt,
      @JsonKey(name: 'approved_by_id') this.approvedById,
      this.notes,
      this.metadata,
      this.user,
      this.approver,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$BusinessTripDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTripDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  final String? destination;
  @override
  final String? reason;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_str')
  final String? statusStr;
  @override
  @JsonKey(name: 'approved_at')
  final String? approvedAt;
  @override
  @JsonKey(name: 'approved_by_id')
  final int? approvedById;
  @override
  final String? notes;
  @override
  final dynamic metadata;
  @override
  final BusinessTripUser? user;
  @override
  final BusinessTripApprover? approver;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @override
  String toString() {
    return 'BusinessTripData(id: $id, userId: $userId, tenantId: $tenantId, startDate: $startDate, endDate: $endDate, destination: $destination, reason: $reason, status: $status, statusStr: $statusStr, approvedAt: $approvedAt, approvedById: $approvedById, notes: $notes, metadata: $metadata, user: $user, approver: $approver, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTripDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusStr, statusStr) ||
                other.statusStr == statusStr) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedById, approvedById) ||
                other.approvedById == approvedById) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.approver, approver) ||
                other.approver == approver) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      tenantId,
      startDate,
      endDate,
      destination,
      reason,
      status,
      statusStr,
      approvedAt,
      approvedById,
      notes,
      const DeepCollectionEquality().hash(metadata),
      user,
      approver,
      createdAt,
      updatedAt,
      deletedAt);

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTripDataImplCopyWith<_$BusinessTripDataImpl> get copyWith =>
      __$$BusinessTripDataImplCopyWithImpl<_$BusinessTripDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTripDataImplToJson(
      this,
    );
  }
}

abstract class _BusinessTripData implements BusinessTripData {
  const factory _BusinessTripData(
          {required final int id,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'tenant_id') final int? tenantId,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate,
          final String? destination,
          final String? reason,
          final int? status,
          @JsonKey(name: 'status_str') final String? statusStr,
          @JsonKey(name: 'approved_at') final String? approvedAt,
          @JsonKey(name: 'approved_by_id') final int? approvedById,
          final String? notes,
          final dynamic metadata,
          final BusinessTripUser? user,
          final BusinessTripApprover? approver,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'deleted_at') final String? deletedAt}) =
      _$BusinessTripDataImpl;

  factory _BusinessTripData.fromJson(Map<String, dynamic> json) =
      _$BusinessTripDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  String? get destination;
  @override
  String? get reason;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_str')
  String? get statusStr;
  @override
  @JsonKey(name: 'approved_at')
  String? get approvedAt;
  @override
  @JsonKey(name: 'approved_by_id')
  int? get approvedById;
  @override
  String? get notes;
  @override
  dynamic get metadata;
  @override
  BusinessTripUser? get user;
  @override
  BusinessTripApprover? get approver;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;

  /// Create a copy of BusinessTripData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTripDataImplCopyWith<_$BusinessTripDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessTripUser _$BusinessTripUserFromJson(Map<String, dynamic> json) {
  return _BusinessTripUser.fromJson(json);
}

/// @nodoc
mixin _$BusinessTripUser {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_code')
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile')
  String? get photoProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl => throw _privateConstructorUsedError;

  /// Serializes this BusinessTripUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTripUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTripUserCopyWith<BusinessTripUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTripUserCopyWith<$Res> {
  factory $BusinessTripUserCopyWith(
          BusinessTripUser value, $Res Function(BusinessTripUser) then) =
      _$BusinessTripUserCopyWithImpl<$Res, BusinessTripUser>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl});
}

/// @nodoc
class _$BusinessTripUserCopyWithImpl<$Res, $Val extends BusinessTripUser>
    implements $BusinessTripUserCopyWith<$Res> {
  _$BusinessTripUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTripUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTripUserImplCopyWith<$Res>
    implements $BusinessTripUserCopyWith<$Res> {
  factory _$$BusinessTripUserImplCopyWith(_$BusinessTripUserImpl value,
          $Res Function(_$BusinessTripUserImpl) then) =
      __$$BusinessTripUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl});
}

/// @nodoc
class __$$BusinessTripUserImplCopyWithImpl<$Res>
    extends _$BusinessTripUserCopyWithImpl<$Res, _$BusinessTripUserImpl>
    implements _$$BusinessTripUserImplCopyWith<$Res> {
  __$$BusinessTripUserImplCopyWithImpl(_$BusinessTripUserImpl _value,
      $Res Function(_$BusinessTripUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTripUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
  }) {
    return _then(_$BusinessTripUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTripUserImpl implements _BusinessTripUser {
  const _$BusinessTripUserImpl(
      {required this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'employee_code') this.employeeCode,
      @JsonKey(name: 'photo_profile') this.photoProfile,
      @JsonKey(name: 'photo_profile_url') this.photoProfileUrl});

  factory _$BusinessTripUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTripUserImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'employee_code')
  final String? employeeCode;
  @override
  @JsonKey(name: 'photo_profile')
  final String? photoProfile;
  @override
  @JsonKey(name: 'photo_profile_url')
  final String? photoProfileUrl;

  @override
  String toString() {
    return 'BusinessTripUser(id: $id, name: $name, email: $email, phone: $phone, employeeId: $employeeId, employeeCode: $employeeCode, photoProfile: $photoProfile, photoProfileUrl: $photoProfileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTripUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile) &&
            (identical(other.photoProfileUrl, photoProfileUrl) ||
                other.photoProfileUrl == photoProfileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone,
      employeeId, employeeCode, photoProfile, photoProfileUrl);

  /// Create a copy of BusinessTripUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTripUserImplCopyWith<_$BusinessTripUserImpl> get copyWith =>
      __$$BusinessTripUserImplCopyWithImpl<_$BusinessTripUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTripUserImplToJson(
      this,
    );
  }
}

abstract class _BusinessTripUser implements BusinessTripUser {
  const factory _BusinessTripUser(
          {required final int id,
          final String? name,
          final String? email,
          final String? phone,
          @JsonKey(name: 'employee_id') final int? employeeId,
          @JsonKey(name: 'employee_code') final String? employeeCode,
          @JsonKey(name: 'photo_profile') final String? photoProfile,
          @JsonKey(name: 'photo_profile_url') final String? photoProfileUrl}) =
      _$BusinessTripUserImpl;

  factory _BusinessTripUser.fromJson(Map<String, dynamic> json) =
      _$BusinessTripUserImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'employee_code')
  String? get employeeCode;
  @override
  @JsonKey(name: 'photo_profile')
  String? get photoProfile;
  @override
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl;

  /// Create a copy of BusinessTripUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTripUserImplCopyWith<_$BusinessTripUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessTripApprover _$BusinessTripApproverFromJson(Map<String, dynamic> json) {
  return _BusinessTripApprover.fromJson(json);
}

/// @nodoc
mixin _$BusinessTripApprover {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_code')
  String? get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile')
  String? get photoProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl => throw _privateConstructorUsedError;

  /// Serializes this BusinessTripApprover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTripApprover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTripApproverCopyWith<BusinessTripApprover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTripApproverCopyWith<$Res> {
  factory $BusinessTripApproverCopyWith(BusinessTripApprover value,
          $Res Function(BusinessTripApprover) then) =
      _$BusinessTripApproverCopyWithImpl<$Res, BusinessTripApprover>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl});
}

/// @nodoc
class _$BusinessTripApproverCopyWithImpl<$Res,
        $Val extends BusinessTripApprover>
    implements $BusinessTripApproverCopyWith<$Res> {
  _$BusinessTripApproverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTripApprover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTripApproverImplCopyWith<$Res>
    implements $BusinessTripApproverCopyWith<$Res> {
  factory _$$BusinessTripApproverImplCopyWith(_$BusinessTripApproverImpl value,
          $Res Function(_$BusinessTripApproverImpl) then) =
      __$$BusinessTripApproverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'employee_code') String? employeeCode,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl});
}

/// @nodoc
class __$$BusinessTripApproverImplCopyWithImpl<$Res>
    extends _$BusinessTripApproverCopyWithImpl<$Res, _$BusinessTripApproverImpl>
    implements _$$BusinessTripApproverImplCopyWith<$Res> {
  __$$BusinessTripApproverImplCopyWithImpl(_$BusinessTripApproverImpl _value,
      $Res Function(_$BusinessTripApproverImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTripApprover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? employeeId = freezed,
    Object? employeeCode = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
  }) {
    return _then(_$BusinessTripApproverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeCode: freezed == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTripApproverImpl implements _BusinessTripApprover {
  const _$BusinessTripApproverImpl(
      {required this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'employee_code') this.employeeCode,
      @JsonKey(name: 'photo_profile') this.photoProfile,
      @JsonKey(name: 'photo_profile_url') this.photoProfileUrl});

  factory _$BusinessTripApproverImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTripApproverImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'employee_code')
  final String? employeeCode;
  @override
  @JsonKey(name: 'photo_profile')
  final String? photoProfile;
  @override
  @JsonKey(name: 'photo_profile_url')
  final String? photoProfileUrl;

  @override
  String toString() {
    return 'BusinessTripApprover(id: $id, name: $name, email: $email, phone: $phone, employeeId: $employeeId, employeeCode: $employeeCode, photoProfile: $photoProfile, photoProfileUrl: $photoProfileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTripApproverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile) &&
            (identical(other.photoProfileUrl, photoProfileUrl) ||
                other.photoProfileUrl == photoProfileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone,
      employeeId, employeeCode, photoProfile, photoProfileUrl);

  /// Create a copy of BusinessTripApprover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTripApproverImplCopyWith<_$BusinessTripApproverImpl>
      get copyWith =>
          __$$BusinessTripApproverImplCopyWithImpl<_$BusinessTripApproverImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTripApproverImplToJson(
      this,
    );
  }
}

abstract class _BusinessTripApprover implements BusinessTripApprover {
  const factory _BusinessTripApprover(
          {required final int id,
          final String? name,
          final String? email,
          final String? phone,
          @JsonKey(name: 'employee_id') final int? employeeId,
          @JsonKey(name: 'employee_code') final String? employeeCode,
          @JsonKey(name: 'photo_profile') final String? photoProfile,
          @JsonKey(name: 'photo_profile_url') final String? photoProfileUrl}) =
      _$BusinessTripApproverImpl;

  factory _BusinessTripApprover.fromJson(Map<String, dynamic> json) =
      _$BusinessTripApproverImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'employee_code')
  String? get employeeCode;
  @override
  @JsonKey(name: 'photo_profile')
  String? get photoProfile;
  @override
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl;

  /// Create a copy of BusinessTripApprover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTripApproverImplCopyWith<_$BusinessTripApproverImpl>
      get copyWith => throw _privateConstructorUsedError;
}
