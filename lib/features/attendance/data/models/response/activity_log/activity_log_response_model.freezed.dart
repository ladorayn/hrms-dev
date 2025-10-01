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
  int get id => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_ago')
  String get timeAgo => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_type')
  String get eventType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_clock_in')
  bool get isClockIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_clock_out')
  bool get isClockOut => throw _privateConstructorUsedError;
  Properties get properties => throw _privateConstructorUsedError;
  Causer get causer => throw _privateConstructorUsedError;

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
      {int id,
      String event,
      String description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'time_ago') String timeAgo,
      @JsonKey(name: 'event_type') String eventType,
      @JsonKey(name: 'is_clock_in') bool isClockIn,
      @JsonKey(name: 'is_clock_out') bool isClockOut,
      Properties properties,
      Causer causer});

  $PropertiesCopyWith<$Res> get properties;
  $CauserCopyWith<$Res> get causer;
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
    Object? id = null,
    Object? event = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? timeAgo = null,
    Object? eventType = null,
    Object? isClockIn = null,
    Object? isClockOut = null,
    Object? properties = null,
    Object? causer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeAgo: null == timeAgo
          ? _value.timeAgo
          : timeAgo // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      isClockIn: null == isClockIn
          ? _value.isClockIn
          : isClockIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isClockOut: null == isClockOut
          ? _value.isClockOut
          : isClockOut // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties,
      causer: null == causer
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer,
    ) as $Val);
  }

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res> get properties {
    return $PropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CauserCopyWith<$Res> get causer {
    return $CauserCopyWith<$Res>(_value.causer, (value) {
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
      {int id,
      String event,
      String description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'time_ago') String timeAgo,
      @JsonKey(name: 'event_type') String eventType,
      @JsonKey(name: 'is_clock_in') bool isClockIn,
      @JsonKey(name: 'is_clock_out') bool isClockOut,
      Properties properties,
      Causer causer});

  @override
  $PropertiesCopyWith<$Res> get properties;
  @override
  $CauserCopyWith<$Res> get causer;
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
    Object? id = null,
    Object? event = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? timeAgo = null,
    Object? eventType = null,
    Object? isClockIn = null,
    Object? isClockOut = null,
    Object? properties = null,
    Object? causer = null,
  }) {
    return _then(_$ActivityLogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeAgo: null == timeAgo
          ? _value.timeAgo
          : timeAgo // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      isClockIn: null == isClockIn
          ? _value.isClockIn
          : isClockIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isClockOut: null == isClockOut
          ? _value.isClockOut
          : isClockOut // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties,
      causer: null == causer
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogModelImpl implements _ActivityLogModel {
  const _$ActivityLogModelImpl(
      {required this.id,
      required this.event,
      required this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'time_ago') required this.timeAgo,
      @JsonKey(name: 'event_type') required this.eventType,
      @JsonKey(name: 'is_clock_in') required this.isClockIn,
      @JsonKey(name: 'is_clock_out') required this.isClockOut,
      required this.properties,
      required this.causer});

  factory _$ActivityLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogModelImplFromJson(json);

  @override
  final int id;
  @override
  final String event;
  @override
  final String description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'time_ago')
  final String timeAgo;
  @override
  @JsonKey(name: 'event_type')
  final String eventType;
  @override
  @JsonKey(name: 'is_clock_in')
  final bool isClockIn;
  @override
  @JsonKey(name: 'is_clock_out')
  final bool isClockOut;
  @override
  final Properties properties;
  @override
  final Causer causer;

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
      {required final int id,
      required final String event,
      required final String description,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'time_ago') required final String timeAgo,
      @JsonKey(name: 'event_type') required final String eventType,
      @JsonKey(name: 'is_clock_in') required final bool isClockIn,
      @JsonKey(name: 'is_clock_out') required final bool isClockOut,
      required final Properties properties,
      required final Causer causer}) = _$ActivityLogModelImpl;

  factory _ActivityLogModel.fromJson(Map<String, dynamic> json) =
      _$ActivityLogModelImpl.fromJson;

  @override
  int get id;
  @override
  String get event;
  @override
  String get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'time_ago')
  String get timeAgo;
  @override
  @JsonKey(name: 'event_type')
  String get eventType;
  @override
  @JsonKey(name: 'is_clock_in')
  bool get isClockIn;
  @override
  @JsonKey(name: 'is_clock_out')
  bool get isClockOut;
  @override
  Properties get properties;
  @override
  Causer get causer;

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
  int get attendanceId => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'attendance_id') int attendanceId,
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
      @JsonKey(name: 'tolerance_minutes') int? toleranceMinutes});
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
    Object? attendanceId = null,
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
  }) {
    return _then(_value.copyWith(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
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
      {@JsonKey(name: 'attendance_id') int attendanceId,
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
      @JsonKey(name: 'tolerance_minutes') int? toleranceMinutes});
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
    Object? attendanceId = null,
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
  }) {
    return _then(_$PropertiesImpl(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertiesImpl implements _Properties {
  const _$PropertiesImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId,
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
      @JsonKey(name: 'tolerance_minutes') this.toleranceMinutes});

  factory _$PropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int attendanceId;
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
  String toString() {
    return 'Properties(attendanceId: $attendanceId, attendanceStatus: $attendanceStatus, attendanceStatusLabel: $attendanceStatusLabel, clockInAt: $clockInAt, clockInStatus: $clockInStatus, clockInStatusLabel: $clockInStatusLabel, clockOutAt: $clockOutAt, clockOutStatus: $clockOutStatus, clockOutStatusLabel: $clockOutStatusLabel, scheduledClockIn: $scheduledClockIn, scheduledClockOut: $scheduledClockOut, toleranceMinutes: $toleranceMinutes)';
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
                other.toleranceMinutes == toleranceMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      toleranceMinutes);

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
      {@JsonKey(name: 'attendance_id') required final int attendanceId,
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
      @JsonKey(name: 'tolerance_minutes')
      final int? toleranceMinutes}) = _$PropertiesImpl;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$PropertiesImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int get attendanceId;
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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String email});
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
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, String name, String email});
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
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$CauserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CauserImpl implements _Causer {
  const _$CauserImpl(
      {required this.id, required this.name, required this.email});

  factory _$CauserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CauserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

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
      {required final int id,
      required final String name,
      required final String email}) = _$CauserImpl;

  factory _Causer.fromJson(Map<String, dynamic> json) = _$CauserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of Causer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CauserImplCopyWith<_$CauserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
