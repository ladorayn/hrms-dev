// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OvertimeRequest _$OvertimeRequestFromJson(Map<String, dynamic> json) {
  return _OvertimeRequest.fromJson(json);
}

/// @nodoc
mixin _$OvertimeRequest {
  @JsonKey(name: 'overtime_date')
  String get overtimeDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  /// Serializes this OvertimeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OvertimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OvertimeRequestCopyWith<OvertimeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OvertimeRequestCopyWith<$Res> {
  factory $OvertimeRequestCopyWith(
          OvertimeRequest value, $Res Function(OvertimeRequest) then) =
      _$OvertimeRequestCopyWithImpl<$Res, OvertimeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'overtime_date') String overtimeDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String notes});
}

/// @nodoc
class _$OvertimeRequestCopyWithImpl<$Res, $Val extends OvertimeRequest>
    implements $OvertimeRequestCopyWith<$Res> {
  _$OvertimeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OvertimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overtimeDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      overtimeDate: null == overtimeDate
          ? _value.overtimeDate
          : overtimeDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OvertimeRequestImplCopyWith<$Res>
    implements $OvertimeRequestCopyWith<$Res> {
  factory _$$OvertimeRequestImplCopyWith(_$OvertimeRequestImpl value,
          $Res Function(_$OvertimeRequestImpl) then) =
      __$$OvertimeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'overtime_date') String overtimeDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String notes});
}

/// @nodoc
class __$$OvertimeRequestImplCopyWithImpl<$Res>
    extends _$OvertimeRequestCopyWithImpl<$Res, _$OvertimeRequestImpl>
    implements _$$OvertimeRequestImplCopyWith<$Res> {
  __$$OvertimeRequestImplCopyWithImpl(
      _$OvertimeRequestImpl _value, $Res Function(_$OvertimeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OvertimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overtimeDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? notes = null,
  }) {
    return _then(_$OvertimeRequestImpl(
      overtimeDate: null == overtimeDate
          ? _value.overtimeDate
          : overtimeDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeRequestImpl implements _OvertimeRequest {
  const _$OvertimeRequestImpl(
      {@JsonKey(name: 'overtime_date') required this.overtimeDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      required this.notes});

  factory _$OvertimeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'overtime_date')
  final String overtimeDate;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final String notes;

  @override
  String toString() {
    return 'OvertimeRequest(overtimeDate: $overtimeDate, startTime: $startTime, endTime: $endTime, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeRequestImpl &&
            (identical(other.overtimeDate, overtimeDate) ||
                other.overtimeDate == overtimeDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, overtimeDate, startTime, endTime, notes);

  /// Create a copy of OvertimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeRequestImplCopyWith<_$OvertimeRequestImpl> get copyWith =>
      __$$OvertimeRequestImplCopyWithImpl<_$OvertimeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeRequestImplToJson(
      this,
    );
  }
}

abstract class _OvertimeRequest implements OvertimeRequest {
  const factory _OvertimeRequest(
      {@JsonKey(name: 'overtime_date') required final String overtimeDate,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      required final String notes}) = _$OvertimeRequestImpl;

  factory _OvertimeRequest.fromJson(Map<String, dynamic> json) =
      _$OvertimeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'overtime_date')
  String get overtimeDate;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  String get notes;

  /// Create a copy of OvertimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeRequestImplCopyWith<_$OvertimeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
