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
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dueDate => throw _privateConstructorUsedError;

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
      String? status,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'due_date') String? dueDate});
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
    Object? status = freezed,
    Object? formId = freezed,
    Object? dueDate = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      String? status,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'due_date') String? dueDate});
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
    Object? status = freezed,
    Object? formId = freezed,
    Object? dueDate = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
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
      this.status,
      @JsonKey(name: 'form_id') this.formId,
      @JsonKey(name: 'due_date') this.dueDate});

  factory _$OKRListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OKRListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? period;
  @override
  final String? status;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  @JsonKey(name: 'due_date')
  final String? dueDate;

  @override
  String toString() {
    return 'OKRList(id: $id, period: $period, status: $status, formId: $formId, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKRListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, period, status, formId, dueDate);

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
      final String? status,
      @JsonKey(name: 'form_id') final int? formId,
      @JsonKey(name: 'due_date') final String? dueDate}) = _$OKRListImpl;

  factory _OKRList.fromJson(Map<String, dynamic> json) = _$OKRListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get period;
  @override
  String? get status;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  @JsonKey(name: 'due_date')
  String? get dueDate;

  /// Create a copy of OKRList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OKRListImplCopyWith<_$OKRListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
