// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_statistics_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceStatistics _$AttendanceStatisticsFromJson(Map<String, dynamic> json) {
  return _AttendanceStatistics.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStatistics {
  Period get period => throw _privateConstructorUsedError;
  int get attended => throw _privateConstructorUsedError;
  double get absent => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_in")
  ClockIn get clockIn => throw _privateConstructorUsedError;
  @JsonKey(name: "clock_out")
  ClockOut get clockOut => throw _privateConstructorUsedError;
  int get overtime => throw _privateConstructorUsedError;
  @JsonKey(name: "day_off")
  DayOff get dayOff => throw _privateConstructorUsedError;

  /// Serializes this AttendanceStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStatisticsCopyWith<AttendanceStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStatisticsCopyWith<$Res> {
  factory $AttendanceStatisticsCopyWith(AttendanceStatistics value,
          $Res Function(AttendanceStatistics) then) =
      _$AttendanceStatisticsCopyWithImpl<$Res, AttendanceStatistics>;
  @useResult
  $Res call(
      {Period period,
      int attended,
      double absent,
      Status status,
      @JsonKey(name: "clock_in") ClockIn clockIn,
      @JsonKey(name: "clock_out") ClockOut clockOut,
      int overtime,
      @JsonKey(name: "day_off") DayOff dayOff});

  $PeriodCopyWith<$Res> get period;
  $StatusCopyWith<$Res> get status;
  $ClockInCopyWith<$Res> get clockIn;
  $ClockOutCopyWith<$Res> get clockOut;
  $DayOffCopyWith<$Res> get dayOff;
}

/// @nodoc
class _$AttendanceStatisticsCopyWithImpl<$Res,
        $Val extends AttendanceStatistics>
    implements $AttendanceStatisticsCopyWith<$Res> {
  _$AttendanceStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? attended = null,
    Object? absent = null,
    Object? status = null,
    Object? clockIn = null,
    Object? clockOut = null,
    Object? overtime = null,
    Object? dayOff = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      attended: null == attended
          ? _value.attended
          : attended // ignore: cast_nullable_to_non_nullable
              as int,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      clockIn: null == clockIn
          ? _value.clockIn
          : clockIn // ignore: cast_nullable_to_non_nullable
              as ClockIn,
      clockOut: null == clockOut
          ? _value.clockOut
          : clockOut // ignore: cast_nullable_to_non_nullable
              as ClockOut,
      overtime: null == overtime
          ? _value.overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as int,
      dayOff: null == dayOff
          ? _value.dayOff
          : dayOff // ignore: cast_nullable_to_non_nullable
              as DayOff,
    ) as $Val);
  }

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClockInCopyWith<$Res> get clockIn {
    return $ClockInCopyWith<$Res>(_value.clockIn, (value) {
      return _then(_value.copyWith(clockIn: value) as $Val);
    });
  }

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClockOutCopyWith<$Res> get clockOut {
    return $ClockOutCopyWith<$Res>(_value.clockOut, (value) {
      return _then(_value.copyWith(clockOut: value) as $Val);
    });
  }

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayOffCopyWith<$Res> get dayOff {
    return $DayOffCopyWith<$Res>(_value.dayOff, (value) {
      return _then(_value.copyWith(dayOff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceStatisticsImplCopyWith<$Res>
    implements $AttendanceStatisticsCopyWith<$Res> {
  factory _$$AttendanceStatisticsImplCopyWith(_$AttendanceStatisticsImpl value,
          $Res Function(_$AttendanceStatisticsImpl) then) =
      __$$AttendanceStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Period period,
      int attended,
      double absent,
      Status status,
      @JsonKey(name: "clock_in") ClockIn clockIn,
      @JsonKey(name: "clock_out") ClockOut clockOut,
      int overtime,
      @JsonKey(name: "day_off") DayOff dayOff});

  @override
  $PeriodCopyWith<$Res> get period;
  @override
  $StatusCopyWith<$Res> get status;
  @override
  $ClockInCopyWith<$Res> get clockIn;
  @override
  $ClockOutCopyWith<$Res> get clockOut;
  @override
  $DayOffCopyWith<$Res> get dayOff;
}

/// @nodoc
class __$$AttendanceStatisticsImplCopyWithImpl<$Res>
    extends _$AttendanceStatisticsCopyWithImpl<$Res, _$AttendanceStatisticsImpl>
    implements _$$AttendanceStatisticsImplCopyWith<$Res> {
  __$$AttendanceStatisticsImplCopyWithImpl(_$AttendanceStatisticsImpl _value,
      $Res Function(_$AttendanceStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? attended = null,
    Object? absent = null,
    Object? status = null,
    Object? clockIn = null,
    Object? clockOut = null,
    Object? overtime = null,
    Object? dayOff = null,
  }) {
    return _then(_$AttendanceStatisticsImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      attended: null == attended
          ? _value.attended
          : attended // ignore: cast_nullable_to_non_nullable
              as int,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      clockIn: null == clockIn
          ? _value.clockIn
          : clockIn // ignore: cast_nullable_to_non_nullable
              as ClockIn,
      clockOut: null == clockOut
          ? _value.clockOut
          : clockOut // ignore: cast_nullable_to_non_nullable
              as ClockOut,
      overtime: null == overtime
          ? _value.overtime
          : overtime // ignore: cast_nullable_to_non_nullable
              as int,
      dayOff: null == dayOff
          ? _value.dayOff
          : dayOff // ignore: cast_nullable_to_non_nullable
              as DayOff,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceStatisticsImpl implements _AttendanceStatistics {
  const _$AttendanceStatisticsImpl(
      {required this.period,
      required this.attended,
      required this.absent,
      required this.status,
      @JsonKey(name: "clock_in") required this.clockIn,
      @JsonKey(name: "clock_out") required this.clockOut,
      required this.overtime,
      @JsonKey(name: "day_off") required this.dayOff});

  factory _$AttendanceStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceStatisticsImplFromJson(json);

  @override
  final Period period;
  @override
  final int attended;
  @override
  final double absent;
  @override
  final Status status;
  @override
  @JsonKey(name: "clock_in")
  final ClockIn clockIn;
  @override
  @JsonKey(name: "clock_out")
  final ClockOut clockOut;
  @override
  final int overtime;
  @override
  @JsonKey(name: "day_off")
  final DayOff dayOff;

  @override
  String toString() {
    return 'AttendanceStatistics(period: $period, attended: $attended, absent: $absent, status: $status, clockIn: $clockIn, clockOut: $clockOut, overtime: $overtime, dayOff: $dayOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStatisticsImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.attended, attended) ||
                other.attended == attended) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clockIn, clockIn) || other.clockIn == clockIn) &&
            (identical(other.clockOut, clockOut) ||
                other.clockOut == clockOut) &&
            (identical(other.overtime, overtime) ||
                other.overtime == overtime) &&
            (identical(other.dayOff, dayOff) || other.dayOff == dayOff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, period, attended, absent, status,
      clockIn, clockOut, overtime, dayOff);

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStatisticsImplCopyWith<_$AttendanceStatisticsImpl>
      get copyWith =>
          __$$AttendanceStatisticsImplCopyWithImpl<_$AttendanceStatisticsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceStatisticsImplToJson(
      this,
    );
  }
}

abstract class _AttendanceStatistics implements AttendanceStatistics {
  const factory _AttendanceStatistics(
          {required final Period period,
          required final int attended,
          required final double absent,
          required final Status status,
          @JsonKey(name: "clock_in") required final ClockIn clockIn,
          @JsonKey(name: "clock_out") required final ClockOut clockOut,
          required final int overtime,
          @JsonKey(name: "day_off") required final DayOff dayOff}) =
      _$AttendanceStatisticsImpl;

  factory _AttendanceStatistics.fromJson(Map<String, dynamic> json) =
      _$AttendanceStatisticsImpl.fromJson;

  @override
  Period get period;
  @override
  int get attended;
  @override
  double get absent;
  @override
  Status get status;
  @override
  @JsonKey(name: "clock_in")
  ClockIn get clockIn;
  @override
  @JsonKey(name: "clock_out")
  ClockOut get clockOut;
  @override
  int get overtime;
  @override
  @JsonKey(name: "day_off")
  DayOff get dayOff;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStatisticsImplCopyWith<_$AttendanceStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  double get days => throw _privateConstructorUsedError;

  /// Serializes this Period to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call({String start, String end, double days});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodImplCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$PeriodImplCopyWith(
          _$PeriodImpl value, $Res Function(_$PeriodImpl) then) =
      __$$PeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String end, double days});
}

/// @nodoc
class __$$PeriodImplCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$PeriodImpl>
    implements _$$PeriodImplCopyWith<$Res> {
  __$$PeriodImplCopyWithImpl(
      _$PeriodImpl _value, $Res Function(_$PeriodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? days = null,
  }) {
    return _then(_$PeriodImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl implements _Period {
  const _$PeriodImpl(
      {required this.start, required this.end, required this.days});

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  @override
  final String start;
  @override
  final String end;
  @override
  final double days;

  @override
  String toString() {
    return 'Period(start: $start, end: $end, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.days, days) || other.days == days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, days);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      __$$PeriodImplCopyWithImpl<_$PeriodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodImplToJson(
      this,
    );
  }
}

abstract class _Period implements Period {
  const factory _Period(
      {required final String start,
      required final String end,
      required final double days}) = _$PeriodImpl;

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override
  String get start;
  @override
  String get end;
  @override
  double get days;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  int get waiting => throw _privateConstructorUsedError;
  int get approved => throw _privateConstructorUsedError;
  int get rejected => throw _privateConstructorUsedError;

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({int waiting, int approved, int rejected});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? approved = null,
    Object? rejected = null,
  }) {
    return _then(_value.copyWith(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as int,
      rejected: null == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int waiting, int approved, int rejected});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? approved = null,
    Object? rejected = null,
  }) {
    return _then(_$StatusImpl(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as int,
      rejected: null == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl(
      {required this.waiting, required this.approved, required this.rejected});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  final int waiting;
  @override
  final int approved;
  @override
  final int rejected;

  @override
  String toString() {
    return 'Status(waiting: $waiting, approved: $approved, rejected: $rejected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.waiting, waiting) || other.waiting == waiting) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, waiting, approved, rejected);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final int waiting,
      required final int approved,
      required final int rejected}) = _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  int get waiting;
  @override
  int get approved;
  @override
  int get rejected;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClockIn _$ClockInFromJson(Map<String, dynamic> json) {
  return _ClockIn.fromJson(json);
}

/// @nodoc
mixin _$ClockIn {
  int get late => throw _privateConstructorUsedError;
  int get early => throw _privateConstructorUsedError;
  @JsonKey(name: "on_time")
  int get onTime => throw _privateConstructorUsedError;

  /// Serializes this ClockIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClockIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClockInCopyWith<ClockIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockInCopyWith<$Res> {
  factory $ClockInCopyWith(ClockIn value, $Res Function(ClockIn) then) =
      _$ClockInCopyWithImpl<$Res, ClockIn>;
  @useResult
  $Res call({int late, int early, @JsonKey(name: "on_time") int onTime});
}

/// @nodoc
class _$ClockInCopyWithImpl<$Res, $Val extends ClockIn>
    implements $ClockInCopyWith<$Res> {
  _$ClockInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClockIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? late = null,
    Object? early = null,
    Object? onTime = null,
  }) {
    return _then(_value.copyWith(
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      early: null == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int,
      onTime: null == onTime
          ? _value.onTime
          : onTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClockInImplCopyWith<$Res> implements $ClockInCopyWith<$Res> {
  factory _$$ClockInImplCopyWith(
          _$ClockInImpl value, $Res Function(_$ClockInImpl) then) =
      __$$ClockInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int late, int early, @JsonKey(name: "on_time") int onTime});
}

/// @nodoc
class __$$ClockInImplCopyWithImpl<$Res>
    extends _$ClockInCopyWithImpl<$Res, _$ClockInImpl>
    implements _$$ClockInImplCopyWith<$Res> {
  __$$ClockInImplCopyWithImpl(
      _$ClockInImpl _value, $Res Function(_$ClockInImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClockIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? late = null,
    Object? early = null,
    Object? onTime = null,
  }) {
    return _then(_$ClockInImpl(
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      early: null == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int,
      onTime: null == onTime
          ? _value.onTime
          : onTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClockInImpl implements _ClockIn {
  const _$ClockInImpl(
      {required this.late,
      required this.early,
      @JsonKey(name: "on_time") required this.onTime});

  factory _$ClockInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClockInImplFromJson(json);

  @override
  final int late;
  @override
  final int early;
  @override
  @JsonKey(name: "on_time")
  final int onTime;

  @override
  String toString() {
    return 'ClockIn(late: $late, early: $early, onTime: $onTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockInImpl &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.early, early) || other.early == early) &&
            (identical(other.onTime, onTime) || other.onTime == onTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, late, early, onTime);

  /// Create a copy of ClockIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockInImplCopyWith<_$ClockInImpl> get copyWith =>
      __$$ClockInImplCopyWithImpl<_$ClockInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClockInImplToJson(
      this,
    );
  }
}

abstract class _ClockIn implements ClockIn {
  const factory _ClockIn(
      {required final int late,
      required final int early,
      @JsonKey(name: "on_time") required final int onTime}) = _$ClockInImpl;

  factory _ClockIn.fromJson(Map<String, dynamic> json) = _$ClockInImpl.fromJson;

  @override
  int get late;
  @override
  int get early;
  @override
  @JsonKey(name: "on_time")
  int get onTime;

  /// Create a copy of ClockIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClockInImplCopyWith<_$ClockInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClockOut _$ClockOutFromJson(Map<String, dynamic> json) {
  return _ClockOut.fromJson(json);
}

/// @nodoc
mixin _$ClockOut {
  int get late => throw _privateConstructorUsedError;
  int get early => throw _privateConstructorUsedError;
  @JsonKey(name: "on_time")
  int get onTime => throw _privateConstructorUsedError;

  /// Serializes this ClockOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClockOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClockOutCopyWith<ClockOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockOutCopyWith<$Res> {
  factory $ClockOutCopyWith(ClockOut value, $Res Function(ClockOut) then) =
      _$ClockOutCopyWithImpl<$Res, ClockOut>;
  @useResult
  $Res call({int late, int early, @JsonKey(name: "on_time") int onTime});
}

/// @nodoc
class _$ClockOutCopyWithImpl<$Res, $Val extends ClockOut>
    implements $ClockOutCopyWith<$Res> {
  _$ClockOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClockOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? late = null,
    Object? early = null,
    Object? onTime = null,
  }) {
    return _then(_value.copyWith(
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      early: null == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int,
      onTime: null == onTime
          ? _value.onTime
          : onTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClockOutImplCopyWith<$Res>
    implements $ClockOutCopyWith<$Res> {
  factory _$$ClockOutImplCopyWith(
          _$ClockOutImpl value, $Res Function(_$ClockOutImpl) then) =
      __$$ClockOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int late, int early, @JsonKey(name: "on_time") int onTime});
}

/// @nodoc
class __$$ClockOutImplCopyWithImpl<$Res>
    extends _$ClockOutCopyWithImpl<$Res, _$ClockOutImpl>
    implements _$$ClockOutImplCopyWith<$Res> {
  __$$ClockOutImplCopyWithImpl(
      _$ClockOutImpl _value, $Res Function(_$ClockOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClockOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? late = null,
    Object? early = null,
    Object? onTime = null,
  }) {
    return _then(_$ClockOutImpl(
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      early: null == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int,
      onTime: null == onTime
          ? _value.onTime
          : onTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClockOutImpl implements _ClockOut {
  const _$ClockOutImpl(
      {required this.late,
      required this.early,
      @JsonKey(name: "on_time") required this.onTime});

  factory _$ClockOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClockOutImplFromJson(json);

  @override
  final int late;
  @override
  final int early;
  @override
  @JsonKey(name: "on_time")
  final int onTime;

  @override
  String toString() {
    return 'ClockOut(late: $late, early: $early, onTime: $onTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClockOutImpl &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.early, early) || other.early == early) &&
            (identical(other.onTime, onTime) || other.onTime == onTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, late, early, onTime);

  /// Create a copy of ClockOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClockOutImplCopyWith<_$ClockOutImpl> get copyWith =>
      __$$ClockOutImplCopyWithImpl<_$ClockOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClockOutImplToJson(
      this,
    );
  }
}

abstract class _ClockOut implements ClockOut {
  const factory _ClockOut(
      {required final int late,
      required final int early,
      @JsonKey(name: "on_time") required final int onTime}) = _$ClockOutImpl;

  factory _ClockOut.fromJson(Map<String, dynamic> json) =
      _$ClockOutImpl.fromJson;

  @override
  int get late;
  @override
  int get early;
  @override
  @JsonKey(name: "on_time")
  int get onTime;

  /// Create a copy of ClockOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClockOutImplCopyWith<_$ClockOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayOff _$DayOffFromJson(Map<String, dynamic> json) {
  return _DayOff.fromJson(json);
}

/// @nodoc
mixin _$DayOff {
  int get used => throw _privateConstructorUsedError;
  int get quota => throw _privateConstructorUsedError;

  /// Serializes this DayOff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayOff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayOffCopyWith<DayOff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayOffCopyWith<$Res> {
  factory $DayOffCopyWith(DayOff value, $Res Function(DayOff) then) =
      _$DayOffCopyWithImpl<$Res, DayOff>;
  @useResult
  $Res call({int used, int quota});
}

/// @nodoc
class _$DayOffCopyWithImpl<$Res, $Val extends DayOff>
    implements $DayOffCopyWith<$Res> {
  _$DayOffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayOff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? used = null,
    Object? quota = null,
  }) {
    return _then(_value.copyWith(
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
      quota: null == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayOffImplCopyWith<$Res> implements $DayOffCopyWith<$Res> {
  factory _$$DayOffImplCopyWith(
          _$DayOffImpl value, $Res Function(_$DayOffImpl) then) =
      __$$DayOffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int used, int quota});
}

/// @nodoc
class __$$DayOffImplCopyWithImpl<$Res>
    extends _$DayOffCopyWithImpl<$Res, _$DayOffImpl>
    implements _$$DayOffImplCopyWith<$Res> {
  __$$DayOffImplCopyWithImpl(
      _$DayOffImpl _value, $Res Function(_$DayOffImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayOff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? used = null,
    Object? quota = null,
  }) {
    return _then(_$DayOffImpl(
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
      quota: null == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayOffImpl implements _DayOff {
  const _$DayOffImpl({required this.used, required this.quota});

  factory _$DayOffImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayOffImplFromJson(json);

  @override
  final int used;
  @override
  final int quota;

  @override
  String toString() {
    return 'DayOff(used: $used, quota: $quota)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayOffImpl &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.quota, quota) || other.quota == quota));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, used, quota);

  /// Create a copy of DayOff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayOffImplCopyWith<_$DayOffImpl> get copyWith =>
      __$$DayOffImplCopyWithImpl<_$DayOffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayOffImplToJson(
      this,
    );
  }
}

abstract class _DayOff implements DayOff {
  const factory _DayOff({required final int used, required final int quota}) =
      _$DayOffImpl;

  factory _DayOff.fromJson(Map<String, dynamic> json) = _$DayOffImpl.fromJson;

  @override
  int get used;
  @override
  int get quota;

  /// Create a copy of DayOff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayOffImplCopyWith<_$DayOffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
