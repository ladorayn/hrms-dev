// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceDetail _$AttendanceDetailFromJson(Map<String, dynamic> json) {
  return _AttendanceDetail.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDetail {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attendance_date")
  String get attendanceDate => throw _privateConstructorUsedError;
  Clock get clock => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: "shift_id")
  int? get shiftId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_in_status")
  int? get clockInStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_out_status")
  int? get clockOutStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "status_label")
  String get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_in_status_label")
  String? get clockInStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_out_status_label")
  String? get clockOutStatusLabel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_at")
  String? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "rejected_reason")
  String? get rejectedReason => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  Metadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AttendanceDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceDetailCopyWith<AttendanceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDetailCopyWith<$Res> {
  factory $AttendanceDetailCopyWith(
          AttendanceDetail value, $Res Function(AttendanceDetail) then) =
      _$AttendanceDetailCopyWithImpl<$Res, AttendanceDetail>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "attendance_date") String attendanceDate,
      Clock clock,
      String? duration,
      Location location,
      @JsonKey(name: "shift_id") int? shiftId,
      int status,
      @JsonKey(name: "clock_in_status") int? clockInStatus,
      @JsonKey(name: "clock_out_status") int? clockOutStatus,
      @JsonKey(name: "status_label") String statusLabel,
      @JsonKey(name: "clock_in_status_label") String? clockInStatusLabel,
      @JsonKey(name: "clock_out_status_label") String? clockOutStatusLabel,
      String? notes,
      @JsonKey(name: "approved_at") String? approvedAt,
      @JsonKey(name: "rejected_reason") String? rejectedReason,
      String? remarks,
      Metadata metadata,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});

  $ClockCopyWith<$Res> get clock;
  $LocationCopyWith<$Res> get location;
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$AttendanceDetailCopyWithImpl<$Res, $Val extends AttendanceDetail>
    implements $AttendanceDetailCopyWith<$Res> {
  _$AttendanceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attendanceDate = null,
    Object? clock = null,
    Object? duration = freezed,
    Object? location = null,
    Object? shiftId = freezed,
    Object? status = null,
    Object? clockInStatus = freezed,
    Object? clockOutStatus = freezed,
    Object? statusLabel = null,
    Object? clockInStatusLabel = freezed,
    Object? clockOutStatusLabel = freezed,
    Object? notes = freezed,
    Object? approvedAt = freezed,
    Object? rejectedReason = freezed,
    Object? remarks = freezed,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as String,
      clock: null == clock
          ? _value.clock
          : clock // ignore: cast_nullable_to_non_nullable
              as Clock,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      clockInStatus: freezed == clockInStatus
          ? _value.clockInStatus
          : clockInStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockOutStatus: freezed == clockOutStatus
          ? _value.clockOutStatus
          : clockOutStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      clockInStatusLabel: freezed == clockInStatusLabel
          ? _value.clockInStatusLabel
          : clockInStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutStatusLabel: freezed == clockOutStatusLabel
          ? _value.clockOutStatusLabel
          : clockOutStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClockCopyWith<$Res> get clock {
    return $ClockCopyWith<$Res>(_value.clock, (value) {
      return _then(_value.copyWith(clock: value) as $Val);
    });
  }

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceDetailImplCopyWith<$Res>
    implements $AttendanceDetailCopyWith<$Res> {
  factory _$$AttendanceDetailImplCopyWith(_$AttendanceDetailImpl value,
          $Res Function(_$AttendanceDetailImpl) then) =
      __$$AttendanceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "attendance_date") String attendanceDate,
      Clock clock,
      String? duration,
      Location location,
      @JsonKey(name: "shift_id") int? shiftId,
      int status,
      @JsonKey(name: "clock_in_status") int? clockInStatus,
      @JsonKey(name: "clock_out_status") int? clockOutStatus,
      @JsonKey(name: "status_label") String statusLabel,
      @JsonKey(name: "clock_in_status_label") String? clockInStatusLabel,
      @JsonKey(name: "clock_out_status_label") String? clockOutStatusLabel,
      String? notes,
      @JsonKey(name: "approved_at") String? approvedAt,
      @JsonKey(name: "rejected_reason") String? rejectedReason,
      String? remarks,
      Metadata metadata,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});

  @override
  $ClockCopyWith<$Res> get clock;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$AttendanceDetailImplCopyWithImpl<$Res>
    extends _$AttendanceDetailCopyWithImpl<$Res, _$AttendanceDetailImpl>
    implements _$$AttendanceDetailImplCopyWith<$Res> {
  __$$AttendanceDetailImplCopyWithImpl(_$AttendanceDetailImpl _value,
      $Res Function(_$AttendanceDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attendanceDate = null,
    Object? clock = null,
    Object? duration = freezed,
    Object? location = null,
    Object? shiftId = freezed,
    Object? status = null,
    Object? clockInStatus = freezed,
    Object? clockOutStatus = freezed,
    Object? statusLabel = null,
    Object? clockInStatusLabel = freezed,
    Object? clockOutStatusLabel = freezed,
    Object? notes = freezed,
    Object? approvedAt = freezed,
    Object? rejectedReason = freezed,
    Object? remarks = freezed,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AttendanceDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as String,
      clock: null == clock
          ? _value.clock
          : clock // ignore: cast_nullable_to_non_nullable
              as Clock,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      clockInStatus: freezed == clockInStatus
          ? _value.clockInStatus
          : clockInStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockOutStatus: freezed == clockOutStatus
          ? _value.clockOutStatus
          : clockOutStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      clockInStatusLabel: freezed == clockInStatusLabel
          ? _value.clockInStatusLabel
          : clockInStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutStatusLabel: freezed == clockOutStatusLabel
          ? _value.clockOutStatusLabel
          : clockOutStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDetailImpl implements _AttendanceDetail {
  const _$AttendanceDetailImpl(
      {required this.id,
      @JsonKey(name: "attendance_date") required this.attendanceDate,
      required this.clock,
      this.duration,
      required this.location,
      @JsonKey(name: "shift_id") this.shiftId,
      required this.status,
      @JsonKey(name: "clock_in_status") this.clockInStatus,
      @JsonKey(name: "clock_out_status") this.clockOutStatus,
      @JsonKey(name: "status_label") required this.statusLabel,
      @JsonKey(name: "clock_in_status_label") this.clockInStatusLabel,
      @JsonKey(name: "clock_out_status_label") this.clockOutStatusLabel,
      this.notes,
      @JsonKey(name: "approved_at") this.approvedAt,
      @JsonKey(name: "rejected_reason") this.rejectedReason,
      this.remarks,
      required this.metadata,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$AttendanceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDetailImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "attendance_date")
  final String attendanceDate;
  @override
  final Clock clock;
  @override
  final String? duration;
  @override
  final Location location;
  @override
  @JsonKey(name: "shift_id")
  final int? shiftId;
  @override
  final int status;
  @override
  @JsonKey(name: "clock_in_status")
  final int? clockInStatus;
  @override
  @JsonKey(name: "clock_out_status")
  final int? clockOutStatus;
  @override
  @JsonKey(name: "status_label")
  final String statusLabel;
  @override
  @JsonKey(name: "clock_in_status_label")
  final String? clockInStatusLabel;
  @override
  @JsonKey(name: "clock_out_status_label")
  final String? clockOutStatusLabel;
  @override
  final String? notes;
  @override
  @JsonKey(name: "approved_at")
  final String? approvedAt;
  @override
  @JsonKey(name: "rejected_reason")
  final String? rejectedReason;
  @override
  final String? remarks;
  @override
  final Metadata metadata;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString() {
    return 'AttendanceDetail(id: $id, attendanceDate: $attendanceDate, clock: $clock, duration: $duration, location: $location, shiftId: $shiftId, status: $status, clockInStatus: $clockInStatus, clockOutStatus: $clockOutStatus, statusLabel: $statusLabel, clockInStatusLabel: $clockInStatusLabel, clockOutStatusLabel: $clockOutStatusLabel, notes: $notes, approvedAt: $approvedAt, rejectedReason: $rejectedReason, remarks: $remarks, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attendanceDate, attendanceDate) ||
                other.attendanceDate == attendanceDate) &&
            (identical(other.clock, clock) || other.clock == clock) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clockInStatus, clockInStatus) ||
                other.clockInStatus == clockInStatus) &&
            (identical(other.clockOutStatus, clockOutStatus) ||
                other.clockOutStatus == clockOutStatus) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.clockInStatusLabel, clockInStatusLabel) ||
                other.clockInStatusLabel == clockInStatusLabel) &&
            (identical(other.clockOutStatusLabel, clockOutStatusLabel) ||
                other.clockOutStatusLabel == clockOutStatusLabel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedReason, rejectedReason) ||
                other.rejectedReason == rejectedReason) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        attendanceDate,
        clock,
        duration,
        location,
        shiftId,
        status,
        clockInStatus,
        clockOutStatus,
        statusLabel,
        clockInStatusLabel,
        clockOutStatusLabel,
        notes,
        approvedAt,
        rejectedReason,
        remarks,
        metadata,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDetailImplCopyWith<_$AttendanceDetailImpl> get copyWith =>
      __$$AttendanceDetailImplCopyWithImpl<_$AttendanceDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDetailImplToJson(
      this,
    );
  }
}

abstract class _AttendanceDetail implements AttendanceDetail {
  const factory _AttendanceDetail(
      {required final int id,
      @JsonKey(name: "attendance_date") required final String attendanceDate,
      required final Clock clock,
      final String? duration,
      required final Location location,
      @JsonKey(name: "shift_id") final int? shiftId,
      required final int status,
      @JsonKey(name: "clock_in_status") final int? clockInStatus,
      @JsonKey(name: "clock_out_status") final int? clockOutStatus,
      @JsonKey(name: "status_label") required final String statusLabel,
      @JsonKey(name: "clock_in_status_label") final String? clockInStatusLabel,
      @JsonKey(name: "clock_out_status_label")
      final String? clockOutStatusLabel,
      final String? notes,
      @JsonKey(name: "approved_at") final String? approvedAt,
      @JsonKey(name: "rejected_reason") final String? rejectedReason,
      final String? remarks,
      required final Metadata metadata,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "updated_at")
      required final String updatedAt}) = _$AttendanceDetailImpl;

  factory _AttendanceDetail.fromJson(Map<String, dynamic> json) =
      _$AttendanceDetailImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "attendance_date")
  String get attendanceDate;
  @override
  Clock get clock;
  @override
  String? get duration;
  @override
  Location get location;
  @override
  @JsonKey(name: "shift_id")
  int? get shiftId;
  @override
  int get status;
  @override
  @JsonKey(name: "clock_in_status")
  int? get clockInStatus;
  @override
  @JsonKey(name: "clock_out_status")
  int? get clockOutStatus;
  @override
  @JsonKey(name: "status_label")
  String get statusLabel;
  @override
  @JsonKey(name: "clock_in_status_label")
  String? get clockInStatusLabel;
  @override
  @JsonKey(name: "clock_out_status_label")
  String? get clockOutStatusLabel;
  @override
  String? get notes;
  @override
  @JsonKey(name: "approved_at")
  String? get approvedAt;
  @override
  @JsonKey(name: "rejected_reason")
  String? get rejectedReason;
  @override
  String? get remarks;
  @override
  Metadata get metadata;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;

  /// Create a copy of AttendanceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceDetailImplCopyWith<_$AttendanceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Clock _$ClockFromJson(Map<String, dynamic> json) {
  return _Clock.fromJson(json);
}

/// @nodoc
mixin _$Clock {
  @JsonKey(name: "in_at")
  String? get inAt => throw _privateConstructorUsedError;
  @JsonKey(name: "out_at")
  String? get outAt => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "overtime_duration")
  int? get overtimeDuration => throw _privateConstructorUsedError;
  @JsonKey(name: "overtime_duration_fomated")
  String? get overtimeDurationFormatted => throw _privateConstructorUsedError;

  /// Serializes this Clock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Clock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClockCopyWith<Clock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockCopyWith<$Res> {
  factory $ClockCopyWith(Clock value, $Res Function(Clock) then) =
      _$ClockCopyWithImpl<$Res, Clock>;
  @useResult
  $Res call(
      {@JsonKey(name: "in_at") String? inAt,
      @JsonKey(name: "out_at") String? outAt,
      String? duration,
      @JsonKey(name: "overtime_duration") int? overtimeDuration,
      @JsonKey(name: "overtime_duration_fomated")
      String? overtimeDurationFormatted});
}

/// @nodoc
class _$ClockCopyWithImpl<$Res, $Val extends Clock>
    implements $ClockCopyWith<$Res> {
  _$ClockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Clock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAt = freezed,
    Object? outAt = freezed,
    Object? duration = freezed,
    Object? overtimeDuration = freezed,
    Object? overtimeDurationFormatted = freezed,
  }) {
    return _then(_value.copyWith(
      inAt: freezed == inAt
          ? _value.inAt
          : inAt // ignore: cast_nullable_to_non_nullable
              as String?,
      outAt: freezed == outAt
          ? _value.outAt
          : outAt // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      overtimeDuration: freezed == overtimeDuration
          ? _value.overtimeDuration
          : overtimeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      overtimeDurationFormatted: freezed == overtimeDurationFormatted
          ? _value.overtimeDurationFormatted
          : overtimeDurationFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClockImplCopyWith<$Res> implements $ClockCopyWith<$Res> {
  factory _$$ClockImplCopyWith(
          _$ClockImpl value, $Res Function(_$ClockImpl) then) =
      __$$ClockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "in_at") String? inAt,
      @JsonKey(name: "out_at") String? outAt,
      String? duration,
      @JsonKey(name: "overtime_duration") int? overtimeDuration,
      @JsonKey(name: "overtime_duration_fomated")
      String? overtimeDurationFormatted});
}

/// @nodoc
class __$$ClockImplCopyWithImpl<$Res>
    extends _$ClockCopyWithImpl<$Res, _$ClockImpl>
    implements _$$ClockImplCopyWith<$Res> {
  __$$ClockImplCopyWithImpl(
      _$ClockImpl _value, $Res Function(_$ClockImpl) _then)
      : super(_value, _then);

  /// Create a copy of Clock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAt = freezed,
    Object? outAt = freezed,
    Object? duration = freezed,
    Object? overtimeDuration = freezed,
    Object? overtimeDurationFormatted = freezed,
  }) {
    return _then(_$ClockImpl(
      inAt: freezed == inAt
          ? _value.inAt
          : inAt // ignore: cast_nullable_to_non_nullable
              as String?,
      outAt: freezed == outAt
          ? _value.outAt
          : outAt // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      overtimeDuration: freezed == overtimeDuration
          ? _value.overtimeDuration
          : overtimeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      overtimeDurationFormatted: freezed == overtimeDurationFormatted
          ? _value.overtimeDurationFormatted
          : overtimeDurationFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClockImpl implements _Clock {
  const _$ClockImpl(
      {@JsonKey(name: "in_at") this.inAt,
      @JsonKey(name: "out_at") this.outAt,
      this.duration,
      @JsonKey(name: "overtime_duration") this.overtimeDuration,
      @JsonKey(name: "overtime_duration_fomated")
      this.overtimeDurationFormatted});

  factory _$ClockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClockImplFromJson(json);

  @override
  @JsonKey(name: "in_at")
  final String? inAt;
  @override
  @JsonKey(name: "out_at")
  final String? outAt;
  @override
  final String? duration;
  @override
  @JsonKey(name: "overtime_duration")
  final int? overtimeDuration;
  @override
  @JsonKey(name: "overtime_duration_fomated")
  final String? overtimeDurationFormatted;

  @override
  String toString() {
    return 'Clock(inAt: $inAt, outAt: $outAt, duration: $duration, overtimeDuration: $overtimeDuration, overtimeDurationFormatted: $overtimeDurationFormatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockImpl &&
            (identical(other.inAt, inAt) || other.inAt == inAt) &&
            (identical(other.outAt, outAt) || other.outAt == outAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.overtimeDuration, overtimeDuration) ||
                other.overtimeDuration == overtimeDuration) &&
            (identical(other.overtimeDurationFormatted,
                    overtimeDurationFormatted) ||
                other.overtimeDurationFormatted == overtimeDurationFormatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inAt, outAt, duration,
      overtimeDuration, overtimeDurationFormatted);

  /// Create a copy of Clock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockImplCopyWith<_$ClockImpl> get copyWith =>
      __$$ClockImplCopyWithImpl<_$ClockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClockImplToJson(
      this,
    );
  }
}

abstract class _Clock implements Clock {
  const factory _Clock(
      {@JsonKey(name: "in_at") final String? inAt,
      @JsonKey(name: "out_at") final String? outAt,
      final String? duration,
      @JsonKey(name: "overtime_duration") final int? overtimeDuration,
      @JsonKey(name: "overtime_duration_fomated")
      final String? overtimeDurationFormatted}) = _$ClockImpl;

  factory _Clock.fromJson(Map<String, dynamic> json) = _$ClockImpl.fromJson;

  @override
  @JsonKey(name: "in_at")
  String? get inAt;
  @override
  @JsonKey(name: "out_at")
  String? get outAt;
  @override
  String? get duration;
  @override
  @JsonKey(name: "overtime_duration")
  int? get overtimeDuration;
  @override
  @JsonKey(name: "overtime_duration_fomated")
  String? get overtimeDurationFormatted;

  /// Create a copy of Clock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClockImplCopyWith<_$ClockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({required this.latitude, required this.longitude});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String latitude,
      required final String longitude}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: "created_via")
  String get createdVia => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "shift_id")
  int get shiftId => throw _privateConstructorUsedError;
  @JsonKey(name: "shift_name")
  String get shiftName => throw _privateConstructorUsedError;
  @JsonKey(name: "day_of_week")
  int get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: "tolerance_minutes")
  int get toleranceMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: "work_schedule_id")
  int get workScheduleId => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String? get locationName => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "created_via") String createdVia,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "shift_id") int shiftId,
      @JsonKey(name: "shift_name") String shiftName,
      @JsonKey(name: "day_of_week") int dayOfWeek,
      @JsonKey(name: "tolerance_minutes") int toleranceMinutes,
      @JsonKey(name: "work_schedule_id") int workScheduleId,
      @JsonKey(name: "location_name") String? locationName,
      Coordinates? coordinates});

  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdVia = null,
    Object? createdAt = null,
    Object? shiftId = null,
    Object? shiftName = null,
    Object? dayOfWeek = null,
    Object? toleranceMinutes = null,
    Object? workScheduleId = null,
    Object? locationName = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      createdVia: null == createdVia
          ? _value.createdVia
          : createdVia // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      shiftName: null == shiftName
          ? _value.shiftName
          : shiftName // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      toleranceMinutes: null == toleranceMinutes
          ? _value.toleranceMinutes
          : toleranceMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      workScheduleId: null == workScheduleId
          ? _value.workScheduleId
          : workScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ) as $Val);
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "created_via") String createdVia,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "shift_id") int shiftId,
      @JsonKey(name: "shift_name") String shiftName,
      @JsonKey(name: "day_of_week") int dayOfWeek,
      @JsonKey(name: "tolerance_minutes") int toleranceMinutes,
      @JsonKey(name: "work_schedule_id") int workScheduleId,
      @JsonKey(name: "location_name") String? locationName,
      Coordinates? coordinates});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdVia = null,
    Object? createdAt = null,
    Object? shiftId = null,
    Object? shiftName = null,
    Object? dayOfWeek = null,
    Object? toleranceMinutes = null,
    Object? workScheduleId = null,
    Object? locationName = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$MetadataImpl(
      createdVia: null == createdVia
          ? _value.createdVia
          : createdVia // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      shiftName: null == shiftName
          ? _value.shiftName
          : shiftName // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      toleranceMinutes: null == toleranceMinutes
          ? _value.toleranceMinutes
          : toleranceMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      workScheduleId: null == workScheduleId
          ? _value.workScheduleId
          : workScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl(
      {@JsonKey(name: "created_via") required this.createdVia,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "shift_id") required this.shiftId,
      @JsonKey(name: "shift_name") required this.shiftName,
      @JsonKey(name: "day_of_week") required this.dayOfWeek,
      @JsonKey(name: "tolerance_minutes") required this.toleranceMinutes,
      @JsonKey(name: "work_schedule_id") required this.workScheduleId,
      @JsonKey(name: "location_name") this.locationName,
      this.coordinates});

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  @JsonKey(name: "created_via")
  final String createdVia;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "shift_id")
  final int shiftId;
  @override
  @JsonKey(name: "shift_name")
  final String shiftName;
  @override
  @JsonKey(name: "day_of_week")
  final int dayOfWeek;
  @override
  @JsonKey(name: "tolerance_minutes")
  final int toleranceMinutes;
  @override
  @JsonKey(name: "work_schedule_id")
  final int workScheduleId;
  @override
  @JsonKey(name: "location_name")
  final String? locationName;
  @override
  final Coordinates? coordinates;

  @override
  String toString() {
    return 'Metadata(createdVia: $createdVia, createdAt: $createdAt, shiftId: $shiftId, shiftName: $shiftName, dayOfWeek: $dayOfWeek, toleranceMinutes: $toleranceMinutes, workScheduleId: $workScheduleId, locationName: $locationName, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.createdVia, createdVia) ||
                other.createdVia == createdVia) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.shiftName, shiftName) ||
                other.shiftName == shiftName) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.toleranceMinutes, toleranceMinutes) ||
                other.toleranceMinutes == toleranceMinutes) &&
            (identical(other.workScheduleId, workScheduleId) ||
                other.workScheduleId == workScheduleId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdVia,
      createdAt,
      shiftId,
      shiftName,
      dayOfWeek,
      toleranceMinutes,
      workScheduleId,
      locationName,
      coordinates);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {@JsonKey(name: "created_via") required final String createdVia,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "shift_id") required final int shiftId,
      @JsonKey(name: "shift_name") required final String shiftName,
      @JsonKey(name: "day_of_week") required final int dayOfWeek,
      @JsonKey(name: "tolerance_minutes") required final int toleranceMinutes,
      @JsonKey(name: "work_schedule_id") required final int workScheduleId,
      @JsonKey(name: "location_name") final String? locationName,
      final Coordinates? coordinates}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  @JsonKey(name: "created_via")
  String get createdVia;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "shift_id")
  int get shiftId;
  @override
  @JsonKey(name: "shift_name")
  String get shiftName;
  @override
  @JsonKey(name: "day_of_week")
  int get dayOfWeek;
  @override
  @JsonKey(name: "tolerance_minutes")
  int get toleranceMinutes;
  @override
  @JsonKey(name: "work_schedule_id")
  int get workScheduleId;
  @override
  @JsonKey(name: "location_name")
  String? get locationName;
  @override
  Coordinates? get coordinates;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CoordinatesImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl implements _Coordinates {
  const _$CoordinatesImpl({required this.latitude, required this.longitude});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {required final double latitude,
      required final double longitude}) = _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
