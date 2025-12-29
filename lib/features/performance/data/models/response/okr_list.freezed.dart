// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'okr_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OKRList _$OKRListFromJson(Map<String, dynamic> json) {
  return _OKRList.fromJson(json);
}

/// @nodoc
mixin _$OKRList {
  int? get id => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_year')
  int? get periodYear => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'objectives_count')
  int? get objectivesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_results')
  KeyResult? get keyResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OKRList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OKRListCopyWith<OKRList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OKRListCopyWith<$Res> {
  factory $OKRListCopyWith(OKRList value, $Res Function(OKRList) then) =
      _$OKRListCopyWithImpl<$Res, OKRList>;
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? name,
      @JsonKey(name: 'period_year') int? periodYear,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'objectives_count') int? objectivesCount,
      @JsonKey(name: 'key_results') KeyResult? keyResults,
      @JsonKey(name: 'created_by') CreatedBy? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $KeyResultCopyWith<$Res>? get keyResults;
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$OKRListCopyWithImpl<$Res, $Val extends OKRList>
    implements $OKRListCopyWith<$Res> {
  _$OKRListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? name = freezed,
    Object? periodYear = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tenantId = freezed,
    Object? objectivesCount = freezed,
    Object? keyResults = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      objectivesCount: freezed == objectivesCount
          ? _value.objectivesCount
          : objectivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as KeyResult?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
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

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyResultCopyWith<$Res>? get keyResults {
    if (_value.keyResults == null) {
      return null;
    }

    return $KeyResultCopyWith<$Res>(_value.keyResults!, (value) {
      return _then(_value.copyWith(keyResults: value) as $Val);
    });
  }

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OKRListImplCopyWith<$Res> implements $OKRListCopyWith<$Res> {
  factory _$$OKRListImplCopyWith(
          _$OKRListImpl value, $Res Function(_$OKRListImpl) then) =
      __$$OKRListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? name,
      @JsonKey(name: 'period_year') int? periodYear,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'objectives_count') int? objectivesCount,
      @JsonKey(name: 'key_results') KeyResult? keyResults,
      @JsonKey(name: 'created_by') CreatedBy? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $KeyResultCopyWith<$Res>? get keyResults;
  @override
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$OKRListImplCopyWithImpl<$Res>
    extends _$OKRListCopyWithImpl<$Res, _$OKRListImpl>
    implements _$$OKRListImplCopyWith<$Res> {
  __$$OKRListImplCopyWithImpl(
      _$OKRListImpl _value, $Res Function(_$OKRListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? name = freezed,
    Object? periodYear = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tenantId = freezed,
    Object? objectivesCount = freezed,
    Object? keyResults = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OKRListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      objectivesCount: freezed == objectivesCount
          ? _value.objectivesCount
          : objectivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as KeyResult?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
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
class _$OKRListImpl implements _OKRList {
  const _$OKRListImpl(
      {this.id,
      this.period,
      this.name,
      @JsonKey(name: 'period_year') this.periodYear,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'objectives_count') this.objectivesCount,
      @JsonKey(name: 'key_results') this.keyResults,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OKRListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OKRListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? period;
  @override
  final String? name;
  @override
  @JsonKey(name: 'period_year')
  final int? periodYear;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'objectives_count')
  final int? objectivesCount;
  @override
  @JsonKey(name: 'key_results')
  final KeyResult? keyResults;
  @override
  @JsonKey(name: 'created_by')
  final CreatedBy? createdBy;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OKRList(id: $id, period: $period, name: $name, periodYear: $periodYear, status: $status, statusLabel: $statusLabel, startDate: $startDate, endDate: $endDate, tenantId: $tenantId, objectivesCount: $objectivesCount, keyResults: $keyResults, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKRListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.periodYear, periodYear) ||
                other.periodYear == periodYear) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.objectivesCount, objectivesCount) ||
                other.objectivesCount == objectivesCount) &&
            (identical(other.keyResults, keyResults) ||
                other.keyResults == keyResults) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      period,
      name,
      periodYear,
      status,
      statusLabel,
      startDate,
      endDate,
      tenantId,
      objectivesCount,
      keyResults,
      createdBy,
      createdAt,
      updatedAt);

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OKRListImplCopyWith<_$OKRListImpl> get copyWith =>
      __$$OKRListImplCopyWithImpl<_$OKRListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OKRListImplToJson(
      this,
    );
  }
}

abstract class _OKRList implements OKRList {
  const factory _OKRList(
      {final int? id,
      final String? period,
      final String? name,
      @JsonKey(name: 'period_year') final int? periodYear,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      @JsonKey(name: 'objectives_count') final int? objectivesCount,
      @JsonKey(name: 'key_results') final KeyResult? keyResults,
      @JsonKey(name: 'created_by') final CreatedBy? createdBy,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$OKRListImpl;

  factory _OKRList.fromJson(Map<String, dynamic> json) = _$OKRListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get period;
  @override
  String? get name;
  @override
  @JsonKey(name: 'period_year')
  int? get periodYear;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'objectives_count')
  int? get objectivesCount;
  @override
  @JsonKey(name: 'key_results')
  KeyResult? get keyResults;
  @override
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OKRListImplCopyWith<_$OKRListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OKRDetail _$OKRDetailFromJson(Map<String, dynamic> json) {
  return _OKRDetail.fromJson(json);
}

/// @nodoc
mixin _$OKRDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_year')
  int? get periodYear => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'objectives_count')
  int? get objectivesCount => throw _privateConstructorUsedError;
  List<Objective>? get objectives => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_results')
  KeyResult? get keyResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OKRDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OKRDetailCopyWith<OKRDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OKRDetailCopyWith<$Res> {
  factory $OKRDetailCopyWith(OKRDetail value, $Res Function(OKRDetail) then) =
      _$OKRDetailCopyWithImpl<$Res, OKRDetail>;
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? name,
      @JsonKey(name: 'period_year') int? periodYear,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'objectives_count') int? objectivesCount,
      List<Objective>? objectives,
      @JsonKey(name: 'key_results') KeyResult? keyResults,
      @JsonKey(name: 'created_by') CreatedBy? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $KeyResultCopyWith<$Res>? get keyResults;
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$OKRDetailCopyWithImpl<$Res, $Val extends OKRDetail>
    implements $OKRDetailCopyWith<$Res> {
  _$OKRDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? name = freezed,
    Object? periodYear = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tenantId = freezed,
    Object? objectivesCount = freezed,
    Object? objectives = freezed,
    Object? keyResults = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      objectivesCount: freezed == objectivesCount
          ? _value.objectivesCount
          : objectivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      objectives: freezed == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<Objective>?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as KeyResult?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
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

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyResultCopyWith<$Res>? get keyResults {
    if (_value.keyResults == null) {
      return null;
    }

    return $KeyResultCopyWith<$Res>(_value.keyResults!, (value) {
      return _then(_value.copyWith(keyResults: value) as $Val);
    });
  }

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OKRDetailImplCopyWith<$Res>
    implements $OKRDetailCopyWith<$Res> {
  factory _$$OKRDetailImplCopyWith(
          _$OKRDetailImpl value, $Res Function(_$OKRDetailImpl) then) =
      __$$OKRDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? name,
      @JsonKey(name: 'period_year') int? periodYear,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'objectives_count') int? objectivesCount,
      List<Objective>? objectives,
      @JsonKey(name: 'key_results') KeyResult? keyResults,
      @JsonKey(name: 'created_by') CreatedBy? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $KeyResultCopyWith<$Res>? get keyResults;
  @override
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$OKRDetailImplCopyWithImpl<$Res>
    extends _$OKRDetailCopyWithImpl<$Res, _$OKRDetailImpl>
    implements _$$OKRDetailImplCopyWith<$Res> {
  __$$OKRDetailImplCopyWithImpl(
      _$OKRDetailImpl _value, $Res Function(_$OKRDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? name = freezed,
    Object? periodYear = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? tenantId = freezed,
    Object? objectivesCount = freezed,
    Object? objectives = freezed,
    Object? keyResults = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OKRDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      objectivesCount: freezed == objectivesCount
          ? _value.objectivesCount
          : objectivesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      objectives: freezed == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<Objective>?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as KeyResult?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
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
class _$OKRDetailImpl implements _OKRDetail {
  const _$OKRDetailImpl(
      {this.id,
      this.period,
      this.name,
      @JsonKey(name: 'period_year') this.periodYear,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'objectives_count') this.objectivesCount,
      final List<Objective>? objectives,
      @JsonKey(name: 'key_results') this.keyResults,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _objectives = objectives;

  factory _$OKRDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OKRDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? period;
  @override
  final String? name;
  @override
  @JsonKey(name: 'period_year')
  final int? periodYear;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'objectives_count')
  final int? objectivesCount;
  final List<Objective>? _objectives;
  @override
  List<Objective>? get objectives {
    final value = _objectives;
    if (value == null) return null;
    if (_objectives is EqualUnmodifiableListView) return _objectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'key_results')
  final KeyResult? keyResults;
  @override
  @JsonKey(name: 'created_by')
  final CreatedBy? createdBy;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OKRDetail(id: $id, period: $period, name: $name, periodYear: $periodYear, status: $status, statusLabel: $statusLabel, startDate: $startDate, endDate: $endDate, tenantId: $tenantId, objectivesCount: $objectivesCount, objectives: $objectives, keyResults: $keyResults, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKRDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.periodYear, periodYear) ||
                other.periodYear == periodYear) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.objectivesCount, objectivesCount) ||
                other.objectivesCount == objectivesCount) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            (identical(other.keyResults, keyResults) ||
                other.keyResults == keyResults) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      period,
      name,
      periodYear,
      status,
      statusLabel,
      startDate,
      endDate,
      tenantId,
      objectivesCount,
      const DeepCollectionEquality().hash(_objectives),
      keyResults,
      createdBy,
      createdAt,
      updatedAt);

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OKRDetailImplCopyWith<_$OKRDetailImpl> get copyWith =>
      __$$OKRDetailImplCopyWithImpl<_$OKRDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OKRDetailImplToJson(
      this,
    );
  }
}

abstract class _OKRDetail implements OKRDetail {
  const factory _OKRDetail(
      {final int? id,
      final String? period,
      final String? name,
      @JsonKey(name: 'period_year') final int? periodYear,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      @JsonKey(name: 'objectives_count') final int? objectivesCount,
      final List<Objective>? objectives,
      @JsonKey(name: 'key_results') final KeyResult? keyResults,
      @JsonKey(name: 'created_by') final CreatedBy? createdBy,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$OKRDetailImpl;

  factory _OKRDetail.fromJson(Map<String, dynamic> json) =
      _$OKRDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get period;
  @override
  String? get name;
  @override
  @JsonKey(name: 'period_year')
  int? get periodYear;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'objectives_count')
  int? get objectivesCount;
  @override
  List<Objective>? get objectives;
  @override
  @JsonKey(name: 'key_results')
  KeyResult? get keyResults;
  @override
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of OKRDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OKRDetailImplCopyWith<_$OKRDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Objective _$ObjectiveFromJson(Map<String, dynamic> json) {
  return _Objective.fromJson(json);
}

/// @nodoc
mixin _$Objective {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_results_count')
  int? get keyResultsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'key_results')
  List<KeyResultDetail>? get keyResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Objective to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Objective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObjectiveCopyWith<Objective> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectiveCopyWith<$Res> {
  factory $ObjectiveCopyWith(Objective value, $Res Function(Objective) then) =
      _$ObjectiveCopyWithImpl<$Res, Objective>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? progress,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'key_results_count') int? keyResultsCount,
      @JsonKey(name: 'key_results') List<KeyResultDetail>? keyResults,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$ObjectiveCopyWithImpl<$Res, $Val extends Objective>
    implements $ObjectiveCopyWith<$Res> {
  _$ObjectiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Objective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? okrCycleId = freezed,
    Object? tenantId = freezed,
    Object? keyResultsCount = freezed,
    Object? keyResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResultsCount: freezed == keyResultsCount
          ? _value.keyResultsCount
          : keyResultsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value.keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as List<KeyResultDetail>?,
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
}

/// @nodoc
abstract class _$$ObjectiveImplCopyWith<$Res>
    implements $ObjectiveCopyWith<$Res> {
  factory _$$ObjectiveImplCopyWith(
          _$ObjectiveImpl value, $Res Function(_$ObjectiveImpl) then) =
      __$$ObjectiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? progress,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'key_results_count') int? keyResultsCount,
      @JsonKey(name: 'key_results') List<KeyResultDetail>? keyResults,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$ObjectiveImplCopyWithImpl<$Res>
    extends _$ObjectiveCopyWithImpl<$Res, _$ObjectiveImpl>
    implements _$$ObjectiveImplCopyWith<$Res> {
  __$$ObjectiveImplCopyWithImpl(
      _$ObjectiveImpl _value, $Res Function(_$ObjectiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of Objective
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? okrCycleId = freezed,
    Object? tenantId = freezed,
    Object? keyResultsCount = freezed,
    Object? keyResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ObjectiveImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResultsCount: freezed == keyResultsCount
          ? _value.keyResultsCount
          : keyResultsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      keyResults: freezed == keyResults
          ? _value._keyResults
          : keyResults // ignore: cast_nullable_to_non_nullable
              as List<KeyResultDetail>?,
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
class _$ObjectiveImpl implements _Objective {
  const _$ObjectiveImpl(
      {this.id,
      this.title,
      this.description,
      this.progress,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      @JsonKey(name: 'okr_cycle_id') this.okrCycleId,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'key_results_count') this.keyResultsCount,
      @JsonKey(name: 'key_results') final List<KeyResultDetail>? keyResults,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _keyResults = keyResults;

  factory _$ObjectiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObjectiveImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? progress;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'okr_cycle_id')
  final int? okrCycleId;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'key_results_count')
  final int? keyResultsCount;
  final List<KeyResultDetail>? _keyResults;
  @override
  @JsonKey(name: 'key_results')
  List<KeyResultDetail>? get keyResults {
    final value = _keyResults;
    if (value == null) return null;
    if (_keyResults is EqualUnmodifiableListView) return _keyResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Objective(id: $id, title: $title, description: $description, progress: $progress, status: $status, statusLabel: $statusLabel, okrCycleId: $okrCycleId, tenantId: $tenantId, keyResultsCount: $keyResultsCount, keyResults: $keyResults, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectiveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.okrCycleId, okrCycleId) ||
                other.okrCycleId == okrCycleId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.keyResultsCount, keyResultsCount) ||
                other.keyResultsCount == keyResultsCount) &&
            const DeepCollectionEquality()
                .equals(other._keyResults, _keyResults) &&
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
      title,
      description,
      progress,
      status,
      statusLabel,
      okrCycleId,
      tenantId,
      keyResultsCount,
      const DeepCollectionEquality().hash(_keyResults),
      createdAt,
      updatedAt);

  /// Create a copy of Objective
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectiveImplCopyWith<_$ObjectiveImpl> get copyWith =>
      __$$ObjectiveImplCopyWithImpl<_$ObjectiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObjectiveImplToJson(
      this,
    );
  }
}

abstract class _Objective implements Objective {
  const factory _Objective(
      {final int? id,
      final String? title,
      final String? description,
      final int? progress,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      @JsonKey(name: 'okr_cycle_id') final int? okrCycleId,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      @JsonKey(name: 'key_results_count') final int? keyResultsCount,
      @JsonKey(name: 'key_results') final List<KeyResultDetail>? keyResults,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$ObjectiveImpl;

  factory _Objective.fromJson(Map<String, dynamic> json) =
      _$ObjectiveImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get progress;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'key_results_count')
  int? get keyResultsCount;
  @override
  @JsonKey(name: 'key_results')
  List<KeyResultDetail>? get keyResults;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of Objective
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObjectiveImplCopyWith<_$ObjectiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyResultDetail _$KeyResultDetailFromJson(Map<String, dynamic> json) {
  return _KeyResultDetail.fromJson(json);
}

/// @nodoc
mixin _$KeyResultDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'frequency_label')
  String? get frequencyLabel => throw _privateConstructorUsedError;
  int? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'format_label')
  String? get formatLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_value')
  int? get startValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_value')
  int? get currentValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_value')
  int? get targetValue => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  int? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: 'direction_label')
  String? get directionLabel => throw _privateConstructorUsedError;
  int? get aggregation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aggregation_label')
  String? get aggregationLabel => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'objective_id')
  int? get objectiveId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this KeyResultDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyResultDetailCopyWith<KeyResultDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyResultDetailCopyWith<$Res> {
  factory $KeyResultDetailCopyWith(
          KeyResultDetail value, $Res Function(KeyResultDetail) then) =
      _$KeyResultDetailCopyWithImpl<$Res, KeyResultDetail>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      @JsonKey(name: 'start_value') int? startValue,
      @JsonKey(name: 'current_value') int? currentValue,
      @JsonKey(name: 'target_value') int? targetValue,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? progress,
      @JsonKey(name: 'objective_id') int? objectiveId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$KeyResultDetailCopyWithImpl<$Res, $Val extends KeyResultDetail>
    implements $KeyResultDetailCopyWith<$Res> {
  _$KeyResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? startValue = freezed,
    Object? currentValue = freezed,
    Object? targetValue = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? progress = freezed,
    Object? objectiveId = freezed,
    Object? jobPositionId = freezed,
    Object? jobLevelId = freezed,
    Object? tenantId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      startValue: freezed == startValue
          ? _value.startValue
          : startValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
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
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      objectiveId: freezed == objectiveId
          ? _value.objectiveId
          : objectiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
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
}

/// @nodoc
abstract class _$$KeyResultDetailImplCopyWith<$Res>
    implements $KeyResultDetailCopyWith<$Res> {
  factory _$$KeyResultDetailImplCopyWith(_$KeyResultDetailImpl value,
          $Res Function(_$KeyResultDetailImpl) then) =
      __$$KeyResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      @JsonKey(name: 'start_value') int? startValue,
      @JsonKey(name: 'current_value') int? currentValue,
      @JsonKey(name: 'target_value') int? targetValue,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? progress,
      @JsonKey(name: 'objective_id') int? objectiveId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$KeyResultDetailImplCopyWithImpl<$Res>
    extends _$KeyResultDetailCopyWithImpl<$Res, _$KeyResultDetailImpl>
    implements _$$KeyResultDetailImplCopyWith<$Res> {
  __$$KeyResultDetailImplCopyWithImpl(
      _$KeyResultDetailImpl _value, $Res Function(_$KeyResultDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? startValue = freezed,
    Object? currentValue = freezed,
    Object? targetValue = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? progress = freezed,
    Object? objectiveId = freezed,
    Object? jobPositionId = freezed,
    Object? jobLevelId = freezed,
    Object? tenantId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$KeyResultDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      startValue: freezed == startValue
          ? _value.startValue
          : startValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
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
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      objectiveId: freezed == objectiveId
          ? _value.objectiveId
          : objectiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$KeyResultDetailImpl implements _KeyResultDetail {
  const _$KeyResultDetailImpl(
      {this.id,
      this.title,
      this.description,
      this.frequency,
      @JsonKey(name: 'frequency_label') this.frequencyLabel,
      this.format,
      @JsonKey(name: 'format_label') this.formatLabel,
      @JsonKey(name: 'start_value') this.startValue,
      @JsonKey(name: 'current_value') this.currentValue,
      @JsonKey(name: 'target_value') this.targetValue,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      this.direction,
      @JsonKey(name: 'direction_label') this.directionLabel,
      this.aggregation,
      @JsonKey(name: 'aggregation_label') this.aggregationLabel,
      this.progress,
      @JsonKey(name: 'objective_id') this.objectiveId,
      @JsonKey(name: 'job_position_id') this.jobPositionId,
      @JsonKey(name: 'job_level_id') this.jobLevelId,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$KeyResultDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyResultDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
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
  @JsonKey(name: 'start_value')
  final int? startValue;
  @override
  @JsonKey(name: 'current_value')
  final int? currentValue;
  @override
  @JsonKey(name: 'target_value')
  final int? targetValue;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
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
  final int? progress;
  @override
  @JsonKey(name: 'objective_id')
  final int? objectiveId;
  @override
  @JsonKey(name: 'job_position_id')
  final int? jobPositionId;
  @override
  @JsonKey(name: 'job_level_id')
  final int? jobLevelId;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'KeyResultDetail(id: $id, title: $title, description: $description, frequency: $frequency, frequencyLabel: $frequencyLabel, format: $format, formatLabel: $formatLabel, startValue: $startValue, currentValue: $currentValue, targetValue: $targetValue, status: $status, statusLabel: $statusLabel, direction: $direction, directionLabel: $directionLabel, aggregation: $aggregation, aggregationLabel: $aggregationLabel, progress: $progress, objectiveId: $objectiveId, jobPositionId: $jobPositionId, jobLevelId: $jobLevelId, tenantId: $tenantId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyResultDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyLabel, frequencyLabel) ||
                other.frequencyLabel == frequencyLabel) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.formatLabel, formatLabel) ||
                other.formatLabel == formatLabel) &&
            (identical(other.startValue, startValue) ||
                other.startValue == startValue) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.directionLabel, directionLabel) ||
                other.directionLabel == directionLabel) &&
            (identical(other.aggregation, aggregation) ||
                other.aggregation == aggregation) &&
            (identical(other.aggregationLabel, aggregationLabel) ||
                other.aggregationLabel == aggregationLabel) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.objectiveId, objectiveId) ||
                other.objectiveId == objectiveId) &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.jobLevelId, jobLevelId) ||
                other.jobLevelId == jobLevelId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
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
        title,
        description,
        frequency,
        frequencyLabel,
        format,
        formatLabel,
        startValue,
        currentValue,
        targetValue,
        status,
        statusLabel,
        direction,
        directionLabel,
        aggregation,
        aggregationLabel,
        progress,
        objectiveId,
        jobPositionId,
        jobLevelId,
        tenantId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of KeyResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyResultDetailImplCopyWith<_$KeyResultDetailImpl> get copyWith =>
      __$$KeyResultDetailImplCopyWithImpl<_$KeyResultDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyResultDetailImplToJson(
      this,
    );
  }
}

abstract class _KeyResultDetail implements KeyResultDetail {
  const factory _KeyResultDetail(
          {final int? id,
          final String? title,
          final String? description,
          final int? frequency,
          @JsonKey(name: 'frequency_label') final String? frequencyLabel,
          final int? format,
          @JsonKey(name: 'format_label') final String? formatLabel,
          @JsonKey(name: 'start_value') final int? startValue,
          @JsonKey(name: 'current_value') final int? currentValue,
          @JsonKey(name: 'target_value') final int? targetValue,
          final int? status,
          @JsonKey(name: 'status_label') final String? statusLabel,
          final int? direction,
          @JsonKey(name: 'direction_label') final String? directionLabel,
          final int? aggregation,
          @JsonKey(name: 'aggregation_label') final String? aggregationLabel,
          final int? progress,
          @JsonKey(name: 'objective_id') final int? objectiveId,
          @JsonKey(name: 'job_position_id') final int? jobPositionId,
          @JsonKey(name: 'job_level_id') final int? jobLevelId,
          @JsonKey(name: 'tenant_id') final int? tenantId,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$KeyResultDetailImpl;

  factory _KeyResultDetail.fromJson(Map<String, dynamic> json) =
      _$KeyResultDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
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
  @JsonKey(name: 'start_value')
  int? get startValue;
  @override
  @JsonKey(name: 'current_value')
  int? get currentValue;
  @override
  @JsonKey(name: 'target_value')
  int? get targetValue;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
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
  int? get progress;
  @override
  @JsonKey(name: 'objective_id')
  int? get objectiveId;
  @override
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId;
  @override
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of KeyResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyResultDetailImplCopyWith<_$KeyResultDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatedBy _$CreatedByFromJson(Map<String, dynamic> json) {
  return _CreatedBy.fromJson(json);
}

/// @nodoc
mixin _$CreatedBy {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this CreatedBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedByCopyWith<CreatedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedByCopyWith<$Res> {
  factory $CreatedByCopyWith(CreatedBy value, $Res Function(CreatedBy) then) =
      _$CreatedByCopyWithImpl<$Res, CreatedBy>;
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class _$CreatedByCopyWithImpl<$Res, $Val extends CreatedBy>
    implements $CreatedByCopyWith<$Res> {
  _$CreatedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedBy
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
abstract class _$$CreatedByImplCopyWith<$Res>
    implements $CreatedByCopyWith<$Res> {
  factory _$$CreatedByImplCopyWith(
          _$CreatedByImpl value, $Res Function(_$CreatedByImpl) then) =
      __$$CreatedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class __$$CreatedByImplCopyWithImpl<$Res>
    extends _$CreatedByCopyWithImpl<$Res, _$CreatedByImpl>
    implements _$$CreatedByImplCopyWith<$Res> {
  __$$CreatedByImplCopyWithImpl(
      _$CreatedByImpl _value, $Res Function(_$CreatedByImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$CreatedByImpl(
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
class _$CreatedByImpl implements _CreatedBy {
  const _$CreatedByImpl({this.id, this.name, this.email});

  factory _$CreatedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedByImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'CreatedBy(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedByImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedByImplCopyWith<_$CreatedByImpl> get copyWith =>
      __$$CreatedByImplCopyWithImpl<_$CreatedByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedByImplToJson(
      this,
    );
  }
}

abstract class _CreatedBy implements CreatedBy {
  const factory _CreatedBy(
      {final int? id,
      final String? name,
      final String? email}) = _$CreatedByImpl;

  factory _CreatedBy.fromJson(Map<String, dynamic> json) =
      _$CreatedByImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedByImplCopyWith<_$CreatedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyResult _$KeyResultFromJson(Map<String, dynamic> json) {
  return _KeyResult.fromJson(json);
}

/// @nodoc
mixin _$KeyResult {
  int? get total => throw _privateConstructorUsedError;
  int? get draft => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  int? get done => throw _privateConstructorUsedError;
  int? get achieved => throw _privateConstructorUsedError;

  /// Serializes this KeyResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyResultCopyWith<KeyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyResultCopyWith<$Res> {
  factory $KeyResultCopyWith(KeyResult value, $Res Function(KeyResult) then) =
      _$KeyResultCopyWithImpl<$Res, KeyResult>;
  @useResult
  $Res call({int? total, int? draft, int? active, int? done, int? achieved});
}

/// @nodoc
class _$KeyResultCopyWithImpl<$Res, $Val extends KeyResult>
    implements $KeyResultCopyWith<$Res> {
  _$KeyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? draft = freezed,
    Object? active = freezed,
    Object? done = freezed,
    Object? achieved = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int?,
      achieved: freezed == achieved
          ? _value.achieved
          : achieved // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyResultImplCopyWith<$Res>
    implements $KeyResultCopyWith<$Res> {
  factory _$$KeyResultImplCopyWith(
          _$KeyResultImpl value, $Res Function(_$KeyResultImpl) then) =
      __$$KeyResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? draft, int? active, int? done, int? achieved});
}

/// @nodoc
class __$$KeyResultImplCopyWithImpl<$Res>
    extends _$KeyResultCopyWithImpl<$Res, _$KeyResultImpl>
    implements _$$KeyResultImplCopyWith<$Res> {
  __$$KeyResultImplCopyWithImpl(
      _$KeyResultImpl _value, $Res Function(_$KeyResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? draft = freezed,
    Object? active = freezed,
    Object? done = freezed,
    Object? achieved = freezed,
  }) {
    return _then(_$KeyResultImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int?,
      achieved: freezed == achieved
          ? _value.achieved
          : achieved // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyResultImpl implements _KeyResult {
  const _$KeyResultImpl(
      {this.total, this.draft, this.active, this.done, this.achieved});

  factory _$KeyResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyResultImplFromJson(json);

  @override
  final int? total;
  @override
  final int? draft;
  @override
  final int? active;
  @override
  final int? done;
  @override
  final int? achieved;

  @override
  String toString() {
    return 'KeyResult(total: $total, draft: $draft, active: $active, done: $done, achieved: $achieved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyResultImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.achieved, achieved) ||
                other.achieved == achieved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, draft, active, done, achieved);

  /// Create a copy of KeyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyResultImplCopyWith<_$KeyResultImpl> get copyWith =>
      __$$KeyResultImplCopyWithImpl<_$KeyResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyResultImplToJson(
      this,
    );
  }
}

abstract class _KeyResult implements KeyResult {
  const factory _KeyResult(
      {final int? total,
      final int? draft,
      final int? active,
      final int? done,
      final int? achieved}) = _$KeyResultImpl;

  factory _KeyResult.fromJson(Map<String, dynamic> json) =
      _$KeyResultImpl.fromJson;

  @override
  int? get total;
  @override
  int? get draft;
  @override
  int? get active;
  @override
  int? get done;
  @override
  int? get achieved;

  /// Create a copy of KeyResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyResultImplCopyWith<_$KeyResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OKRTracking _$OKRTrackingFromJson(Map<String, dynamic> json) {
  return _OKRTracking.fromJson(json);
}

/// @nodoc
mixin _$OKRTracking {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'frequency_label')
  String? get frequencyLabel => throw _privateConstructorUsedError;
  int? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'format_label')
  String? get formatLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_value')
  int? get startValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_value')
  int? get currentValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_value')
  int? get targetValue => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  int? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: 'direction_label')
  String? get directionLabel => throw _privateConstructorUsedError;
  int? get aggregation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aggregation_label')
  String? get aggregationLabel => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'objective_id')
  int? get objectiveId => throw _privateConstructorUsedError;
  Objective? get objective =>
      throw _privateConstructorUsedError; // Reused from your existing model
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracking_table')
  List<TrackingTable>? get trackingTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OKRTracking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OKRTrackingCopyWith<OKRTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OKRTrackingCopyWith<$Res> {
  factory $OKRTrackingCopyWith(
          OKRTracking value, $Res Function(OKRTracking) then) =
      _$OKRTrackingCopyWithImpl<$Res, OKRTracking>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      @JsonKey(name: 'start_value') int? startValue,
      @JsonKey(name: 'current_value') int? currentValue,
      @JsonKey(name: 'target_value') int? targetValue,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? progress,
      @JsonKey(name: 'objective_id') int? objectiveId,
      Objective? objective,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'job_position') JobPosition? jobPosition,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'tracking_table') List<TrackingTable>? trackingTable,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $ObjectiveCopyWith<$Res>? get objective;
  $JobPositionCopyWith<$Res>? get jobPosition;
  $JobLevelCopyWith<$Res>? get jobLevel;
}

/// @nodoc
class _$OKRTrackingCopyWithImpl<$Res, $Val extends OKRTracking>
    implements $OKRTrackingCopyWith<$Res> {
  _$OKRTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? startValue = freezed,
    Object? currentValue = freezed,
    Object? targetValue = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? progress = freezed,
    Object? objectiveId = freezed,
    Object? objective = freezed,
    Object? jobPositionId = freezed,
    Object? jobPosition = freezed,
    Object? jobLevelId = freezed,
    Object? jobLevel = freezed,
    Object? tenantId = freezed,
    Object? trackingTable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      startValue: freezed == startValue
          ? _value.startValue
          : startValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
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
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      objectiveId: freezed == objectiveId
          ? _value.objectiveId
          : objectiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      objective: freezed == objective
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingTable: freezed == trackingTable
          ? _value.trackingTable
          : trackingTable // ignore: cast_nullable_to_non_nullable
              as List<TrackingTable>?,
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

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ObjectiveCopyWith<$Res>? get objective {
    if (_value.objective == null) {
      return null;
    }

    return $ObjectiveCopyWith<$Res>(_value.objective!, (value) {
      return _then(_value.copyWith(objective: value) as $Val);
    });
  }

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobPositionCopyWith<$Res>? get jobPosition {
    if (_value.jobPosition == null) {
      return null;
    }

    return $JobPositionCopyWith<$Res>(_value.jobPosition!, (value) {
      return _then(_value.copyWith(jobPosition: value) as $Val);
    });
  }

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobLevelCopyWith<$Res>? get jobLevel {
    if (_value.jobLevel == null) {
      return null;
    }

    return $JobLevelCopyWith<$Res>(_value.jobLevel!, (value) {
      return _then(_value.copyWith(jobLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OKRTrackingImplCopyWith<$Res>
    implements $OKRTrackingCopyWith<$Res> {
  factory _$$OKRTrackingImplCopyWith(
          _$OKRTrackingImpl value, $Res Function(_$OKRTrackingImpl) then) =
      __$$OKRTrackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? frequency,
      @JsonKey(name: 'frequency_label') String? frequencyLabel,
      int? format,
      @JsonKey(name: 'format_label') String? formatLabel,
      @JsonKey(name: 'start_value') int? startValue,
      @JsonKey(name: 'current_value') int? currentValue,
      @JsonKey(name: 'target_value') int? targetValue,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel,
      int? direction,
      @JsonKey(name: 'direction_label') String? directionLabel,
      int? aggregation,
      @JsonKey(name: 'aggregation_label') String? aggregationLabel,
      int? progress,
      @JsonKey(name: 'objective_id') int? objectiveId,
      Objective? objective,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'job_position') JobPosition? jobPosition,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'tracking_table') List<TrackingTable>? trackingTable,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $ObjectiveCopyWith<$Res>? get objective;
  @override
  $JobPositionCopyWith<$Res>? get jobPosition;
  @override
  $JobLevelCopyWith<$Res>? get jobLevel;
}

/// @nodoc
class __$$OKRTrackingImplCopyWithImpl<$Res>
    extends _$OKRTrackingCopyWithImpl<$Res, _$OKRTrackingImpl>
    implements _$$OKRTrackingImplCopyWith<$Res> {
  __$$OKRTrackingImplCopyWithImpl(
      _$OKRTrackingImpl _value, $Res Function(_$OKRTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? frequency = freezed,
    Object? frequencyLabel = freezed,
    Object? format = freezed,
    Object? formatLabel = freezed,
    Object? startValue = freezed,
    Object? currentValue = freezed,
    Object? targetValue = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? direction = freezed,
    Object? directionLabel = freezed,
    Object? aggregation = freezed,
    Object? aggregationLabel = freezed,
    Object? progress = freezed,
    Object? objectiveId = freezed,
    Object? objective = freezed,
    Object? jobPositionId = freezed,
    Object? jobPosition = freezed,
    Object? jobLevelId = freezed,
    Object? jobLevel = freezed,
    Object? tenantId = freezed,
    Object? trackingTable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OKRTrackingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      startValue: freezed == startValue
          ? _value.startValue
          : startValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
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
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      objectiveId: freezed == objectiveId
          ? _value.objectiveId
          : objectiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      objective: freezed == objective
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingTable: freezed == trackingTable
          ? _value._trackingTable
          : trackingTable // ignore: cast_nullable_to_non_nullable
              as List<TrackingTable>?,
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
class _$OKRTrackingImpl implements _OKRTracking {
  const _$OKRTrackingImpl(
      {this.id,
      this.title,
      this.description,
      this.frequency,
      @JsonKey(name: 'frequency_label') this.frequencyLabel,
      this.format,
      @JsonKey(name: 'format_label') this.formatLabel,
      @JsonKey(name: 'start_value') this.startValue,
      @JsonKey(name: 'current_value') this.currentValue,
      @JsonKey(name: 'target_value') this.targetValue,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel,
      this.direction,
      @JsonKey(name: 'direction_label') this.directionLabel,
      this.aggregation,
      @JsonKey(name: 'aggregation_label') this.aggregationLabel,
      this.progress,
      @JsonKey(name: 'objective_id') this.objectiveId,
      this.objective,
      @JsonKey(name: 'job_position_id') this.jobPositionId,
      @JsonKey(name: 'job_position') this.jobPosition,
      @JsonKey(name: 'job_level_id') this.jobLevelId,
      @JsonKey(name: 'job_level') this.jobLevel,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'tracking_table') final List<TrackingTable>? trackingTable,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _trackingTable = trackingTable;

  factory _$OKRTrackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OKRTrackingImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
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
  @JsonKey(name: 'start_value')
  final int? startValue;
  @override
  @JsonKey(name: 'current_value')
  final int? currentValue;
  @override
  @JsonKey(name: 'target_value')
  final int? targetValue;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
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
  final int? progress;
  @override
  @JsonKey(name: 'objective_id')
  final int? objectiveId;
  @override
  final Objective? objective;
// Reused from your existing model
  @override
  @JsonKey(name: 'job_position_id')
  final int? jobPositionId;
  @override
  @JsonKey(name: 'job_position')
  final JobPosition? jobPosition;
  @override
  @JsonKey(name: 'job_level_id')
  final int? jobLevelId;
  @override
  @JsonKey(name: 'job_level')
  final JobLevel? jobLevel;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  final List<TrackingTable>? _trackingTable;
  @override
  @JsonKey(name: 'tracking_table')
  List<TrackingTable>? get trackingTable {
    final value = _trackingTable;
    if (value == null) return null;
    if (_trackingTable is EqualUnmodifiableListView) return _trackingTable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OKRTracking(id: $id, title: $title, description: $description, frequency: $frequency, frequencyLabel: $frequencyLabel, format: $format, formatLabel: $formatLabel, startValue: $startValue, currentValue: $currentValue, targetValue: $targetValue, status: $status, statusLabel: $statusLabel, direction: $direction, directionLabel: $directionLabel, aggregation: $aggregation, aggregationLabel: $aggregationLabel, progress: $progress, objectiveId: $objectiveId, objective: $objective, jobPositionId: $jobPositionId, jobPosition: $jobPosition, jobLevelId: $jobLevelId, jobLevel: $jobLevel, tenantId: $tenantId, trackingTable: $trackingTable, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKRTrackingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyLabel, frequencyLabel) ||
                other.frequencyLabel == frequencyLabel) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.formatLabel, formatLabel) ||
                other.formatLabel == formatLabel) &&
            (identical(other.startValue, startValue) ||
                other.startValue == startValue) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.directionLabel, directionLabel) ||
                other.directionLabel == directionLabel) &&
            (identical(other.aggregation, aggregation) ||
                other.aggregation == aggregation) &&
            (identical(other.aggregationLabel, aggregationLabel) ||
                other.aggregationLabel == aggregationLabel) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.objectiveId, objectiveId) ||
                other.objectiveId == objectiveId) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.jobPosition, jobPosition) ||
                other.jobPosition == jobPosition) &&
            (identical(other.jobLevelId, jobLevelId) ||
                other.jobLevelId == jobLevelId) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            const DeepCollectionEquality()
                .equals(other._trackingTable, _trackingTable) &&
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
        title,
        description,
        frequency,
        frequencyLabel,
        format,
        formatLabel,
        startValue,
        currentValue,
        targetValue,
        status,
        statusLabel,
        direction,
        directionLabel,
        aggregation,
        aggregationLabel,
        progress,
        objectiveId,
        objective,
        jobPositionId,
        jobPosition,
        jobLevelId,
        jobLevel,
        tenantId,
        const DeepCollectionEquality().hash(_trackingTable),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OKRTrackingImplCopyWith<_$OKRTrackingImpl> get copyWith =>
      __$$OKRTrackingImplCopyWithImpl<_$OKRTrackingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OKRTrackingImplToJson(
      this,
    );
  }
}

abstract class _OKRTracking implements OKRTracking {
  const factory _OKRTracking(
      {final int? id,
      final String? title,
      final String? description,
      final int? frequency,
      @JsonKey(name: 'frequency_label') final String? frequencyLabel,
      final int? format,
      @JsonKey(name: 'format_label') final String? formatLabel,
      @JsonKey(name: 'start_value') final int? startValue,
      @JsonKey(name: 'current_value') final int? currentValue,
      @JsonKey(name: 'target_value') final int? targetValue,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel,
      final int? direction,
      @JsonKey(name: 'direction_label') final String? directionLabel,
      final int? aggregation,
      @JsonKey(name: 'aggregation_label') final String? aggregationLabel,
      final int? progress,
      @JsonKey(name: 'objective_id') final int? objectiveId,
      final Objective? objective,
      @JsonKey(name: 'job_position_id') final int? jobPositionId,
      @JsonKey(name: 'job_position') final JobPosition? jobPosition,
      @JsonKey(name: 'job_level_id') final int? jobLevelId,
      @JsonKey(name: 'job_level') final JobLevel? jobLevel,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      @JsonKey(name: 'tracking_table') final List<TrackingTable>? trackingTable,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$OKRTrackingImpl;

  factory _OKRTracking.fromJson(Map<String, dynamic> json) =
      _$OKRTrackingImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
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
  @JsonKey(name: 'start_value')
  int? get startValue;
  @override
  @JsonKey(name: 'current_value')
  int? get currentValue;
  @override
  @JsonKey(name: 'target_value')
  int? get targetValue;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
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
  int? get progress;
  @override
  @JsonKey(name: 'objective_id')
  int? get objectiveId;
  @override
  Objective? get objective; // Reused from your existing model
  @override
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId;
  @override
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition;
  @override
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId;
  @override
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'tracking_table')
  List<TrackingTable>? get trackingTable;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of OKRTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OKRTrackingImplCopyWith<_$OKRTrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackingTable _$TrackingTableFromJson(Map<String, dynamic> json) {
  return _TrackingTable.fromJson(json);
}

/// @nodoc
mixin _$TrackingTable {
  @JsonKey(name: 'period_id')
  int? get periodId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_value')
  String? get actualValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_value')
  String? get targetValue => throw _privateConstructorUsedError;

  /// Serializes this TrackingTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackingTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingTableCopyWith<TrackingTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTableCopyWith<$Res> {
  factory $TrackingTableCopyWith(
          TrackingTable value, $Res Function(TrackingTable) then) =
      _$TrackingTableCopyWithImpl<$Res, TrackingTable>;
  @useResult
  $Res call(
      {@JsonKey(name: 'period_id') int? periodId,
      String? label,
      @JsonKey(name: 'actual_value') String? actualValue,
      @JsonKey(name: 'target_value') String? targetValue});
}

/// @nodoc
class _$TrackingTableCopyWithImpl<$Res, $Val extends TrackingTable>
    implements $TrackingTableCopyWith<$Res> {
  _$TrackingTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodId = freezed,
    Object? label = freezed,
    Object? actualValue = freezed,
    Object? targetValue = freezed,
  }) {
    return _then(_value.copyWith(
      periodId: freezed == periodId
          ? _value.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingTableImplCopyWith<$Res>
    implements $TrackingTableCopyWith<$Res> {
  factory _$$TrackingTableImplCopyWith(
          _$TrackingTableImpl value, $Res Function(_$TrackingTableImpl) then) =
      __$$TrackingTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'period_id') int? periodId,
      String? label,
      @JsonKey(name: 'actual_value') String? actualValue,
      @JsonKey(name: 'target_value') String? targetValue});
}

/// @nodoc
class __$$TrackingTableImplCopyWithImpl<$Res>
    extends _$TrackingTableCopyWithImpl<$Res, _$TrackingTableImpl>
    implements _$$TrackingTableImplCopyWith<$Res> {
  __$$TrackingTableImplCopyWithImpl(
      _$TrackingTableImpl _value, $Res Function(_$TrackingTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodId = freezed,
    Object? label = freezed,
    Object? actualValue = freezed,
    Object? targetValue = freezed,
  }) {
    return _then(_$TrackingTableImpl(
      periodId: freezed == periodId
          ? _value.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingTableImpl implements _TrackingTable {
  const _$TrackingTableImpl(
      {@JsonKey(name: 'period_id') this.periodId,
      this.label,
      @JsonKey(name: 'actual_value') this.actualValue,
      @JsonKey(name: 'target_value') this.targetValue});

  factory _$TrackingTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingTableImplFromJson(json);

  @override
  @JsonKey(name: 'period_id')
  final int? periodId;
  @override
  final String? label;
  @override
  @JsonKey(name: 'actual_value')
  final String? actualValue;
  @override
  @JsonKey(name: 'target_value')
  final String? targetValue;

  @override
  String toString() {
    return 'TrackingTable(periodId: $periodId, label: $label, actualValue: $actualValue, targetValue: $targetValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTableImpl &&
            (identical(other.periodId, periodId) ||
                other.periodId == periodId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.actualValue, actualValue) ||
                other.actualValue == actualValue) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, periodId, label, actualValue, targetValue);

  /// Create a copy of TrackingTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTableImplCopyWith<_$TrackingTableImpl> get copyWith =>
      __$$TrackingTableImplCopyWithImpl<_$TrackingTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingTableImplToJson(
      this,
    );
  }
}

abstract class _TrackingTable implements TrackingTable {
  const factory _TrackingTable(
          {@JsonKey(name: 'period_id') final int? periodId,
          final String? label,
          @JsonKey(name: 'actual_value') final String? actualValue,
          @JsonKey(name: 'target_value') final String? targetValue}) =
      _$TrackingTableImpl;

  factory _TrackingTable.fromJson(Map<String, dynamic> json) =
      _$TrackingTableImpl.fromJson;

  @override
  @JsonKey(name: 'period_id')
  int? get periodId;
  @override
  String? get label;
  @override
  @JsonKey(name: 'actual_value')
  String? get actualValue;
  @override
  @JsonKey(name: 'target_value')
  String? get targetValue;

  /// Create a copy of TrackingTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingTableImplCopyWith<_$TrackingTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobPosition _$JobPositionFromJson(Map<String, dynamic> json) {
  return _JobPosition.fromJson(json);
}

/// @nodoc
mixin _$JobPosition {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this JobPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPositionCopyWith<JobPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPositionCopyWith<$Res> {
  factory $JobPositionCopyWith(
          JobPosition value, $Res Function(JobPosition) then) =
      _$JobPositionCopyWithImpl<$Res, JobPosition>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$JobPositionCopyWithImpl<$Res, $Val extends JobPosition>
    implements $JobPositionCopyWith<$Res> {
  _$JobPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPositionImplCopyWith<$Res>
    implements $JobPositionCopyWith<$Res> {
  factory _$$JobPositionImplCopyWith(
          _$JobPositionImpl value, $Res Function(_$JobPositionImpl) then) =
      __$$JobPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$JobPositionImplCopyWithImpl<$Res>
    extends _$JobPositionCopyWithImpl<$Res, _$JobPositionImpl>
    implements _$$JobPositionImplCopyWith<$Res> {
  __$$JobPositionImplCopyWithImpl(
      _$JobPositionImpl _value, $Res Function(_$JobPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobPositionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPositionImpl implements _JobPosition {
  const _$JobPositionImpl({this.id, this.name});

  factory _$JobPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPositionImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'JobPosition(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPositionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      __$$JobPositionImplCopyWithImpl<_$JobPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPositionImplToJson(
      this,
    );
  }
}

abstract class _JobPosition implements JobPosition {
  const factory _JobPosition({final int? id, final String? name}) =
      _$JobPositionImpl;

  factory _JobPosition.fromJson(Map<String, dynamic> json) =
      _$JobPositionImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobLevel _$JobLevelFromJson(Map<String, dynamic> json) {
  return _JobLevel.fromJson(json);
}

/// @nodoc
mixin _$JobLevel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this JobLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobLevelCopyWith<JobLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobLevelCopyWith<$Res> {
  factory $JobLevelCopyWith(JobLevel value, $Res Function(JobLevel) then) =
      _$JobLevelCopyWithImpl<$Res, JobLevel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$JobLevelCopyWithImpl<$Res, $Val extends JobLevel>
    implements $JobLevelCopyWith<$Res> {
  _$JobLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobLevelImplCopyWith<$Res>
    implements $JobLevelCopyWith<$Res> {
  factory _$$JobLevelImplCopyWith(
          _$JobLevelImpl value, $Res Function(_$JobLevelImpl) then) =
      __$$JobLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$JobLevelImplCopyWithImpl<$Res>
    extends _$JobLevelCopyWithImpl<$Res, _$JobLevelImpl>
    implements _$$JobLevelImplCopyWith<$Res> {
  __$$JobLevelImplCopyWithImpl(
      _$JobLevelImpl _value, $Res Function(_$JobLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobLevelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobLevelImpl implements _JobLevel {
  const _$JobLevelImpl({this.id, this.name});

  factory _$JobLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobLevelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'JobLevel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      __$$JobLevelImplCopyWithImpl<_$JobLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobLevelImplToJson(
      this,
    );
  }
}

abstract class _JobLevel implements JobLevel {
  const factory _JobLevel({final int? id, final String? name}) = _$JobLevelImpl;

  factory _JobLevel.fromJson(Map<String, dynamic> json) =
      _$JobLevelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetTrackingValue _$SetTrackingValueFromJson(Map<String, dynamic> json) {
  return _SetTrackingValue.fromJson(json);
}

/// @nodoc
mixin _$SetTrackingValue {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'okr_key_result_id')
  int? get okrKeyResultId => throw _privateConstructorUsedError;
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_start')
  String? get periodStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_end')
  String? get periodEnd => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_value')
  String? get actualValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_value')
  String? get targetValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SetTrackingValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetTrackingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetTrackingValueCopyWith<SetTrackingValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTrackingValueCopyWith<$Res> {
  factory $SetTrackingValueCopyWith(
          SetTrackingValue value, $Res Function(SetTrackingValue) then) =
      _$SetTrackingValueCopyWithImpl<$Res, SetTrackingValue>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      @JsonKey(name: 'okr_key_result_id') int? okrKeyResultId,
      int? frequency,
      @JsonKey(name: 'period_start') String? periodStart,
      @JsonKey(name: 'period_end') String? periodEnd,
      String? label,
      @JsonKey(name: 'actual_value') String? actualValue,
      @JsonKey(name: 'target_value') String? targetValue,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$SetTrackingValueCopyWithImpl<$Res, $Val extends SetTrackingValue>
    implements $SetTrackingValueCopyWith<$Res> {
  _$SetTrackingValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetTrackingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? okrCycleId = freezed,
    Object? okrKeyResultId = freezed,
    Object? frequency = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
    Object? label = freezed,
    Object? actualValue = freezed,
    Object? targetValue = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      okrKeyResultId: freezed == okrKeyResultId
          ? _value.okrKeyResultId
          : okrKeyResultId // ignore: cast_nullable_to_non_nullable
              as int?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      periodStart: freezed == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as String?,
      periodEnd: freezed == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$SetTrackingValueImplCopyWith<$Res>
    implements $SetTrackingValueCopyWith<$Res> {
  factory _$$SetTrackingValueImplCopyWith(_$SetTrackingValueImpl value,
          $Res Function(_$SetTrackingValueImpl) then) =
      __$$SetTrackingValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'tenant_id') int? tenantId,
      @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
      @JsonKey(name: 'okr_key_result_id') int? okrKeyResultId,
      int? frequency,
      @JsonKey(name: 'period_start') String? periodStart,
      @JsonKey(name: 'period_end') String? periodEnd,
      String? label,
      @JsonKey(name: 'actual_value') String? actualValue,
      @JsonKey(name: 'target_value') String? targetValue,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$SetTrackingValueImplCopyWithImpl<$Res>
    extends _$SetTrackingValueCopyWithImpl<$Res, _$SetTrackingValueImpl>
    implements _$$SetTrackingValueImplCopyWith<$Res> {
  __$$SetTrackingValueImplCopyWithImpl(_$SetTrackingValueImpl _value,
      $Res Function(_$SetTrackingValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetTrackingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? okrCycleId = freezed,
    Object? okrKeyResultId = freezed,
    Object? frequency = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
    Object? label = freezed,
    Object? actualValue = freezed,
    Object? targetValue = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SetTrackingValueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      okrCycleId: freezed == okrCycleId
          ? _value.okrCycleId
          : okrCycleId // ignore: cast_nullable_to_non_nullable
              as int?,
      okrKeyResultId: freezed == okrKeyResultId
          ? _value.okrKeyResultId
          : okrKeyResultId // ignore: cast_nullable_to_non_nullable
              as int?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      periodStart: freezed == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as String?,
      periodEnd: freezed == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as String?,
      targetValue: freezed == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
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
class _$SetTrackingValueImpl implements _SetTrackingValue {
  const _$SetTrackingValueImpl(
      {this.id,
      @JsonKey(name: 'tenant_id') this.tenantId,
      @JsonKey(name: 'okr_cycle_id') this.okrCycleId,
      @JsonKey(name: 'okr_key_result_id') this.okrKeyResultId,
      this.frequency,
      @JsonKey(name: 'period_start') this.periodStart,
      @JsonKey(name: 'period_end') this.periodEnd,
      this.label,
      @JsonKey(name: 'actual_value') this.actualValue,
      @JsonKey(name: 'target_value') this.targetValue,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SetTrackingValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetTrackingValueImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  @JsonKey(name: 'okr_cycle_id')
  final int? okrCycleId;
  @override
  @JsonKey(name: 'okr_key_result_id')
  final int? okrKeyResultId;
  @override
  final int? frequency;
  @override
  @JsonKey(name: 'period_start')
  final String? periodStart;
  @override
  @JsonKey(name: 'period_end')
  final String? periodEnd;
  @override
  final String? label;
  @override
  @JsonKey(name: 'actual_value')
  final String? actualValue;
  @override
  @JsonKey(name: 'target_value')
  final String? targetValue;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SetTrackingValue(id: $id, tenantId: $tenantId, okrCycleId: $okrCycleId, okrKeyResultId: $okrKeyResultId, frequency: $frequency, periodStart: $periodStart, periodEnd: $periodEnd, label: $label, actualValue: $actualValue, targetValue: $targetValue, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTrackingValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.okrCycleId, okrCycleId) ||
                other.okrCycleId == okrCycleId) &&
            (identical(other.okrKeyResultId, okrKeyResultId) ||
                other.okrKeyResultId == okrKeyResultId) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.actualValue, actualValue) ||
                other.actualValue == actualValue) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
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
      tenantId,
      okrCycleId,
      okrKeyResultId,
      frequency,
      periodStart,
      periodEnd,
      label,
      actualValue,
      targetValue,
      createdAt,
      updatedAt);

  /// Create a copy of SetTrackingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTrackingValueImplCopyWith<_$SetTrackingValueImpl> get copyWith =>
      __$$SetTrackingValueImplCopyWithImpl<_$SetTrackingValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetTrackingValueImplToJson(
      this,
    );
  }
}

abstract class _SetTrackingValue implements SetTrackingValue {
  const factory _SetTrackingValue(
          {final int? id,
          @JsonKey(name: 'tenant_id') final int? tenantId,
          @JsonKey(name: 'okr_cycle_id') final int? okrCycleId,
          @JsonKey(name: 'okr_key_result_id') final int? okrKeyResultId,
          final int? frequency,
          @JsonKey(name: 'period_start') final String? periodStart,
          @JsonKey(name: 'period_end') final String? periodEnd,
          final String? label,
          @JsonKey(name: 'actual_value') final String? actualValue,
          @JsonKey(name: 'target_value') final String? targetValue,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$SetTrackingValueImpl;

  factory _SetTrackingValue.fromJson(Map<String, dynamic> json) =
      _$SetTrackingValueImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  @JsonKey(name: 'okr_cycle_id')
  int? get okrCycleId;
  @override
  @JsonKey(name: 'okr_key_result_id')
  int? get okrKeyResultId;
  @override
  int? get frequency;
  @override
  @JsonKey(name: 'period_start')
  String? get periodStart;
  @override
  @JsonKey(name: 'period_end')
  String? get periodEnd;
  @override
  String? get label;
  @override
  @JsonKey(name: 'actual_value')
  String? get actualValue;
  @override
  @JsonKey(name: 'target_value')
  String? get targetValue;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SetTrackingValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetTrackingValueImplCopyWith<_$SetTrackingValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
