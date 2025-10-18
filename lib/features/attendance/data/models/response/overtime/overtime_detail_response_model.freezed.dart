// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OvertimeDetail _$OvertimeDetailFromJson(Map<String, dynamic> json) {
  return _OvertimeDetail.fromJson(json);
}

/// @nodoc
mixin _$OvertimeDetail {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "overtime_date")
  String? get overtimeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "start_time")
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "end_time")
  String? get endTime => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status_label")
  String? get statusLabel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_by")
  int? get approvedBy => throw _privateConstructorUsedError;
  Approver? get approver => throw _privateConstructorUsedError;
  @JsonKey(name: "request_date")
  String? get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OvertimeDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OvertimeDetailCopyWith<OvertimeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OvertimeDetailCopyWith<$Res> {
  factory $OvertimeDetailCopyWith(
          OvertimeDetail value, $Res Function(OvertimeDetail) then) =
      _$OvertimeDetailCopyWithImpl<$Res, OvertimeDetail>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "overtime_date") String? overtimeDate,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "start_time") String? startTime,
      @JsonKey(name: "end_time") String? endTime,
      int? duration,
      int? status,
      @JsonKey(name: "status_label") String? statusLabel,
      String? notes,
      @JsonKey(name: "approved_by") int? approvedBy,
      Approver? approver,
      @JsonKey(name: "request_date") String? requestDate,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  $ApproverCopyWith<$Res>? get approver;
}

/// @nodoc
class _$OvertimeDetailCopyWithImpl<$Res, $Val extends OvertimeDetail>
    implements $OvertimeDetailCopyWith<$Res> {
  _$OvertimeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? overtimeDate = freezed,
    Object? userId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? notes = freezed,
    Object? approvedBy = freezed,
    Object? approver = freezed,
    Object? requestDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overtimeDate: freezed == overtimeDate
          ? _value.overtimeDate
          : overtimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as Approver?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApproverCopyWith<$Res>? get approver {
    if (_value.approver == null) {
      return null;
    }

    return $ApproverCopyWith<$Res>(_value.approver!, (value) {
      return _then(_value.copyWith(approver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OvertimeDetailImplCopyWith<$Res>
    implements $OvertimeDetailCopyWith<$Res> {
  factory _$$OvertimeDetailImplCopyWith(_$OvertimeDetailImpl value,
          $Res Function(_$OvertimeDetailImpl) then) =
      __$$OvertimeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "overtime_date") String? overtimeDate,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "start_time") String? startTime,
      @JsonKey(name: "end_time") String? endTime,
      int? duration,
      int? status,
      @JsonKey(name: "status_label") String? statusLabel,
      String? notes,
      @JsonKey(name: "approved_by") int? approvedBy,
      Approver? approver,
      @JsonKey(name: "request_date") String? requestDate,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  @override
  $ApproverCopyWith<$Res>? get approver;
}

/// @nodoc
class __$$OvertimeDetailImplCopyWithImpl<$Res>
    extends _$OvertimeDetailCopyWithImpl<$Res, _$OvertimeDetailImpl>
    implements _$$OvertimeDetailImplCopyWith<$Res> {
  __$$OvertimeDetailImplCopyWithImpl(
      _$OvertimeDetailImpl _value, $Res Function(_$OvertimeDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? overtimeDate = freezed,
    Object? userId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? notes = freezed,
    Object? approvedBy = freezed,
    Object? approver = freezed,
    Object? requestDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OvertimeDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overtimeDate: freezed == overtimeDate
          ? _value.overtimeDate
          : overtimeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as Approver?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
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
class _$OvertimeDetailImpl implements _OvertimeDetail {
  const _$OvertimeDetailImpl(
      {required this.id,
      @JsonKey(name: "overtime_date") this.overtimeDate,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "start_time") this.startTime,
      @JsonKey(name: "end_time") this.endTime,
      this.duration,
      this.status,
      @JsonKey(name: "status_label") this.statusLabel,
      this.notes,
      @JsonKey(name: "approved_by") this.approvedBy,
      this.approver,
      @JsonKey(name: "request_date") this.requestDate,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$OvertimeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeDetailImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "overtime_date")
  final String? overtimeDate;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "start_time")
  final String? startTime;
  @override
  @JsonKey(name: "end_time")
  final String? endTime;
  @override
  final int? duration;
  @override
  final int? status;
  @override
  @JsonKey(name: "status_label")
  final String? statusLabel;
  @override
  final String? notes;
  @override
  @JsonKey(name: "approved_by")
  final int? approvedBy;
  @override
  final Approver? approver;
  @override
  @JsonKey(name: "request_date")
  final String? requestDate;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'OvertimeDetail(id: $id, overtimeDate: $overtimeDate, userId: $userId, startTime: $startTime, endTime: $endTime, duration: $duration, status: $status, statusLabel: $statusLabel, notes: $notes, approvedBy: $approvedBy, approver: $approver, requestDate: $requestDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overtimeDate, overtimeDate) ||
                other.overtimeDate == overtimeDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.approver, approver) ||
                other.approver == approver) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
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
      overtimeDate,
      userId,
      startTime,
      endTime,
      duration,
      status,
      statusLabel,
      notes,
      approvedBy,
      approver,
      requestDate,
      createdAt,
      updatedAt);

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeDetailImplCopyWith<_$OvertimeDetailImpl> get copyWith =>
      __$$OvertimeDetailImplCopyWithImpl<_$OvertimeDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeDetailImplToJson(
      this,
    );
  }
}

abstract class _OvertimeDetail implements OvertimeDetail {
  const factory _OvertimeDetail(
          {required final int id,
          @JsonKey(name: "overtime_date") final String? overtimeDate,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "start_time") final String? startTime,
          @JsonKey(name: "end_time") final String? endTime,
          final int? duration,
          final int? status,
          @JsonKey(name: "status_label") final String? statusLabel,
          final String? notes,
          @JsonKey(name: "approved_by") final int? approvedBy,
          final Approver? approver,
          @JsonKey(name: "request_date") final String? requestDate,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$OvertimeDetailImpl;

  factory _OvertimeDetail.fromJson(Map<String, dynamic> json) =
      _$OvertimeDetailImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "overtime_date")
  String? get overtimeDate;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "start_time")
  String? get startTime;
  @override
  @JsonKey(name: "end_time")
  String? get endTime;
  @override
  int? get duration;
  @override
  int? get status;
  @override
  @JsonKey(name: "status_label")
  String? get statusLabel;
  @override
  String? get notes;
  @override
  @JsonKey(name: "approved_by")
  int? get approvedBy;
  @override
  Approver? get approver;
  @override
  @JsonKey(name: "request_date")
  String? get requestDate;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of OvertimeDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeDetailImplCopyWith<_$OvertimeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Approver _$ApproverFromJson(Map<String, dynamic> json) {
  return _Approver.fromJson(json);
}

/// @nodoc
mixin _$Approver {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;

  /// Serializes this Approver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Approver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApproverCopyWith<Approver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproverCopyWith<$Res> {
  factory $ApproverCopyWith(Approver value, $Res Function(Approver) then) =
      _$ApproverCopyWithImpl<$Res, Approver>;
  @useResult
  $Res call({int? id, String? name, String? duration});
}

/// @nodoc
class _$ApproverCopyWithImpl<$Res, $Val extends Approver>
    implements $ApproverCopyWith<$Res> {
  _$ApproverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Approver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApproverImplCopyWith<$Res>
    implements $ApproverCopyWith<$Res> {
  factory _$$ApproverImplCopyWith(
          _$ApproverImpl value, $Res Function(_$ApproverImpl) then) =
      __$$ApproverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? duration});
}

/// @nodoc
class __$$ApproverImplCopyWithImpl<$Res>
    extends _$ApproverCopyWithImpl<$Res, _$ApproverImpl>
    implements _$$ApproverImplCopyWith<$Res> {
  __$$ApproverImplCopyWithImpl(
      _$ApproverImpl _value, $Res Function(_$ApproverImpl) _then)
      : super(_value, _then);

  /// Create a copy of Approver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$ApproverImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproverImpl implements _Approver {
  const _$ApproverImpl({this.id, this.name, this.duration});

  factory _$ApproverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproverImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? duration;

  @override
  String toString() {
    return 'Approver(id: $id, name: $name, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration);

  /// Create a copy of Approver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproverImplCopyWith<_$ApproverImpl> get copyWith =>
      __$$ApproverImplCopyWithImpl<_$ApproverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproverImplToJson(
      this,
    );
  }
}

abstract class _Approver implements Approver {
  const factory _Approver(
      {final int? id,
      final String? name,
      final String? duration}) = _$ApproverImpl;

  factory _Approver.fromJson(Map<String, dynamic> json) =
      _$ApproverImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get duration;

  /// Create a copy of Approver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproverImplCopyWith<_$ApproverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
