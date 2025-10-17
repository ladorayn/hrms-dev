// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_statistics_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OvertimeStatistics _$OvertimeStatisticsFromJson(Map<String, dynamic> json) {
  return _OvertimeStatistics.fromJson(json);
}

/// @nodoc
mixin _$OvertimeStatistics {
  Period get period => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get approved => throw _privateConstructorUsedError;
  int get rejected => throw _privateConstructorUsedError;

  /// Serializes this OvertimeStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OvertimeStatisticsCopyWith<OvertimeStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OvertimeStatisticsCopyWith<$Res> {
  factory $OvertimeStatisticsCopyWith(
          OvertimeStatistics value, $Res Function(OvertimeStatistics) then) =
      _$OvertimeStatisticsCopyWithImpl<$Res, OvertimeStatistics>;
  @useResult
  $Res call({Period period, int pending, int approved, int rejected});

  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class _$OvertimeStatisticsCopyWithImpl<$Res, $Val extends OvertimeStatistics>
    implements $OvertimeStatisticsCopyWith<$Res> {
  _$OvertimeStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? pending = null,
    Object? approved = null,
    Object? rejected = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OvertimeStatisticsImplCopyWith<$Res>
    implements $OvertimeStatisticsCopyWith<$Res> {
  factory _$$OvertimeStatisticsImplCopyWith(_$OvertimeStatisticsImpl value,
          $Res Function(_$OvertimeStatisticsImpl) then) =
      __$$OvertimeStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Period period, int pending, int approved, int rejected});

  @override
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$OvertimeStatisticsImplCopyWithImpl<$Res>
    extends _$OvertimeStatisticsCopyWithImpl<$Res, _$OvertimeStatisticsImpl>
    implements _$$OvertimeStatisticsImplCopyWith<$Res> {
  __$$OvertimeStatisticsImplCopyWithImpl(_$OvertimeStatisticsImpl _value,
      $Res Function(_$OvertimeStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? pending = null,
    Object? approved = null,
    Object? rejected = null,
  }) {
    return _then(_$OvertimeStatisticsImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
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
class _$OvertimeStatisticsImpl implements _OvertimeStatistics {
  const _$OvertimeStatisticsImpl(
      {required this.period,
      required this.pending,
      required this.approved,
      required this.rejected});

  factory _$OvertimeStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeStatisticsImplFromJson(json);

  @override
  final Period period;
  @override
  final int pending;
  @override
  final int approved;
  @override
  final int rejected;

  @override
  String toString() {
    return 'OvertimeStatistics(period: $period, pending: $pending, approved: $approved, rejected: $rejected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeStatisticsImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, period, pending, approved, rejected);

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeStatisticsImplCopyWith<_$OvertimeStatisticsImpl> get copyWith =>
      __$$OvertimeStatisticsImplCopyWithImpl<_$OvertimeStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeStatisticsImplToJson(
      this,
    );
  }
}

abstract class _OvertimeStatistics implements OvertimeStatistics {
  const factory _OvertimeStatistics(
      {required final Period period,
      required final int pending,
      required final int approved,
      required final int rejected}) = _$OvertimeStatisticsImpl;

  factory _OvertimeStatistics.fromJson(Map<String, dynamic> json) =
      _$OvertimeStatisticsImpl.fromJson;

  @override
  Period get period;
  @override
  int get pending;
  @override
  int get approved;
  @override
  int get rejected;

  /// Create a copy of OvertimeStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeStatisticsImplCopyWith<_$OvertimeStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

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
  $Res call({String start, String end});
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
  $Res call({String start, String end});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl implements _Period {
  const _$PeriodImpl({required this.start, required this.end});

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'Period(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

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
      {required final String start, required final String end}) = _$PeriodImpl;

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override
  String get start;
  @override
  String get end;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
