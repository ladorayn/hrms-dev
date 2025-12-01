// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupsAnswer _$GroupsAnswerFromJson(Map<String, dynamic> json) {
  return _GroupsAnswer.fromJson(json);
}

/// @nodoc
mixin _$GroupsAnswer {
  double? get score => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId => throw _privateConstructorUsedError;

  /// Serializes this GroupsAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupsAnswerCopyWith<GroupsAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsAnswerCopyWith<$Res> {
  factory $GroupsAnswerCopyWith(
          GroupsAnswer value, $Res Function(GroupsAnswer) then) =
      _$GroupsAnswerCopyWithImpl<$Res, GroupsAnswer>;
  @useResult
  $Res call(
      {double? score,
      String? name,
      @JsonKey(name: 'field_group_id') int? fieldGroupId});
}

/// @nodoc
class _$GroupsAnswerCopyWithImpl<$Res, $Val extends GroupsAnswer>
    implements $GroupsAnswerCopyWith<$Res> {
  _$GroupsAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? name = freezed,
    Object? fieldGroupId = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsAnswerImplCopyWith<$Res>
    implements $GroupsAnswerCopyWith<$Res> {
  factory _$$GroupsAnswerImplCopyWith(
          _$GroupsAnswerImpl value, $Res Function(_$GroupsAnswerImpl) then) =
      __$$GroupsAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? score,
      String? name,
      @JsonKey(name: 'field_group_id') int? fieldGroupId});
}

/// @nodoc
class __$$GroupsAnswerImplCopyWithImpl<$Res>
    extends _$GroupsAnswerCopyWithImpl<$Res, _$GroupsAnswerImpl>
    implements _$$GroupsAnswerImplCopyWith<$Res> {
  __$$GroupsAnswerImplCopyWithImpl(
      _$GroupsAnswerImpl _value, $Res Function(_$GroupsAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? name = freezed,
    Object? fieldGroupId = freezed,
  }) {
    return _then(_$GroupsAnswerImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsAnswerImpl implements _GroupsAnswer {
  const _$GroupsAnswerImpl(
      {this.score,
      this.name,
      @JsonKey(name: 'field_group_id') this.fieldGroupId});

  factory _$GroupsAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupsAnswerImplFromJson(json);

  @override
  final double? score;
  @override
  final String? name;
  @override
  @JsonKey(name: 'field_group_id')
  final int? fieldGroupId;

  @override
  String toString() {
    return 'GroupsAnswer(score: $score, name: $name, fieldGroupId: $fieldGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsAnswerImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fieldGroupId, fieldGroupId) ||
                other.fieldGroupId == fieldGroupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score, name, fieldGroupId);

  /// Create a copy of GroupsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsAnswerImplCopyWith<_$GroupsAnswerImpl> get copyWith =>
      __$$GroupsAnswerImplCopyWithImpl<_$GroupsAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsAnswerImplToJson(
      this,
    );
  }
}

abstract class _GroupsAnswer implements GroupsAnswer {
  const factory _GroupsAnswer(
          {final double? score,
          final String? name,
          @JsonKey(name: 'field_group_id') final int? fieldGroupId}) =
      _$GroupsAnswerImpl;

  factory _GroupsAnswer.fromJson(Map<String, dynamic> json) =
      _$GroupsAnswerImpl.fromJson;

  @override
  double? get score;
  @override
  String? get name;
  @override
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId;

  /// Create a copy of GroupsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsAnswerImplCopyWith<_$GroupsAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldsAnswer _$FieldsAnswerFromJson(Map<String, dynamic> json) {
  return _FieldsAnswer.fromJson(json);
}

/// @nodoc
mixin _$FieldsAnswer {
  double? get score => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_id')
  int? get fieldId => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_data')
  dynamic get additionalData => throw _privateConstructorUsedError;

  /// Serializes this FieldsAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldsAnswerCopyWith<FieldsAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsAnswerCopyWith<$Res> {
  factory $FieldsAnswerCopyWith(
          FieldsAnswer value, $Res Function(FieldsAnswer) then) =
      _$FieldsAnswerCopyWithImpl<$Res, FieldsAnswer>;
  @useResult
  $Res call(
      {double? score,
      dynamic value,
      @JsonKey(name: 'field_id') int? fieldId,
      @JsonKey(name: 'field_group_id') int? fieldGroupId,
      @JsonKey(name: 'additional_data') dynamic additionalData});
}

/// @nodoc
class _$FieldsAnswerCopyWithImpl<$Res, $Val extends FieldsAnswer>
    implements $FieldsAnswerCopyWith<$Res> {
  _$FieldsAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? value = freezed,
    Object? fieldId = freezed,
    Object? fieldGroupId = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldsAnswerImplCopyWith<$Res>
    implements $FieldsAnswerCopyWith<$Res> {
  factory _$$FieldsAnswerImplCopyWith(
          _$FieldsAnswerImpl value, $Res Function(_$FieldsAnswerImpl) then) =
      __$$FieldsAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? score,
      dynamic value,
      @JsonKey(name: 'field_id') int? fieldId,
      @JsonKey(name: 'field_group_id') int? fieldGroupId,
      @JsonKey(name: 'additional_data') dynamic additionalData});
}

/// @nodoc
class __$$FieldsAnswerImplCopyWithImpl<$Res>
    extends _$FieldsAnswerCopyWithImpl<$Res, _$FieldsAnswerImpl>
    implements _$$FieldsAnswerImplCopyWith<$Res> {
  __$$FieldsAnswerImplCopyWithImpl(
      _$FieldsAnswerImpl _value, $Res Function(_$FieldsAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? value = freezed,
    Object? fieldId = freezed,
    Object? fieldGroupId = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$FieldsAnswerImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsAnswerImpl implements _FieldsAnswer {
  const _$FieldsAnswerImpl(
      {this.score,
      this.value,
      @JsonKey(name: 'field_id') this.fieldId,
      @JsonKey(name: 'field_group_id') this.fieldGroupId,
      @JsonKey(name: 'additional_data') this.additionalData});

  factory _$FieldsAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsAnswerImplFromJson(json);

  @override
  final double? score;
  @override
  final dynamic value;
  @override
  @JsonKey(name: 'field_id')
  final int? fieldId;
  @override
  @JsonKey(name: 'field_group_id')
  final int? fieldGroupId;
  @override
  @JsonKey(name: 'additional_data')
  final dynamic additionalData;

  @override
  String toString() {
    return 'FieldsAnswer(score: $score, value: $value, fieldId: $fieldId, fieldGroupId: $fieldGroupId, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsAnswerImpl &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.fieldGroupId, fieldGroupId) ||
                other.fieldGroupId == fieldGroupId) &&
            const DeepCollectionEquality()
                .equals(other.additionalData, additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      score,
      const DeepCollectionEquality().hash(value),
      fieldId,
      fieldGroupId,
      const DeepCollectionEquality().hash(additionalData));

  /// Create a copy of FieldsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsAnswerImplCopyWith<_$FieldsAnswerImpl> get copyWith =>
      __$$FieldsAnswerImplCopyWithImpl<_$FieldsAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldsAnswerImplToJson(
      this,
    );
  }
}

abstract class _FieldsAnswer implements FieldsAnswer {
  const factory _FieldsAnswer(
          {final double? score,
          final dynamic value,
          @JsonKey(name: 'field_id') final int? fieldId,
          @JsonKey(name: 'field_group_id') final int? fieldGroupId,
          @JsonKey(name: 'additional_data') final dynamic additionalData}) =
      _$FieldsAnswerImpl;

  factory _FieldsAnswer.fromJson(Map<String, dynamic> json) =
      _$FieldsAnswerImpl.fromJson;

  @override
  double? get score;
  @override
  dynamic get value;
  @override
  @JsonKey(name: 'field_id')
  int? get fieldId;
  @override
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId;
  @override
  @JsonKey(name: 'additional_data')
  dynamic get additionalData;

  /// Create a copy of FieldsAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsAnswerImplCopyWith<_$FieldsAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormAnswer _$FormAnswerFromJson(Map<String, dynamic> json) {
  return _FormAnswer.fromJson(json);
}

/// @nodoc
mixin _$FormAnswer {
  List<FieldsAnswer>? get fields => throw _privateConstructorUsedError;
  List<GroupsAnswer>? get groups => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_score')
  double? get totalScore => throw _privateConstructorUsedError;

  /// Serializes this FormAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormAnswerCopyWith<FormAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormAnswerCopyWith<$Res> {
  factory $FormAnswerCopyWith(
          FormAnswer value, $Res Function(FormAnswer) then) =
      _$FormAnswerCopyWithImpl<$Res, FormAnswer>;
  @useResult
  $Res call(
      {List<FieldsAnswer>? fields,
      List<GroupsAnswer>? groups,
      @JsonKey(name: 'total_score') double? totalScore});
}

/// @nodoc
class _$FormAnswerCopyWithImpl<$Res, $Val extends FormAnswer>
    implements $FormAnswerCopyWith<$Res> {
  _$FormAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? groups = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldsAnswer>?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupsAnswer>?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormAnswerImplCopyWith<$Res>
    implements $FormAnswerCopyWith<$Res> {
  factory _$$FormAnswerImplCopyWith(
          _$FormAnswerImpl value, $Res Function(_$FormAnswerImpl) then) =
      __$$FormAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FieldsAnswer>? fields,
      List<GroupsAnswer>? groups,
      @JsonKey(name: 'total_score') double? totalScore});
}

/// @nodoc
class __$$FormAnswerImplCopyWithImpl<$Res>
    extends _$FormAnswerCopyWithImpl<$Res, _$FormAnswerImpl>
    implements _$$FormAnswerImplCopyWith<$Res> {
  __$$FormAnswerImplCopyWithImpl(
      _$FormAnswerImpl _value, $Res Function(_$FormAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? groups = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_$FormAnswerImpl(
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldsAnswer>?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupsAnswer>?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormAnswerImpl implements _FormAnswer {
  const _$FormAnswerImpl(
      {final List<FieldsAnswer>? fields,
      final List<GroupsAnswer>? groups,
      @JsonKey(name: 'total_score') this.totalScore})
      : _fields = fields,
        _groups = groups;

  factory _$FormAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormAnswerImplFromJson(json);

  final List<FieldsAnswer>? _fields;
  @override
  List<FieldsAnswer>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GroupsAnswer>? _groups;
  @override
  List<GroupsAnswer>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_score')
  final double? totalScore;

  @override
  String toString() {
    return 'FormAnswer(fields: $fields, groups: $groups, totalScore: $totalScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormAnswerImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_groups),
      totalScore);

  /// Create a copy of FormAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormAnswerImplCopyWith<_$FormAnswerImpl> get copyWith =>
      __$$FormAnswerImplCopyWithImpl<_$FormAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormAnswerImplToJson(
      this,
    );
  }
}

abstract class _FormAnswer implements FormAnswer {
  const factory _FormAnswer(
          {final List<FieldsAnswer>? fields,
          final List<GroupsAnswer>? groups,
          @JsonKey(name: 'total_score') final double? totalScore}) =
      _$FormAnswerImpl;

  factory _FormAnswer.fromJson(Map<String, dynamic> json) =
      _$FormAnswerImpl.fromJson;

  @override
  List<FieldsAnswer>? get fields;
  @override
  List<GroupsAnswer>? get groups;
  @override
  @JsonKey(name: 'total_score')
  double? get totalScore;

  /// Create a copy of FormAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormAnswerImplCopyWith<_$FormAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentAnswer _$AssessmentAnswerFromJson(Map<String, dynamic> json) {
  return _AssessmentAnswer.fromJson(json);
}

/// @nodoc
mixin _$AssessmentAnswer {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_by')
  int? get submittedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'formable_type')
  String? get formableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'formable_id')
  int? get formableId => throw _privateConstructorUsedError;
  FormAnswer? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'validated_for')
  int? get validatedFor => throw _privateConstructorUsedError;

  /// Serializes this AssessmentAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentAnswerCopyWith<AssessmentAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentAnswerCopyWith<$Res> {
  factory $AssessmentAnswerCopyWith(
          AssessmentAnswer value, $Res Function(AssessmentAnswer) then) =
      _$AssessmentAnswerCopyWithImpl<$Res, AssessmentAnswer>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy,
      @JsonKey(name: 'formable_type') String? formableType,
      @JsonKey(name: 'formable_id') int? formableId,
      FormAnswer? data,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'validated_for') int? validatedFor});

  $FormAnswerCopyWith<$Res>? get data;
}

/// @nodoc
class _$AssessmentAnswerCopyWithImpl<$Res, $Val extends AssessmentAnswer>
    implements $AssessmentAnswerCopyWith<$Res> {
  _$AssessmentAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
    Object? formableType = freezed,
    Object? formableId = freezed,
    Object? data = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? validatedFor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      formableType: freezed == formableType
          ? _value.formableType
          : formableType // ignore: cast_nullable_to_non_nullable
              as String?,
      formableId: freezed == formableId
          ? _value.formableId
          : formableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormAnswer?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedFor: freezed == validatedFor
          ? _value.validatedFor
          : validatedFor // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormAnswerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FormAnswerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssessmentAnswerImplCopyWith<$Res>
    implements $AssessmentAnswerCopyWith<$Res> {
  factory _$$AssessmentAnswerImplCopyWith(_$AssessmentAnswerImpl value,
          $Res Function(_$AssessmentAnswerImpl) then) =
      __$$AssessmentAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy,
      @JsonKey(name: 'formable_type') String? formableType,
      @JsonKey(name: 'formable_id') int? formableId,
      FormAnswer? data,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'validated_for') int? validatedFor});

  @override
  $FormAnswerCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AssessmentAnswerImplCopyWithImpl<$Res>
    extends _$AssessmentAnswerCopyWithImpl<$Res, _$AssessmentAnswerImpl>
    implements _$$AssessmentAnswerImplCopyWith<$Res> {
  __$$AssessmentAnswerImplCopyWithImpl(_$AssessmentAnswerImpl _value,
      $Res Function(_$AssessmentAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
    Object? formableType = freezed,
    Object? formableId = freezed,
    Object? data = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? validatedFor = freezed,
  }) {
    return _then(_$AssessmentAnswerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      formableType: freezed == formableType
          ? _value.formableType
          : formableType // ignore: cast_nullable_to_non_nullable
              as String?,
      formableId: freezed == formableId
          ? _value.formableId
          : formableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormAnswer?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedFor: freezed == validatedFor
          ? _value.validatedFor
          : validatedFor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentAnswerImpl implements _AssessmentAnswer {
  const _$AssessmentAnswerImpl(
      {this.id,
      @JsonKey(name: 'form_id') this.formId,
      @JsonKey(name: 'submitted_by') this.submittedBy,
      @JsonKey(name: 'formable_type') this.formableType,
      @JsonKey(name: 'formable_id') this.formableId,
      this.data,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'validated_for') this.validatedFor});

  factory _$AssessmentAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentAnswerImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  @JsonKey(name: 'submitted_by')
  final int? submittedBy;
  @override
  @JsonKey(name: 'formable_type')
  final String? formableType;
  @override
  @JsonKey(name: 'formable_id')
  final int? formableId;
  @override
  final FormAnswer? data;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'validated_for')
  final int? validatedFor;

  @override
  String toString() {
    return 'AssessmentAnswer(id: $id, formId: $formId, submittedBy: $submittedBy, formableType: $formableType, formableId: $formableId, data: $data, createdAt: $createdAt, updatedAt: $updatedAt, validatedFor: $validatedFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.submittedBy, submittedBy) ||
                other.submittedBy == submittedBy) &&
            (identical(other.formableType, formableType) ||
                other.formableType == formableType) &&
            (identical(other.formableId, formableId) ||
                other.formableId == formableId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.validatedFor, validatedFor) ||
                other.validatedFor == validatedFor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, formId, submittedBy,
      formableType, formableId, data, createdAt, updatedAt, validatedFor);

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentAnswerImplCopyWith<_$AssessmentAnswerImpl> get copyWith =>
      __$$AssessmentAnswerImplCopyWithImpl<_$AssessmentAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentAnswerImplToJson(
      this,
    );
  }
}

abstract class _AssessmentAnswer implements AssessmentAnswer {
  const factory _AssessmentAnswer(
          {final int? id,
          @JsonKey(name: 'form_id') final int? formId,
          @JsonKey(name: 'submitted_by') final int? submittedBy,
          @JsonKey(name: 'formable_type') final String? formableType,
          @JsonKey(name: 'formable_id') final int? formableId,
          final FormAnswer? data,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'validated_for') final int? validatedFor}) =
      _$AssessmentAnswerImpl;

  factory _AssessmentAnswer.fromJson(Map<String, dynamic> json) =
      _$AssessmentAnswerImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  @JsonKey(name: 'submitted_by')
  int? get submittedBy;
  @override
  @JsonKey(name: 'formable_type')
  String? get formableType;
  @override
  @JsonKey(name: 'formable_id')
  int? get formableId;
  @override
  FormAnswer? get data;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'validated_for')
  int? get validatedFor;

  /// Create a copy of AssessmentAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentAnswerImplCopyWith<_$AssessmentAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
