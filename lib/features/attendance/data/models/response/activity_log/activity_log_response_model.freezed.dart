// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_log_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityLogModel _$ActivityLogModelFromJson(Map<String, dynamic> json) {
  return _ActivityLogModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogModel {
  int? get id => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_ago')
  String? get timeAgo => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_type')
  String? get eventType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_clock_in')
  bool? get isClockIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_clock_out')
  bool? get isClockOut => throw _privateConstructorUsedError;
  Properties? get properties => throw _privateConstructorUsedError;
  Causer? get causer => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogModelCopyWith<ActivityLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogModelCopyWith<$Res> {
  factory $ActivityLogModelCopyWith(
          ActivityLogModel value, $Res Function(ActivityLogModel) then) =
      _$ActivityLogModelCopyWithImpl<$Res, ActivityLogModel>;
  @useResult
  $Res call(
      {int? id,
      String? event,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'time_ago') String? timeAgo,
      @JsonKey(name: 'event_type') String? eventType,
      @JsonKey(name: 'is_clock_in') bool? isClockIn,
      @JsonKey(name: 'is_clock_out') bool? isClockOut,
      Properties? properties,
      Causer? causer});

  $PropertiesCopyWith<$Res>? get properties;
  $CauserCopyWith<$Res>? get causer;
}

/// @nodoc
class _$ActivityLogModelCopyWithImpl<$Res, $Val extends ActivityLogModel>
    implements $ActivityLogModelCopyWith<$Res> {
  _$ActivityLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? event = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? timeAgo = freezed,
    Object? eventType = freezed,
    Object? isClockIn = freezed,
    Object? isClockOut = freezed,
    Object? properties = freezed,
    Object? causer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeAgo: freezed == timeAgo
          ? _value.timeAgo
          : timeAgo // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      isClockIn: freezed == isClockIn
          ? _value.isClockIn
          : isClockIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClockOut: freezed == isClockOut
          ? _value.isClockOut
          : isClockOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      causer: freezed == causer
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer?,
    ) as $Val);
  }

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res>? get properties {
    if (_value.properties == null) {
      return null;
    }

    return $PropertiesCopyWith<$Res>(_value.properties!, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CauserCopyWith<$Res>? get causer {
    if (_value.causer == null) {
      return null;
    }

    return $CauserCopyWith<$Res>(_value.causer!, (value) {
      return _then(_value.copyWith(causer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityLogModelImplCopyWith<$Res>
    implements $ActivityLogModelCopyWith<$Res> {
  factory _$$ActivityLogModelImplCopyWith(_$ActivityLogModelImpl value,
          $Res Function(_$ActivityLogModelImpl) then) =
      __$$ActivityLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? event,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'time_ago') String? timeAgo,
      @JsonKey(name: 'event_type') String? eventType,
      @JsonKey(name: 'is_clock_in') bool? isClockIn,
      @JsonKey(name: 'is_clock_out') bool? isClockOut,
      Properties? properties,
      Causer? causer});

  @override
  $PropertiesCopyWith<$Res>? get properties;
  @override
  $CauserCopyWith<$Res>? get causer;
}

/// @nodoc
class __$$ActivityLogModelImplCopyWithImpl<$Res>
    extends _$ActivityLogModelCopyWithImpl<$Res, _$ActivityLogModelImpl>
    implements _$$ActivityLogModelImplCopyWith<$Res> {
  __$$ActivityLogModelImplCopyWithImpl(_$ActivityLogModelImpl _value,
      $Res Function(_$ActivityLogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? event = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? timeAgo = freezed,
    Object? eventType = freezed,
    Object? isClockIn = freezed,
    Object? isClockOut = freezed,
    Object? properties = freezed,
    Object? causer = freezed,
  }) {
    return _then(_$ActivityLogModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeAgo: freezed == timeAgo
          ? _value.timeAgo
          : timeAgo // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      isClockIn: freezed == isClockIn
          ? _value.isClockIn
          : isClockIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClockOut: freezed == isClockOut
          ? _value.isClockOut
          : isClockOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      causer: freezed == causer
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogModelImpl implements _ActivityLogModel {
  const _$ActivityLogModelImpl(
      {this.id,
      this.event,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'time_ago') this.timeAgo,
      @JsonKey(name: 'event_type') this.eventType,
      @JsonKey(name: 'is_clock_in') this.isClockIn,
      @JsonKey(name: 'is_clock_out') this.isClockOut,
      this.properties,
      this.causer});

  factory _$ActivityLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? event;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'time_ago')
  final String? timeAgo;
  @override
  @JsonKey(name: 'event_type')
  final String? eventType;
  @override
  @JsonKey(name: 'is_clock_in')
  final bool? isClockIn;
  @override
  @JsonKey(name: 'is_clock_out')
  final bool? isClockOut;
  @override
  final Properties? properties;
  @override
  final Causer? causer;

  @override
  String toString() {
    return 'ActivityLogModel(id: $id, event: $event, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, timeAgo: $timeAgo, eventType: $eventType, isClockIn: $isClockIn, isClockOut: $isClockOut, properties: $properties, causer: $causer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.timeAgo, timeAgo) || other.timeAgo == timeAgo) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.isClockIn, isClockIn) ||
                other.isClockIn == isClockIn) &&
            (identical(other.isClockOut, isClockOut) ||
                other.isClockOut == isClockOut) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.causer, causer) || other.causer == causer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      event,
      description,
      createdAt,
      updatedAt,
      timeAgo,
      eventType,
      isClockIn,
      isClockOut,
      properties,
      causer);

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogModelImplCopyWith<_$ActivityLogModelImpl> get copyWith =>
      __$$ActivityLogModelImplCopyWithImpl<_$ActivityLogModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogModel implements ActivityLogModel {
  const factory _ActivityLogModel(
      {final int? id,
      final String? event,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'time_ago') final String? timeAgo,
      @JsonKey(name: 'event_type') final String? eventType,
      @JsonKey(name: 'is_clock_in') final bool? isClockIn,
      @JsonKey(name: 'is_clock_out') final bool? isClockOut,
      final Properties? properties,
      final Causer? causer}) = _$ActivityLogModelImpl;

  factory _ActivityLogModel.fromJson(Map<String, dynamic> json) =
      _$ActivityLogModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get event;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'time_ago')
  String? get timeAgo;
  @override
  @JsonKey(name: 'event_type')
  String? get eventType;
  @override
  @JsonKey(name: 'is_clock_in')
  bool? get isClockIn;
  @override
  @JsonKey(name: 'is_clock_out')
  bool? get isClockOut;
  @override
  Properties? get properties;
  @override
  Causer? get causer;

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogModelImplCopyWith<_$ActivityLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  @JsonKey(name: 'attendance_id')
  int? get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_status')
  int? get attendanceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_status_label')
  String? get attendanceStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_in_at')
  String? get clockInAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_in_status')
  int? get clockInStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_in_status_label')
  String? get clockInStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_out_at')
  String? get clockOutAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_out_status')
  int? get clockOutStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'clock_out_status_label')
  String? get clockOutStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_clock_in')
  String? get scheduledClockIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_clock_out')
  String? get scheduledClockOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'tolerance_minutes')
  int? get toleranceMinutes => throw _privateConstructorUsedError;
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

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'attendance_status') int? attendanceStatus,
      @JsonKey(name: 'attendance_status_label') String? attendanceStatusLabel,
      @JsonKey(name: 'clock_in_at') String? clockInAt,
      @JsonKey(name: 'clock_in_status') int? clockInStatus,
      @JsonKey(name: 'clock_in_status_label') String? clockInStatusLabel,
      @JsonKey(name: 'clock_out_at') String? clockOutAt,
      @JsonKey(name: 'clock_out_status') int? clockOutStatus,
      @JsonKey(name: 'clock_out_status_label') String? clockOutStatusLabel,
      @JsonKey(name: 'schedule_clock_in') String? scheduledClockIn,
      @JsonKey(name: 'schedule_clock_out') String? scheduledClockOut,
      @JsonKey(name: 'tolerance_minutes') int? toleranceMinutes,
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
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? attendanceStatus = freezed,
    Object? attendanceStatusLabel = freezed,
    Object? clockInAt = freezed,
    Object? clockInStatus = freezed,
    Object? clockInStatusLabel = freezed,
    Object? clockOutAt = freezed,
    Object? clockOutStatus = freezed,
    Object? clockOutStatusLabel = freezed,
    Object? scheduledClockIn = freezed,
    Object? scheduledClockOut = freezed,
    Object? toleranceMinutes = freezed,
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
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatusLabel: freezed == attendanceStatusLabel
          ? _value.attendanceStatusLabel
          : attendanceStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInAt: freezed == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInStatus: freezed == clockInStatus
          ? _value.clockInStatus
          : clockInStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockInStatusLabel: freezed == clockInStatusLabel
          ? _value.clockInStatusLabel
          : clockInStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutAt: freezed == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutStatus: freezed == clockOutStatus
          ? _value.clockOutStatus
          : clockOutStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockOutStatusLabel: freezed == clockOutStatusLabel
          ? _value.clockOutStatusLabel
          : clockOutStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledClockIn: freezed == scheduledClockIn
          ? _value.scheduledClockIn
          : scheduledClockIn // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledClockOut: freezed == scheduledClockOut
          ? _value.scheduledClockOut
          : scheduledClockOut // ignore: cast_nullable_to_non_nullable
              as String?,
      toleranceMinutes: freezed == toleranceMinutes
          ? _value.toleranceMinutes
          : toleranceMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
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

  /// Create a copy of Properties
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
abstract class _$$PropertiesImplCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$PropertiesImplCopyWith(
          _$PropertiesImpl value, $Res Function(_$PropertiesImpl) then) =
      __$$PropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int? attendanceId,
      @JsonKey(name: 'attendance_status') int? attendanceStatus,
      @JsonKey(name: 'attendance_status_label') String? attendanceStatusLabel,
      @JsonKey(name: 'clock_in_at') String? clockInAt,
      @JsonKey(name: 'clock_in_status') int? clockInStatus,
      @JsonKey(name: 'clock_in_status_label') String? clockInStatusLabel,
      @JsonKey(name: 'clock_out_at') String? clockOutAt,
      @JsonKey(name: 'clock_out_status') int? clockOutStatus,
      @JsonKey(name: 'clock_out_status_label') String? clockOutStatusLabel,
      @JsonKey(name: 'schedule_clock_in') String? scheduledClockIn,
      @JsonKey(name: 'schedule_clock_out') String? scheduledClockOut,
      @JsonKey(name: 'tolerance_minutes') int? toleranceMinutes,
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
class __$$PropertiesImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$PropertiesImpl>
    implements _$$PropertiesImplCopyWith<$Res> {
  __$$PropertiesImplCopyWithImpl(
      _$PropertiesImpl _value, $Res Function(_$PropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = freezed,
    Object? attendanceStatus = freezed,
    Object? attendanceStatusLabel = freezed,
    Object? clockInAt = freezed,
    Object? clockInStatus = freezed,
    Object? clockInStatusLabel = freezed,
    Object? clockOutAt = freezed,
    Object? clockOutStatus = freezed,
    Object? clockOutStatusLabel = freezed,
    Object? scheduledClockIn = freezed,
    Object? scheduledClockOut = freezed,
    Object? toleranceMinutes = freezed,
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
    return _then(_$PropertiesImpl(
      attendanceId: freezed == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatusLabel: freezed == attendanceStatusLabel
          ? _value.attendanceStatusLabel
          : attendanceStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInAt: freezed == clockInAt
          ? _value.clockInAt
          : clockInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInStatus: freezed == clockInStatus
          ? _value.clockInStatus
          : clockInStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockInStatusLabel: freezed == clockInStatusLabel
          ? _value.clockInStatusLabel
          : clockInStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutAt: freezed == clockOutAt
          ? _value.clockOutAt
          : clockOutAt // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutStatus: freezed == clockOutStatus
          ? _value.clockOutStatus
          : clockOutStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      clockOutStatusLabel: freezed == clockOutStatusLabel
          ? _value.clockOutStatusLabel
          : clockOutStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledClockIn: freezed == scheduledClockIn
          ? _value.scheduledClockIn
          : scheduledClockIn // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledClockOut: freezed == scheduledClockOut
          ? _value.scheduledClockOut
          : scheduledClockOut // ignore: cast_nullable_to_non_nullable
              as String?,
      toleranceMinutes: freezed == toleranceMinutes
          ? _value.toleranceMinutes
          : toleranceMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$PropertiesImpl implements _Properties {
  const _$PropertiesImpl(
      {@JsonKey(name: 'attendance_id') this.attendanceId,
      @JsonKey(name: 'attendance_status') this.attendanceStatus,
      @JsonKey(name: 'attendance_status_label') this.attendanceStatusLabel,
      @JsonKey(name: 'clock_in_at') this.clockInAt,
      @JsonKey(name: 'clock_in_status') this.clockInStatus,
      @JsonKey(name: 'clock_in_status_label') this.clockInStatusLabel,
      @JsonKey(name: 'clock_out_at') this.clockOutAt,
      @JsonKey(name: 'clock_out_status') this.clockOutStatus,
      @JsonKey(name: 'clock_out_status_label') this.clockOutStatusLabel,
      @JsonKey(name: 'schedule_clock_in') this.scheduledClockIn,
      @JsonKey(name: 'schedule_clock_out') this.scheduledClockOut,
      @JsonKey(name: 'tolerance_minutes') this.toleranceMinutes,
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

  factory _$PropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int? attendanceId;
  @override
  @JsonKey(name: 'attendance_status')
  final int? attendanceStatus;
  @override
  @JsonKey(name: 'attendance_status_label')
  final String? attendanceStatusLabel;
  @override
  @JsonKey(name: 'clock_in_at')
  final String? clockInAt;
  @override
  @JsonKey(name: 'clock_in_status')
  final int? clockInStatus;
  @override
  @JsonKey(name: 'clock_in_status_label')
  final String? clockInStatusLabel;
  @override
  @JsonKey(name: 'clock_out_at')
  final String? clockOutAt;
  @override
  @JsonKey(name: 'clock_out_status')
  final int? clockOutStatus;
  @override
  @JsonKey(name: 'clock_out_status_label')
  final String? clockOutStatusLabel;
  @override
  @JsonKey(name: 'schedule_clock_in')
  final String? scheduledClockIn;
  @override
  @JsonKey(name: 'schedule_clock_out')
  final String? scheduledClockOut;
  @override
  @JsonKey(name: 'tolerance_minutes')
  final int? toleranceMinutes;
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
    return 'Properties(attendanceId: $attendanceId, attendanceStatus: $attendanceStatus, attendanceStatusLabel: $attendanceStatusLabel, clockInAt: $clockInAt, clockInStatus: $clockInStatus, clockInStatusLabel: $clockInStatusLabel, clockOutAt: $clockOutAt, clockOutStatus: $clockOutStatus, clockOutStatusLabel: $clockOutStatusLabel, scheduledClockIn: $scheduledClockIn, scheduledClockOut: $scheduledClockOut, toleranceMinutes: $toleranceMinutes, overtimeDate: $overtimeDate, userId: $userId, startTime: $startTime, endTime: $endTime, duration: $duration, status: $status, statusLabel: $statusLabel, notes: $notes, approvedBy: $approvedBy, approver: $approver, requestDate: $requestDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertiesImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.attendanceStatusLabel, attendanceStatusLabel) ||
                other.attendanceStatusLabel == attendanceStatusLabel) &&
            (identical(other.clockInAt, clockInAt) ||
                other.clockInAt == clockInAt) &&
            (identical(other.clockInStatus, clockInStatus) ||
                other.clockInStatus == clockInStatus) &&
            (identical(other.clockInStatusLabel, clockInStatusLabel) ||
                other.clockInStatusLabel == clockInStatusLabel) &&
            (identical(other.clockOutAt, clockOutAt) ||
                other.clockOutAt == clockOutAt) &&
            (identical(other.clockOutStatus, clockOutStatus) ||
                other.clockOutStatus == clockOutStatus) &&
            (identical(other.clockOutStatusLabel, clockOutStatusLabel) ||
                other.clockOutStatusLabel == clockOutStatusLabel) &&
            (identical(other.scheduledClockIn, scheduledClockIn) ||
                other.scheduledClockIn == scheduledClockIn) &&
            (identical(other.scheduledClockOut, scheduledClockOut) ||
                other.scheduledClockOut == scheduledClockOut) &&
            (identical(other.toleranceMinutes, toleranceMinutes) ||
                other.toleranceMinutes == toleranceMinutes) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        attendanceId,
        attendanceStatus,
        attendanceStatusLabel,
        clockInAt,
        clockInStatus,
        clockInStatusLabel,
        clockOutAt,
        clockOutStatus,
        clockOutStatusLabel,
        scheduledClockIn,
        scheduledClockOut,
        toleranceMinutes,
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
        updatedAt
      ]);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      __$$PropertiesImplCopyWithImpl<_$PropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertiesImplToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  const factory _Properties(
      {@JsonKey(name: 'attendance_id') final int? attendanceId,
      @JsonKey(name: 'attendance_status') final int? attendanceStatus,
      @JsonKey(name: 'attendance_status_label')
      final String? attendanceStatusLabel,
      @JsonKey(name: 'clock_in_at') final String? clockInAt,
      @JsonKey(name: 'clock_in_status') final int? clockInStatus,
      @JsonKey(name: 'clock_in_status_label') final String? clockInStatusLabel,
      @JsonKey(name: 'clock_out_at') final String? clockOutAt,
      @JsonKey(name: 'clock_out_status') final int? clockOutStatus,
      @JsonKey(name: 'clock_out_status_label')
      final String? clockOutStatusLabel,
      @JsonKey(name: 'schedule_clock_in') final String? scheduledClockIn,
      @JsonKey(name: 'schedule_clock_out') final String? scheduledClockOut,
      @JsonKey(name: 'tolerance_minutes') final int? toleranceMinutes,
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
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$PropertiesImpl;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$PropertiesImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int? get attendanceId;
  @override
  @JsonKey(name: 'attendance_status')
  int? get attendanceStatus;
  @override
  @JsonKey(name: 'attendance_status_label')
  String? get attendanceStatusLabel;
  @override
  @JsonKey(name: 'clock_in_at')
  String? get clockInAt;
  @override
  @JsonKey(name: 'clock_in_status')
  int? get clockInStatus;
  @override
  @JsonKey(name: 'clock_in_status_label')
  String? get clockInStatusLabel;
  @override
  @JsonKey(name: 'clock_out_at')
  String? get clockOutAt;
  @override
  @JsonKey(name: 'clock_out_status')
  int? get clockOutStatus;
  @override
  @JsonKey(name: 'clock_out_status_label')
  String? get clockOutStatusLabel;
  @override
  @JsonKey(name: 'schedule_clock_in')
  String? get scheduledClockIn;
  @override
  @JsonKey(name: 'schedule_clock_out')
  String? get scheduledClockOut;
  @override
  @JsonKey(name: 'tolerance_minutes')
  int? get toleranceMinutes;
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

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Causer _$CauserFromJson(Map<String, dynamic> json) {
  return _Causer.fromJson(json);
}

/// @nodoc
mixin _$Causer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this Causer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CauserCopyWith<Causer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CauserCopyWith<$Res> {
  factory $CauserCopyWith(Causer value, $Res Function(Causer) then) =
      _$CauserCopyWithImpl<$Res, Causer>;
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class _$CauserCopyWithImpl<$Res, $Val extends Causer>
    implements $CauserCopyWith<$Res> {
  _$CauserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CauserImplCopyWith<$Res> implements $CauserCopyWith<$Res> {
  factory _$$CauserImplCopyWith(
          _$CauserImpl value, $Res Function(_$CauserImpl) then) =
      __$$CauserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class __$$CauserImplCopyWithImpl<$Res>
    extends _$CauserCopyWithImpl<$Res, _$CauserImpl>
    implements _$$CauserImplCopyWith<$Res> {
  __$$CauserImplCopyWithImpl(
      _$CauserImpl _value, $Res Function(_$CauserImpl) _then)
      : super(_value, _then);

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$CauserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CauserImpl implements _Causer {
  const _$CauserImpl({this.id, this.name, this.email});

  factory _$CauserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CauserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'Causer(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CauserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CauserImplCopyWith<_$CauserImpl> get copyWith =>
      __$$CauserImplCopyWithImpl<_$CauserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CauserImplToJson(
      this,
    );
  }
}

abstract class _Causer implements Causer {
  const factory _Causer(
      {final int? id, final String? name, final String? email}) = _$CauserImpl;

  factory _Causer.fromJson(Map<String, dynamic> json) = _$CauserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CauserImplCopyWith<_$CauserImpl> get copyWith =>
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
