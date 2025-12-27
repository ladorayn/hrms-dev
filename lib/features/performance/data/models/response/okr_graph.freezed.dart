// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'okr_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OKRGraphData _$OKRGraphDataFromJson(Map<String, dynamic> json) {
  return _OKRGraphData.fromJson(json);
}

/// @nodoc
mixin _$OKRGraphData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_results')
  List<KeyResultGraphDetail>? get keyResults =>
      throw _privateConstructorUsedError;

  /// Serializes this OKRGraphData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OKRGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OKRGraphDataCopyWith<OKRGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OKRGraphDataCopyWith<$Res> {
  factory $OKRGraphDataCopyWith(
          OKRGraphData value, $Res Function(OKRGraphData) then) =
      _$OKRGraphDataCopyWithImpl<$Res, OKRGraphData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      int? progress,
      int? status,
      @JsonKey(name: 'key_results') List<KeyResultGraphDetail>? keyResults});
}

/// @nodoc
class _$OKRGraphDataCopyWithImpl<$Res, $Val extends OKRGraphData>
    implements $OKRGraphDataCopyWith<$Res> {
  _$OKRGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OKRGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? okrCycleId = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? keyResults = freezed,
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
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as List<KeyResultGraphDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OKRGraphDataImplCopyWith<$Res>
    implements $OKRGraphDataCopyWith<$Res> {
  factory _$$OKRGraphDataImplCopyWith(
          _$OKRGraphDataImpl value, $Res Function(_$OKRGraphDataImpl) then) =
      __$$OKRGraphDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      int? progress,
      int? status,
      @JsonKey(name: 'key_results') List<KeyResultGraphDetail>? keyResults});
}

/// @nodoc
class __$$OKRGraphDataImplCopyWithImpl<$Res>
    extends _$OKRGraphDataCopyWithImpl<$Res, _$OKRGraphDataImpl>
    implements _$$OKRGraphDataImplCopyWith<$Res> {
  __$$OKRGraphDataImplCopyWithImpl(
      _$OKRGraphDataImpl _value, $Res Function(_$OKRGraphDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OKRGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? okrCycleId = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? keyResults = freezed,
  }) {
    return _then(_$OKRGraphDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value._keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as List<KeyResultGraphDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OKRGraphDataImpl implements _OKRGraphData {
  const _$OKRGraphDataImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'okr_cycle_id') this.okrCycleId,
      this.progress,
      this.status,
      @JsonKey(name: 'key_results')
      final List<KeyResultGraphDetail>? keyResults})
      : _keyResults = keyResults;

  factory _$OKRGraphDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OKRGraphDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'okr_cycle_id')
  final int? okrCycleId;
  @override
  final int? progress;
  @override
  final int? status;
  final List<KeyResultGraphDetail>? _keyResults;
  @override
  @JsonKey(name: 'key_results')
  List<KeyResultGraphDetail>? get keyResults {
    final value = _keyResults;
    if (value == null) return null;
    if (_keyResults is EqualUnmodifiableListView) return _keyResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OKRGraphData(id: $id, name: $name, okrCycleId: $okrCycleId, progress: $progress, status: $status, keyResults: $keyResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKRGraphDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.okrCycleId, okrCycleId) ||
                other.okrCycleId == okrCycleId) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._keyResults, _keyResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, okrCycleId, progress,
      status, const DeepCollectionEquality().hash(_keyResults));

  /// Create a copy of OKRGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OKRGraphDataImplCopyWith<_$OKRGraphDataImpl> get copyWith =>
      __$$OKRGraphDataImplCopyWithImpl<_$OKRGraphDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OKRGraphDataImplToJson(
      this,
    );
  }
}

abstract class _OKRGraphData implements OKRGraphData {
  const factory _OKRGraphData(
      {final int? id,
      final String? name,
      @JsonKey(name: 'okr_cycle_id') final int? okrCycleId,
      final int? progress,
      final int? status,
      @JsonKey(name: 'key_results')
      final List<KeyResultGraphDetail>? keyResults}) = _$OKRGraphDataImpl;

  factory _OKRGraphData.fromJson(Map<String, dynamic> json) =
      _$OKRGraphDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId;
  @override
  int? get progress;
  @override
  int? get status;
  @override
  @JsonKey(name: 'key_results')
  List<KeyResultGraphDetail>? get keyResults;

  /// Create a copy of OKRGraphData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OKRGraphDataImplCopyWith<_$OKRGraphDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyResultGraphDetail _$KeyResultGraphDetailFromJson(Map<String, dynamic> json) {
  return _KeyResultGraphDetail.fromJson(json);
}

/// @nodoc
mixin _$KeyResultGraphDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'frequency_label')
  String? get frequencyLabel => throw _privateConstructorUsedError;
  int? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'format_label')
  String? get formatLabel => throw _privateConstructorUsedError;
  int? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: 'direction_label')
  String? get directionLabel => throw _privateConstructorUsedError;
  int? get aggregation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aggregation_label')
  String? get aggregationLabel => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_actual_value')
  double? get averageActualValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_target_value')
  double? get averageTargetValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_value')
  double? get targetValue => throw _privateConstructorUsedError;
  List<double>? get data => throw _privateConstructorUsedError;
  List<String>? get labels => throw _privateConstructorUsedError;

  /// Serializes this KeyResultGraphDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyResultGraphDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyResultGraphDetailCopyWith<KeyResultGraphDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyResultGraphDetailCopyWith<$Res> {
  factory $KeyResultGraphDetailCopyWith(KeyResultGraphDetail value,
          $Res Function(KeyResultGraphDetail) then) =
      _$KeyResultGraphDetailCopyWithImpl<$Res, KeyResultGraphDetail>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? status,
      @JsonKey(name: 'average_actual_value') double? averageActualValue,
      @JsonKey(name: 'average_target_value') double? averageTargetValue,
      @JsonKey(name: 'target_value') double? targetValue,
      List<double>? data,
      List<String>? labels});
}

/// @nodoc
class _$KeyResultGraphDetailCopyWithImpl<$Res,
        $Val extends KeyResultGraphDetail>
    implements $KeyResultGraphDetailCopyWith<$Res> {
  _$KeyResultGraphDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyResultGraphDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? status = freezed,
    Object? averageActualValue = freezed,
    Object? averageTargetValue = freezed,
    Object? targetValue = freezed,
    Object? data = freezed,
    Object? labels = freezed,
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
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      frequencyLabel: freezed == frequencyLabel
          ? _value.frequencyLabel
          : frequencyLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int?,
      formatLabel: freezed == formatLabel
          ? _value.formatLabel
          : formatLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int?,
      directionLabel: freezed == directionLabel
          ? _value.directionLabel
          : directionLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      aggregation: freezed == aggregation
          ? _value.aggregation
          : aggregation // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregationLabel: freezed == aggregationLabel
          ? _value.aggregationLabel
          : aggregationLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      averageActualValue: freezed == averageActualValue
          ? _value.averageActualValue
          : averageActualValue // ignore: cast_nullable_to_non_nullable
              as double?,
      averageTargetValue: freezed == averageTargetValue
          ? _value.averageTargetValue
          : averageTargetValue // ignore: cast_nullable_to_non_nullable
              as double?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyResultGraphDetailImplCopyWith<$Res>
    implements $KeyResultGraphDetailCopyWith<$Res> {
  factory _$$KeyResultGraphDetailImplCopyWith(_$KeyResultGraphDetailImpl value,
          $Res Function(_$KeyResultGraphDetailImpl) then) =
      __$$KeyResultGraphDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? status,
      @JsonKey(name: 'average_actual_value') double? averageActualValue,
      @JsonKey(name: 'average_target_value') double? averageTargetValue,
      @JsonKey(name: 'target_value') double? targetValue,
      List<double>? data,
      List<String>? labels});
}

/// @nodoc
class __$$KeyResultGraphDetailImplCopyWithImpl<$Res>
    extends _$KeyResultGraphDetailCopyWithImpl<$Res, _$KeyResultGraphDetailImpl>
    implements _$$KeyResultGraphDetailImplCopyWith<$Res> {
  __$$KeyResultGraphDetailImplCopyWithImpl(_$KeyResultGraphDetailImpl _value,
      $Res Function(_$KeyResultGraphDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyResultGraphDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? status = freezed,
    Object? averageActualValue = freezed,
    Object? averageTargetValue = freezed,
    Object? targetValue = freezed,
    Object? data = freezed,
    Object? labels = freezed,
  }) {
    return _then(_$KeyResultGraphDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      frequencyLabel: freezed == frequencyLabel
          ? _value.frequencyLabel
          : frequencyLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int?,
      formatLabel: freezed == formatLabel
          ? _value.formatLabel
          : formatLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int?,
      directionLabel: freezed == directionLabel
          ? _value.directionLabel
          : directionLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      aggregation: freezed == aggregation
          ? _value.aggregation
          : aggregation // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregationLabel: freezed == aggregationLabel
          ? _value.aggregationLabel
          : aggregationLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      averageActualValue: freezed == averageActualValue
          ? _value.averageActualValue
          : averageActualValue // ignore: cast_nullable_to_non_nullable
              as double?,
      averageTargetValue: freezed == averageTargetValue
          ? _value.averageTargetValue
          : averageTargetValue // ignore: cast_nullable_to_non_nullable
              as double?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      labels: freezed == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyResultGraphDetailImpl implements _KeyResultGraphDetail {
  const _$KeyResultGraphDetailImpl(
      {this.id,
      this.name,
      this.frequency,
      @JsonKey(name: 'frequency_label') this.frequencyLabel,
      this.format,
      @JsonKey(name: 'format_label') this.formatLabel,
      this.direction,
      @JsonKey(name: 'direction_label') this.directionLabel,
      this.aggregation,
      @JsonKey(name: 'aggregation_label') this.aggregationLabel,
      this.status,
      @JsonKey(name: 'average_actual_value') this.averageActualValue,
      @JsonKey(name: 'average_target_value') this.averageTargetValue,
      @JsonKey(name: 'target_value') this.targetValue,
      final List<double>? data,
      final List<String>? labels})
      : _data = data,
        _labels = labels;

  factory _$KeyResultGraphDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyResultGraphDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? frequency;
  @override
  @JsonKey(name: 'frequency_label')
  final String? frequencyLabel;
  @override
  final int? format;
  @override
  @JsonKey(name: 'format_label')
  final String? formatLabel;
  @override
  final int? direction;
  @override
  @JsonKey(name: 'direction_label')
  final String? directionLabel;
  @override
  final int? aggregation;
  @override
  @JsonKey(name: 'aggregation_label')
  final String? aggregationLabel;
  @override
  final int? status;
  @override
  @JsonKey(name: 'average_actual_value')
  final double? averageActualValue;
  @override
  @JsonKey(name: 'average_target_value')
  final double? averageTargetValue;
  @override
  @JsonKey(name: 'target_value')
  final double? targetValue;
  final List<double>? _data;
  @override
  List<double>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _labels;
  @override
  List<String>? get labels {
    final value = _labels;
    if (value == null) return null;
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KeyResultGraphDetail(id: $id, name: $name, frequency: $frequency, frequencyLabel: $frequencyLabel, format: $format, formatLabel: $formatLabel, direction: $direction, directionLabel: $directionLabel, aggregation: $aggregation, aggregationLabel: $aggregationLabel, status: $status, averageActualValue: $averageActualValue, averageTargetValue: $averageTargetValue, targetValue: $targetValue, data: $data, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyResultGraphDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyLabel, frequencyLabel) ||
                other.frequencyLabel == frequencyLabel) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.formatLabel, formatLabel) ||
                other.formatLabel == formatLabel) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.directionLabel, directionLabel) ||
                other.directionLabel == directionLabel) &&
            (identical(other.aggregation, aggregation) ||
                other.aggregation == aggregation) &&
            (identical(other.aggregationLabel, aggregationLabel) ||
                other.aggregationLabel == aggregationLabel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.averageActualValue, averageActualValue) ||
                other.averageActualValue == averageActualValue) &&
            (identical(other.averageTargetValue, averageTargetValue) ||
                other.averageTargetValue == averageTargetValue) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      frequency,
      frequencyLabel,
      format,
      formatLabel,
      direction,
      directionLabel,
      aggregation,
      aggregationLabel,
      status,
      averageActualValue,
      averageTargetValue,
      targetValue,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_labels));

  /// Create a copy of KeyResultGraphDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyResultGraphDetailImplCopyWith<_$KeyResultGraphDetailImpl>
      get copyWith =>
          __$$KeyResultGraphDetailImplCopyWithImpl<_$KeyResultGraphDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyResultGraphDetailImplToJson(
      this,
    );
  }
}

abstract class _KeyResultGraphDetail implements KeyResultGraphDetail {
  const factory _KeyResultGraphDetail(
      {final int? id,
      final String? name,
      final int? frequency,
      @JsonKey(name: 'frequency_label') final String? frequencyLabel,
      final int? format,
      @JsonKey(name: 'format_label') final String? formatLabel,
      final int? direction,
      @JsonKey(name: 'direction_label') final String? directionLabel,
      final int? aggregation,
      @JsonKey(name: 'aggregation_label') final String? aggregationLabel,
      final int? status,
      @JsonKey(name: 'average_actual_value') final double? averageActualValue,
      @JsonKey(name: 'average_target_value') final double? averageTargetValue,
      @JsonKey(name: 'target_value') final double? targetValue,
      final List<double>? data,
      final List<String>? labels}) = _$KeyResultGraphDetailImpl;

  factory _KeyResultGraphDetail.fromJson(Map<String, dynamic> json) =
      _$KeyResultGraphDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get frequency;
  @override
  @JsonKey(name: 'frequency_label')
  String? get frequencyLabel;
  @override
  int? get format;
  @override
  @JsonKey(name: 'format_label')
  String? get formatLabel;
  @override
  int? get direction;
  @override
  @JsonKey(name: 'direction_label')
  String? get directionLabel;
  @override
  int? get aggregation;
  @override
  @JsonKey(name: 'aggregation_label')
  String? get aggregationLabel;
  @override
  int? get status;
  @override
  @JsonKey(name: 'average_actual_value')
  double? get averageActualValue;
  @override
  @JsonKey(name: 'average_target_value')
  double? get averageTargetValue;
  @override
  @JsonKey(name: 'target_value')
  double? get targetValue;
  @override
  List<double>? get data;
  @override
  List<String>? get labels;

  /// Create a copy of KeyResultGraphDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyResultGraphDetailImplCopyWith<_$KeyResultGraphDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
