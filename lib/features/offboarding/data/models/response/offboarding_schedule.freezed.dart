// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offboarding_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffboardingSchedule _$OffboardingScheduleFromJson(Map<String, dynamic> json) {
  return _OffboardingSchedule.fromJson(json);
}

/// @nodoc
mixin _$OffboardingSchedule {
  int? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'interviewer')
  String? get interviewer => throw _privateConstructorUsedError;

  /// Serializes this OffboardingSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffboardingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffboardingScheduleCopyWith<OffboardingSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffboardingScheduleCopyWith<$Res> {
  factory $OffboardingScheduleCopyWith(
          OffboardingSchedule value, $Res Function(OffboardingSchedule) then) =
      _$OffboardingScheduleCopyWithImpl<$Res, OffboardingSchedule>;
  @useResult
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'interviewer') String? interviewer});
}

/// @nodoc
class _$OffboardingScheduleCopyWithImpl<$Res, $Val extends OffboardingSchedule>
    implements $OffboardingScheduleCopyWith<$Res> {
  _$OffboardingScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffboardingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? interviewer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      interviewer: freezed == interviewer
          ? _value.interviewer
          : interviewer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffboardingScheduleImplCopyWith<$Res>
    implements $OffboardingScheduleCopyWith<$Res> {
  factory _$$OffboardingScheduleImplCopyWith(_$OffboardingScheduleImpl value,
          $Res Function(_$OffboardingScheduleImpl) then) =
      __$$OffboardingScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'interviewer') String? interviewer});
}

/// @nodoc
class __$$OffboardingScheduleImplCopyWithImpl<$Res>
    extends _$OffboardingScheduleCopyWithImpl<$Res, _$OffboardingScheduleImpl>
    implements _$$OffboardingScheduleImplCopyWith<$Res> {
  __$$OffboardingScheduleImplCopyWithImpl(_$OffboardingScheduleImpl _value,
      $Res Function(_$OffboardingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffboardingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? interviewer = freezed,
  }) {
    return _then(_$OffboardingScheduleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      interviewer: freezed == interviewer
          ? _value.interviewer
          : interviewer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffboardingScheduleImpl implements _OffboardingSchedule {
  const _$OffboardingScheduleImpl(
      {this.id,
      this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'interviewer') this.interviewer});

  factory _$OffboardingScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffboardingScheduleImplFromJson(json);

  @override
  final int? id;
  @override
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'interviewer')
  final String? interviewer;

  @override
  String toString() {
    return 'OffboardingSchedule(id: $id, date: $date, startTime: $startTime, endTime: $endTime, interviewer: $interviewer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffboardingScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.interviewer, interviewer) ||
                other.interviewer == interviewer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, startTime, endTime, interviewer);

  /// Create a copy of OffboardingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffboardingScheduleImplCopyWith<_$OffboardingScheduleImpl> get copyWith =>
      __$$OffboardingScheduleImplCopyWithImpl<_$OffboardingScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffboardingScheduleImplToJson(
      this,
    );
  }
}

abstract class _OffboardingSchedule implements OffboardingSchedule {
  const factory _OffboardingSchedule(
          {final int? id,
          final String? date,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          @JsonKey(name: 'interviewer') final String? interviewer}) =
      _$OffboardingScheduleImpl;

  factory _OffboardingSchedule.fromJson(Map<String, dynamic> json) =
      _$OffboardingScheduleImpl.fromJson;

  @override
  int? get id;
  @override
  String? get date;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'interviewer')
  String? get interviewer;

  /// Create a copy of OffboardingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffboardingScheduleImplCopyWith<_$OffboardingScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
