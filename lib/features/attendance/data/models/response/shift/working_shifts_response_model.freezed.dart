// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_shifts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkingShiftResponseModel _$WorkingShiftResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WorkingShiftResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WorkingShiftResponseModel {
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_name')
  String get dayName => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<ShiftSchedule> get shifts => throw _privateConstructorUsedError;

  /// Serializes this WorkingShiftResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkingShiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingShiftResponseModelCopyWith<WorkingShiftResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingShiftResponseModelCopyWith<$Res> {
  factory $WorkingShiftResponseModelCopyWith(WorkingShiftResponseModel value,
          $Res Function(WorkingShiftResponseModel) then) =
      _$WorkingShiftResponseModelCopyWithImpl<$Res, WorkingShiftResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day_of_week') int dayOfWeek,
      @JsonKey(name: 'day_name') String dayName,
      String date,
      List<ShiftSchedule> shifts});
}

/// @nodoc
class _$WorkingShiftResponseModelCopyWithImpl<$Res,
        $Val extends WorkingShiftResponseModel>
    implements $WorkingShiftResponseModelCopyWith<$Res> {
  _$WorkingShiftResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingShiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? dayName = null,
    Object? date = null,
    Object? shifts = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayName: null == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<ShiftSchedule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingShiftResponseModelImplCopyWith<$Res>
    implements $WorkingShiftResponseModelCopyWith<$Res> {
  factory _$$WorkingShiftResponseModelImplCopyWith(
          _$WorkingShiftResponseModelImpl value,
          $Res Function(_$WorkingShiftResponseModelImpl) then) =
      __$$WorkingShiftResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day_of_week') int dayOfWeek,
      @JsonKey(name: 'day_name') String dayName,
      String date,
      List<ShiftSchedule> shifts});
}

/// @nodoc
class __$$WorkingShiftResponseModelImplCopyWithImpl<$Res>
    extends _$WorkingShiftResponseModelCopyWithImpl<$Res,
        _$WorkingShiftResponseModelImpl>
    implements _$$WorkingShiftResponseModelImplCopyWith<$Res> {
  __$$WorkingShiftResponseModelImplCopyWithImpl(
      _$WorkingShiftResponseModelImpl _value,
      $Res Function(_$WorkingShiftResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingShiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? dayName = null,
    Object? date = null,
    Object? shifts = null,
  }) {
    return _then(_$WorkingShiftResponseModelImpl(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayName: null == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      shifts: null == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<ShiftSchedule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingShiftResponseModelImpl implements _WorkingShiftResponseModel {
  const _$WorkingShiftResponseModelImpl(
      {@JsonKey(name: 'day_of_week') required this.dayOfWeek,
      @JsonKey(name: 'day_name') required this.dayName,
      required this.date,
      required final List<ShiftSchedule> shifts})
      : _shifts = shifts;

  factory _$WorkingShiftResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingShiftResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'day_of_week')
  final int dayOfWeek;
  @override
  @JsonKey(name: 'day_name')
  final String dayName;
  @override
  final String date;
  final List<ShiftSchedule> _shifts;
  @override
  List<ShiftSchedule> get shifts {
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shifts);
  }

  @override
  String toString() {
    return 'WorkingShiftResponseModel(dayOfWeek: $dayOfWeek, dayName: $dayName, date: $date, shifts: $shifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingShiftResponseModelImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.dayName, dayName) || other.dayName == dayName) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, dayName, date,
      const DeepCollectionEquality().hash(_shifts));

  /// Create a copy of WorkingShiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingShiftResponseModelImplCopyWith<_$WorkingShiftResponseModelImpl>
      get copyWith => __$$WorkingShiftResponseModelImplCopyWithImpl<
          _$WorkingShiftResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingShiftResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WorkingShiftResponseModel implements WorkingShiftResponseModel {
  const factory _WorkingShiftResponseModel(
          {@JsonKey(name: 'day_of_week') required final int dayOfWeek,
          @JsonKey(name: 'day_name') required final String dayName,
          required final String date,
          required final List<ShiftSchedule> shifts}) =
      _$WorkingShiftResponseModelImpl;

  factory _WorkingShiftResponseModel.fromJson(Map<String, dynamic> json) =
      _$WorkingShiftResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek;
  @override
  @JsonKey(name: 'day_name')
  String get dayName;
  @override
  String get date;
  @override
  List<ShiftSchedule> get shifts;

  /// Create a copy of WorkingShiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingShiftResponseModelImplCopyWith<_$WorkingShiftResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShiftSchedule _$ShiftScheduleFromJson(Map<String, dynamic> json) {
  return _ShiftSchedule.fromJson(json);
}

/// @nodoc
mixin _$ShiftSchedule {
  @JsonKey(name: 'schedule_id')
  int get scheduleId => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  ShiftInfo get shift => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_next_day')
  bool get endsNextDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'break_start_time')
  String? get breakStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'break_end_time')
  String? get breakEndTime => throw _privateConstructorUsedError;

  /// Serializes this ShiftSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftScheduleCopyWith<ShiftSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftScheduleCopyWith<$Res> {
  factory $ShiftScheduleCopyWith(
          ShiftSchedule value, $Res Function(ShiftSchedule) then) =
      _$ShiftScheduleCopyWithImpl<$Res, ShiftSchedule>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_id') int scheduleId,
      int sequence,
      ShiftInfo shift,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'ends_next_day') bool endsNextDay,
      @JsonKey(name: 'break_start_time') String? breakStartTime,
      @JsonKey(name: 'break_end_time') String? breakEndTime});

  $ShiftInfoCopyWith<$Res> get shift;
}

/// @nodoc
class _$ShiftScheduleCopyWithImpl<$Res, $Val extends ShiftSchedule>
    implements $ShiftScheduleCopyWith<$Res> {
  _$ShiftScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? sequence = null,
    Object? shift = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? endsNextDay = null,
    Object? breakStartTime = freezed,
    Object? breakEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      endsNextDay: null == endsNextDay
          ? _value.endsNextDay
          : endsNextDay // ignore: cast_nullable_to_non_nullable
              as bool,
      breakStartTime: freezed == breakStartTime
          ? _value.breakStartTime
          : breakStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      breakEndTime: freezed == breakEndTime
          ? _value.breakEndTime
          : breakEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShiftInfoCopyWith<$Res> get shift {
    return $ShiftInfoCopyWith<$Res>(_value.shift, (value) {
      return _then(_value.copyWith(shift: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShiftScheduleImplCopyWith<$Res>
    implements $ShiftScheduleCopyWith<$Res> {
  factory _$$ShiftScheduleImplCopyWith(
          _$ShiftScheduleImpl value, $Res Function(_$ShiftScheduleImpl) then) =
      __$$ShiftScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_id') int scheduleId,
      int sequence,
      ShiftInfo shift,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'ends_next_day') bool endsNextDay,
      @JsonKey(name: 'break_start_time') String? breakStartTime,
      @JsonKey(name: 'break_end_time') String? breakEndTime});

  @override
  $ShiftInfoCopyWith<$Res> get shift;
}

/// @nodoc
class __$$ShiftScheduleImplCopyWithImpl<$Res>
    extends _$ShiftScheduleCopyWithImpl<$Res, _$ShiftScheduleImpl>
    implements _$$ShiftScheduleImplCopyWith<$Res> {
  __$$ShiftScheduleImplCopyWithImpl(
      _$ShiftScheduleImpl _value, $Res Function(_$ShiftScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? sequence = null,
    Object? shift = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? endsNextDay = null,
    Object? breakStartTime = freezed,
    Object? breakEndTime = freezed,
  }) {
    return _then(_$ShiftScheduleImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      endsNextDay: null == endsNextDay
          ? _value.endsNextDay
          : endsNextDay // ignore: cast_nullable_to_non_nullable
              as bool,
      breakStartTime: freezed == breakStartTime
          ? _value.breakStartTime
          : breakStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      breakEndTime: freezed == breakEndTime
          ? _value.breakEndTime
          : breakEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftScheduleImpl implements _ShiftSchedule {
  const _$ShiftScheduleImpl(
      {@JsonKey(name: 'schedule_id') required this.scheduleId,
      required this.sequence,
      required this.shift,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'ends_next_day') required this.endsNextDay,
      @JsonKey(name: 'break_start_time') this.breakStartTime,
      @JsonKey(name: 'break_end_time') this.breakEndTime});

  factory _$ShiftScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftScheduleImplFromJson(json);

  @override
  @JsonKey(name: 'schedule_id')
  final int scheduleId;
  @override
  final int sequence;
  @override
  final ShiftInfo shift;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  @JsonKey(name: 'ends_next_day')
  final bool endsNextDay;
  @override
  @JsonKey(name: 'break_start_time')
  final String? breakStartTime;
  @override
  @JsonKey(name: 'break_end_time')
  final String? breakEndTime;

  @override
  String toString() {
    return 'ShiftSchedule(scheduleId: $scheduleId, sequence: $sequence, shift: $shift, startTime: $startTime, endTime: $endTime, endsNextDay: $endsNextDay, breakStartTime: $breakStartTime, breakEndTime: $breakEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftScheduleImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.endsNextDay, endsNextDay) ||
                other.endsNextDay == endsNextDay) &&
            (identical(other.breakStartTime, breakStartTime) ||
                other.breakStartTime == breakStartTime) &&
            (identical(other.breakEndTime, breakEndTime) ||
                other.breakEndTime == breakEndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scheduleId, sequence, shift,
      startTime, endTime, endsNextDay, breakStartTime, breakEndTime);

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftScheduleImplCopyWith<_$ShiftScheduleImpl> get copyWith =>
      __$$ShiftScheduleImplCopyWithImpl<_$ShiftScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftScheduleImplToJson(
      this,
    );
  }
}

abstract class _ShiftSchedule implements ShiftSchedule {
  const factory _ShiftSchedule(
          {@JsonKey(name: 'schedule_id') required final int scheduleId,
          required final int sequence,
          required final ShiftInfo shift,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String endTime,
          @JsonKey(name: 'ends_next_day') required final bool endsNextDay,
          @JsonKey(name: 'break_start_time') final String? breakStartTime,
          @JsonKey(name: 'break_end_time') final String? breakEndTime}) =
      _$ShiftScheduleImpl;

  factory _ShiftSchedule.fromJson(Map<String, dynamic> json) =
      _$ShiftScheduleImpl.fromJson;

  @override
  @JsonKey(name: 'schedule_id')
  int get scheduleId;
  @override
  int get sequence;
  @override
  ShiftInfo get shift;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  @JsonKey(name: 'ends_next_day')
  bool get endsNextDay;
  @override
  @JsonKey(name: 'break_start_time')
  String? get breakStartTime;
  @override
  @JsonKey(name: 'break_end_time')
  String? get breakEndTime;

  /// Create a copy of ShiftSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftScheduleImplCopyWith<_$ShiftScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftInfo _$ShiftInfoFromJson(Map<String, dynamic> json) {
  return _ShiftInfo.fromJson(json);
}

/// @nodoc
mixin _$ShiftInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ShiftInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftInfoCopyWith<ShiftInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftInfoCopyWith<$Res> {
  factory $ShiftInfoCopyWith(ShiftInfo value, $Res Function(ShiftInfo) then) =
      _$ShiftInfoCopyWithImpl<$Res, ShiftInfo>;
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class _$ShiftInfoCopyWithImpl<$Res, $Val extends ShiftInfo>
    implements $ShiftInfoCopyWith<$Res> {
  _$ShiftInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftInfoImplCopyWith<$Res>
    implements $ShiftInfoCopyWith<$Res> {
  factory _$$ShiftInfoImplCopyWith(
          _$ShiftInfoImpl value, $Res Function(_$ShiftInfoImpl) then) =
      __$$ShiftInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class __$$ShiftInfoImplCopyWithImpl<$Res>
    extends _$ShiftInfoCopyWithImpl<$Res, _$ShiftInfoImpl>
    implements _$$ShiftInfoImplCopyWith<$Res> {
  __$$ShiftInfoImplCopyWithImpl(
      _$ShiftInfoImpl _value, $Res Function(_$ShiftInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$ShiftInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftInfoImpl implements _ShiftInfo {
  const _$ShiftInfoImpl(
      {required this.id, required this.name, this.description});

  factory _$ShiftInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ShiftInfo(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftInfoImplCopyWith<_$ShiftInfoImpl> get copyWith =>
      __$$ShiftInfoImplCopyWithImpl<_$ShiftInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftInfoImplToJson(
      this,
    );
  }
}

abstract class _ShiftInfo implements ShiftInfo {
  const factory _ShiftInfo(
      {required final int id,
      required final String name,
      final String? description}) = _$ShiftInfoImpl;

  factory _ShiftInfo.fromJson(Map<String, dynamic> json) =
      _$ShiftInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftInfoImplCopyWith<_$ShiftInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
