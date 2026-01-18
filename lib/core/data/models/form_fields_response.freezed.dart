// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_fields_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormFieldsGroupDetail _$FormFieldsGroupDetailFromJson(
    Map<String, dynamic> json) {
  return _FormFieldsGroupDetail.fromJson(json);
}

/// @nodoc
mixin _$FormFieldsGroupDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String? get typeLabel => throw _privateConstructorUsedError;
  List<FormFieldsGroup> get groups => throw _privateConstructorUsedError;

  /// Serializes this FormFieldsGroupDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFieldsGroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldsGroupDetailCopyWith<FormFieldsGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldsGroupDetailCopyWith<$Res> {
  factory $FormFieldsGroupDetailCopyWith(FormFieldsGroupDetail value,
          $Res Function(FormFieldsGroupDetail) then) =
      _$FormFieldsGroupDetailCopyWithImpl<$Res, FormFieldsGroupDetail>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? description,
      int? type,
      @JsonKey(name: 'type_label') String? typeLabel,
      List<FormFieldsGroup> groups});
}

/// @nodoc
class _$FormFieldsGroupDetailCopyWithImpl<$Res,
        $Val extends FormFieldsGroupDetail>
    implements $FormFieldsGroupDetailCopyWith<$Res> {
  _$FormFieldsGroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldsGroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? typeLabel = freezed,
    Object? groups = null,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormFieldsGroupDetailImplCopyWith<$Res>
    implements $FormFieldsGroupDetailCopyWith<$Res> {
  factory _$$FormFieldsGroupDetailImplCopyWith(
          _$FormFieldsGroupDetailImpl value,
          $Res Function(_$FormFieldsGroupDetailImpl) then) =
      __$$FormFieldsGroupDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? description,
      int? type,
      @JsonKey(name: 'type_label') String? typeLabel,
      List<FormFieldsGroup> groups});
}

/// @nodoc
class __$$FormFieldsGroupDetailImplCopyWithImpl<$Res>
    extends _$FormFieldsGroupDetailCopyWithImpl<$Res,
        _$FormFieldsGroupDetailImpl>
    implements _$$FormFieldsGroupDetailImplCopyWith<$Res> {
  __$$FormFieldsGroupDetailImplCopyWithImpl(_$FormFieldsGroupDetailImpl _value,
      $Res Function(_$FormFieldsGroupDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldsGroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? typeLabel = freezed,
    Object? groups = null,
  }) {
    return _then(_$FormFieldsGroupDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldsGroupDetailImpl implements _FormFieldsGroupDetail {
  const _$FormFieldsGroupDetailImpl(
      {this.id,
      this.name,
      this.code,
      this.description,
      this.type,
      @JsonKey(name: 'type_label') this.typeLabel,
      required final List<FormFieldsGroup> groups})
      : _groups = groups;

  factory _$FormFieldsGroupDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldsGroupDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? description;
  @override
  final int? type;
  @override
  @JsonKey(name: 'type_label')
  final String? typeLabel;
  final List<FormFieldsGroup> _groups;
  @override
  List<FormFieldsGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'FormFieldsGroupDetail(id: $id, name: $name, code: $code, description: $description, type: $type, typeLabel: $typeLabel, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldsGroupDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, description,
      type, typeLabel, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of FormFieldsGroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldsGroupDetailImplCopyWith<_$FormFieldsGroupDetailImpl>
      get copyWith => __$$FormFieldsGroupDetailImplCopyWithImpl<
          _$FormFieldsGroupDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldsGroupDetailImplToJson(
      this,
    );
  }
}

abstract class _FormFieldsGroupDetail implements FormFieldsGroupDetail {
  const factory _FormFieldsGroupDetail(
          {final int? id,
          final String? name,
          final String? code,
          final String? description,
          final int? type,
          @JsonKey(name: 'type_label') final String? typeLabel,
          required final List<FormFieldsGroup> groups}) =
      _$FormFieldsGroupDetailImpl;

  factory _FormFieldsGroupDetail.fromJson(Map<String, dynamic> json) =
      _$FormFieldsGroupDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get description;
  @override
  int? get type;
  @override
  @JsonKey(name: 'type_label')
  String? get typeLabel;
  @override
  List<FormFieldsGroup> get groups;

  /// Create a copy of FormFieldsGroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldsGroupDetailImplCopyWith<_$FormFieldsGroupDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FormFieldsGroup _$FormFieldsGroupFromJson(Map<String, dynamic> json) {
  return _FormFieldsGroup.fromJson(json);
}

/// @nodoc
mixin _$FormFieldsGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int get formId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  List<FormFields> get fields => throw _privateConstructorUsedError;

  /// Serializes this FormFieldsGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFieldsGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldsGroupCopyWith<FormFieldsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldsGroupCopyWith<$Res> {
  factory $FormFieldsGroupCopyWith(
          FormFieldsGroup value, $Res Function(FormFieldsGroup) then) =
      _$FormFieldsGroupCopyWithImpl<$Res, FormFieldsGroup>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'form_id') int formId,
      int order,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<FormFields> fields});
}

/// @nodoc
class _$FormFieldsGroupCopyWithImpl<$Res, $Val extends FormFieldsGroup>
    implements $FormFieldsGroupCopyWith<$Res> {
  _$FormFieldsGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldsGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? formId = null,
    Object? order = null,
    Object? metadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? fields = null,
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
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormFields>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormFieldsGroupImplCopyWith<$Res>
    implements $FormFieldsGroupCopyWith<$Res> {
  factory _$$FormFieldsGroupImplCopyWith(_$FormFieldsGroupImpl value,
          $Res Function(_$FormFieldsGroupImpl) then) =
      __$$FormFieldsGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'form_id') int formId,
      int order,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<FormFields> fields});
}

/// @nodoc
class __$$FormFieldsGroupImplCopyWithImpl<$Res>
    extends _$FormFieldsGroupCopyWithImpl<$Res, _$FormFieldsGroupImpl>
    implements _$$FormFieldsGroupImplCopyWith<$Res> {
  __$$FormFieldsGroupImplCopyWithImpl(
      _$FormFieldsGroupImpl _value, $Res Function(_$FormFieldsGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldsGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? formId = null,
    Object? order = null,
    Object? metadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? fields = null,
  }) {
    return _then(_$FormFieldsGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormFields>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldsGroupImpl implements _FormFieldsGroup {
  const _$FormFieldsGroupImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'form_id') required this.formId,
      required this.order,
      final Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<FormFields> fields})
      : _metadata = metadata,
        _fields = fields;

  factory _$FormFieldsGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldsGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'form_id')
  final int formId;
  @override
  final int order;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<FormFields> _fields;
  @override
  List<FormFields> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FormFieldsGroup(id: $id, name: $name, formId: $formId, order: $order, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldsGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      formId,
      order,
      const DeepCollectionEquality().hash(_metadata),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_fields));

  /// Create a copy of FormFieldsGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldsGroupImplCopyWith<_$FormFieldsGroupImpl> get copyWith =>
      __$$FormFieldsGroupImplCopyWithImpl<_$FormFieldsGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldsGroupImplToJson(
      this,
    );
  }
}

abstract class _FormFieldsGroup implements FormFieldsGroup {
  const factory _FormFieldsGroup(
      {required final int id,
      required final String name,
      @JsonKey(name: 'form_id') required final int formId,
      required final int order,
      final Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final List<FormFields> fields}) = _$FormFieldsGroupImpl;

  factory _FormFieldsGroup.fromJson(Map<String, dynamic> json) =
      _$FormFieldsGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'form_id')
  int get formId;
  @override
  int get order;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  List<FormFields> get fields;

  /// Create a copy of FormFieldsGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldsGroupImplCopyWith<_$FormFieldsGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormFields _$FormFieldsFromJson(Map<String, dynamic> json) {
  return _FormFields.fromJson(json);
}

/// @nodoc
mixin _$FormFields {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  dynamic get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'competency_levels')
  List<CompetencyLevels>? get competencyLevels =>
      throw _privateConstructorUsedError;

  /// Serializes this FormFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldsCopyWith<FormFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldsCopyWith<$Res> {
  factory $FormFieldsCopyWith(
          FormFields value, $Res Function(FormFields) then) =
      _$FormFieldsCopyWithImpl<$Res, FormFields>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'field_group_id') int? fieldGroupId,
      String? label,
      String? type,
      dynamic options,
      @JsonKey(name: 'is_required') bool isRequired,
      int order,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      String? description,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'competency_levels')
      List<CompetencyLevels>? competencyLevels});
}

/// @nodoc
class _$FormFieldsCopyWithImpl<$Res, $Val extends FormFields>
    implements $FormFieldsCopyWith<$Res> {
  _$FormFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? formId = freezed,
    Object? fieldGroupId = freezed,
    Object? label = freezed,
    Object? type = freezed,
    Object? options = freezed,
    Object? isRequired = null,
    Object? order = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? competencyLevels = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      competencyLevels: freezed == competencyLevels
          ? _value.competencyLevels
          : competencyLevels // ignore: cast_nullable_to_non_nullable
              as List<CompetencyLevels>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormFieldsImplCopyWith<$Res>
    implements $FormFieldsCopyWith<$Res> {
  factory _$$FormFieldsImplCopyWith(
          _$FormFieldsImpl value, $Res Function(_$FormFieldsImpl) then) =
      __$$FormFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'field_group_id') int? fieldGroupId,
      String? label,
      String? type,
      dynamic options,
      @JsonKey(name: 'is_required') bool isRequired,
      int order,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      String? description,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'competency_levels')
      List<CompetencyLevels>? competencyLevels});
}

/// @nodoc
class __$$FormFieldsImplCopyWithImpl<$Res>
    extends _$FormFieldsCopyWithImpl<$Res, _$FormFieldsImpl>
    implements _$$FormFieldsImplCopyWith<$Res> {
  __$$FormFieldsImplCopyWithImpl(
      _$FormFieldsImpl _value, $Res Function(_$FormFieldsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? formId = freezed,
    Object? fieldGroupId = freezed,
    Object? label = freezed,
    Object? type = freezed,
    Object? options = freezed,
    Object? isRequired = null,
    Object? order = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? competencyLevels = freezed,
  }) {
    return _then(_$FormFieldsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      competencyLevels: freezed == competencyLevels
          ? _value._competencyLevels
          : competencyLevels // ignore: cast_nullable_to_non_nullable
              as List<CompetencyLevels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldsImpl implements _FormFields {
  const _$FormFieldsImpl(
      {required this.id,
      @JsonKey(name: 'form_id') this.formId,
      @JsonKey(name: 'field_group_id') this.fieldGroupId,
      this.label,
      this.type,
      this.options,
      @JsonKey(name: 'is_required') required this.isRequired,
      required this.order,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.description,
      final Map<String, dynamic>? metadata,
      @JsonKey(name: 'competency_levels')
      final List<CompetencyLevels>? competencyLevels})
      : _metadata = metadata,
        _competencyLevels = competencyLevels;

  factory _$FormFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  @JsonKey(name: 'field_group_id')
  final int? fieldGroupId;
  @override
  final String? label;
  @override
  final String? type;
  @override
  final dynamic options;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  final int order;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  final String? description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<CompetencyLevels>? _competencyLevels;
  @override
  @JsonKey(name: 'competency_levels')
  List<CompetencyLevels>? get competencyLevels {
    final value = _competencyLevels;
    if (value == null) return null;
    if (_competencyLevels is EqualUnmodifiableListView)
      return _competencyLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormFields(id: $id, formId: $formId, fieldGroupId: $fieldGroupId, label: $label, type: $type, options: $options, isRequired: $isRequired, order: $order, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, description: $description, metadata: $metadata, competencyLevels: $competencyLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.fieldGroupId, fieldGroupId) ||
                other.fieldGroupId == fieldGroupId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._competencyLevels, _competencyLevels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      formId,
      fieldGroupId,
      label,
      type,
      const DeepCollectionEquality().hash(options),
      isRequired,
      order,
      createdAt,
      updatedAt,
      deletedAt,
      description,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_competencyLevels));

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldsImplCopyWith<_$FormFieldsImpl> get copyWith =>
      __$$FormFieldsImplCopyWithImpl<_$FormFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldsImplToJson(
      this,
    );
  }
}

abstract class _FormFields implements FormFields {
  const factory _FormFields(
      {required final int id,
      @JsonKey(name: 'form_id') final int? formId,
      @JsonKey(name: 'field_group_id') final int? fieldGroupId,
      final String? label,
      final String? type,
      final dynamic options,
      @JsonKey(name: 'is_required') required final bool isRequired,
      required final int order,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      final String? description,
      final Map<String, dynamic>? metadata,
      @JsonKey(name: 'competency_levels')
      final List<CompetencyLevels>? competencyLevels}) = _$FormFieldsImpl;

  factory _FormFields.fromJson(Map<String, dynamic> json) =
      _$FormFieldsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId;
  @override
  String? get label;
  @override
  String? get type;
  @override
  dynamic get options;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  int get order;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(name: 'competency_levels')
  List<CompetencyLevels>? get competencyLevels;

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldsImplCopyWith<_$FormFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompetencyLevels _$CompetencyLevelsFromJson(Map<String, dynamic> json) {
  return _CompetencyLevels.fromJson(json);
}

/// @nodoc
mixin _$CompetencyLevels {
  int? get id => throw _privateConstructorUsedError;
  String? get dimensions => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CompetencyLevels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompetencyLevels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompetencyLevelsCopyWith<CompetencyLevels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetencyLevelsCopyWith<$Res> {
  factory $CompetencyLevelsCopyWith(
          CompetencyLevels value, $Res Function(CompetencyLevels) then) =
      _$CompetencyLevelsCopyWithImpl<$Res, CompetencyLevels>;
  @useResult
  $Res call(
      {int? id,
      String? dimensions,
      String? level,
      String? name,
      String? description});
}

/// @nodoc
class _$CompetencyLevelsCopyWithImpl<$Res, $Val extends CompetencyLevels>
    implements $CompetencyLevelsCopyWith<$Res> {
  _$CompetencyLevelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompetencyLevels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dimensions = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompetencyLevelsImplCopyWith<$Res>
    implements $CompetencyLevelsCopyWith<$Res> {
  factory _$$CompetencyLevelsImplCopyWith(_$CompetencyLevelsImpl value,
          $Res Function(_$CompetencyLevelsImpl) then) =
      __$$CompetencyLevelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? dimensions,
      String? level,
      String? name,
      String? description});
}

/// @nodoc
class __$$CompetencyLevelsImplCopyWithImpl<$Res>
    extends _$CompetencyLevelsCopyWithImpl<$Res, _$CompetencyLevelsImpl>
    implements _$$CompetencyLevelsImplCopyWith<$Res> {
  __$$CompetencyLevelsImplCopyWithImpl(_$CompetencyLevelsImpl _value,
      $Res Function(_$CompetencyLevelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompetencyLevels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dimensions = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CompetencyLevelsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompetencyLevelsImpl implements _CompetencyLevels {
  const _$CompetencyLevelsImpl(
      {this.id, this.dimensions, this.level, this.name, this.description});

  factory _$CompetencyLevelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompetencyLevelsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? dimensions;
  @override
  final String? level;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'CompetencyLevels(id: $id, dimensions: $dimensions, level: $level, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetencyLevelsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dimensions, level, name, description);

  /// Create a copy of CompetencyLevels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetencyLevelsImplCopyWith<_$CompetencyLevelsImpl> get copyWith =>
      __$$CompetencyLevelsImplCopyWithImpl<_$CompetencyLevelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompetencyLevelsImplToJson(
      this,
    );
  }
}

abstract class _CompetencyLevels implements CompetencyLevels {
  const factory _CompetencyLevels(
      {final int? id,
      final String? dimensions,
      final String? level,
      final String? name,
      final String? description}) = _$CompetencyLevelsImpl;

  factory _CompetencyLevels.fromJson(Map<String, dynamic> json) =
      _$CompetencyLevelsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get dimensions;
  @override
  String? get level;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of CompetencyLevels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompetencyLevelsImplCopyWith<_$CompetencyLevelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldOptionsRange _$FieldOptionsRangeFromJson(Map<String, dynamic> json) {
  return _FieldOptionsRange.fromJson(json);
}

/// @nodoc
mixin _$FieldOptionsRange {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  /// Serializes this FieldOptionsRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldOptionsRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldOptionsRangeCopyWith<FieldOptionsRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldOptionsRangeCopyWith<$Res> {
  factory $FieldOptionsRangeCopyWith(
          FieldOptionsRange value, $Res Function(FieldOptionsRange) then) =
      _$FieldOptionsRangeCopyWithImpl<$Res, FieldOptionsRange>;
  @useResult
  $Res call({int min, int max});
}

/// @nodoc
class _$FieldOptionsRangeCopyWithImpl<$Res, $Val extends FieldOptionsRange>
    implements $FieldOptionsRangeCopyWith<$Res> {
  _$FieldOptionsRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldOptionsRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldOptionsRangeImplCopyWith<$Res>
    implements $FieldOptionsRangeCopyWith<$Res> {
  factory _$$FieldOptionsRangeImplCopyWith(_$FieldOptionsRangeImpl value,
          $Res Function(_$FieldOptionsRangeImpl) then) =
      __$$FieldOptionsRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int max});
}

/// @nodoc
class __$$FieldOptionsRangeImplCopyWithImpl<$Res>
    extends _$FieldOptionsRangeCopyWithImpl<$Res, _$FieldOptionsRangeImpl>
    implements _$$FieldOptionsRangeImplCopyWith<$Res> {
  __$$FieldOptionsRangeImplCopyWithImpl(_$FieldOptionsRangeImpl _value,
      $Res Function(_$FieldOptionsRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldOptionsRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$FieldOptionsRangeImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldOptionsRangeImpl implements _FieldOptionsRange {
  const _$FieldOptionsRangeImpl({required this.min, required this.max});

  factory _$FieldOptionsRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldOptionsRangeImplFromJson(json);

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'FieldOptionsRange(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldOptionsRangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  /// Create a copy of FieldOptionsRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldOptionsRangeImplCopyWith<_$FieldOptionsRangeImpl> get copyWith =>
      __$$FieldOptionsRangeImplCopyWithImpl<_$FieldOptionsRangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldOptionsRangeImplToJson(
      this,
    );
  }
}

abstract class _FieldOptionsRange implements FieldOptionsRange {
  const factory _FieldOptionsRange(
      {required final int min,
      required final int max}) = _$FieldOptionsRangeImpl;

  factory _FieldOptionsRange.fromJson(Map<String, dynamic> json) =
      _$FieldOptionsRangeImpl.fromJson;

  @override
  int get min;
  @override
  int get max;

  /// Create a copy of FieldOptionsRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldOptionsRangeImplCopyWith<_$FieldOptionsRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormDetailResponse _$FormDetailResponseFromJson(Map<String, dynamic> json) {
  return _FormDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$FormDetailResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String? get typeLabel => throw _privateConstructorUsedError;
  List<FormFieldsGroup> get groups => throw _privateConstructorUsedError;

  /// Serializes this FormDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormDetailResponseCopyWith<FormDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDetailResponseCopyWith<$Res> {
  factory $FormDetailResponseCopyWith(
          FormDetailResponse value, $Res Function(FormDetailResponse) then) =
      _$FormDetailResponseCopyWithImpl<$Res, FormDetailResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      String? description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int type,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'type_label') String? typeLabel,
      List<FormFieldsGroup> groups});
}

/// @nodoc
class _$FormDetailResponseCopyWithImpl<$Res, $Val extends FormDetailResponse>
    implements $FormDetailResponseCopyWith<$Res> {
  _$FormDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? type = null,
    Object? deletedAt = freezed,
    Object? typeLabel = freezed,
    Object? groups = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormDetailResponseImplCopyWith<$Res>
    implements $FormDetailResponseCopyWith<$Res> {
  factory _$$FormDetailResponseImplCopyWith(_$FormDetailResponseImpl value,
          $Res Function(_$FormDetailResponseImpl) then) =
      __$$FormDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      String? description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int type,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'type_label') String? typeLabel,
      List<FormFieldsGroup> groups});
}

/// @nodoc
class __$$FormDetailResponseImplCopyWithImpl<$Res>
    extends _$FormDetailResponseCopyWithImpl<$Res, _$FormDetailResponseImpl>
    implements _$$FormDetailResponseImplCopyWith<$Res> {
  __$$FormDetailResponseImplCopyWithImpl(_$FormDetailResponseImpl _value,
      $Res Function(_$FormDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? type = null,
    Object? deletedAt = freezed,
    Object? typeLabel = freezed,
    Object? groups = null,
  }) {
    return _then(_$FormDetailResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormDetailResponseImpl implements _FormDetailResponse {
  const _$FormDetailResponseImpl(
      {required this.id,
      required this.name,
      required this.code,
      this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.type,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'type_label') this.typeLabel,
      required final List<FormFieldsGroup> groups})
      : _groups = groups;

  factory _$FormDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDetailResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final int type;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'type_label')
  final String? typeLabel;
  final List<FormFieldsGroup> _groups;
  @override
  List<FormFieldsGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'FormDetailResponse(id: $id, name: $name, code: $code, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, type: $type, deletedAt: $deletedAt, typeLabel: $typeLabel, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      description,
      createdAt,
      updatedAt,
      type,
      deletedAt,
      typeLabel,
      const DeepCollectionEquality().hash(_groups));

  /// Create a copy of FormDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDetailResponseImplCopyWith<_$FormDetailResponseImpl> get copyWith =>
      __$$FormDetailResponseImplCopyWithImpl<_$FormDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _FormDetailResponse implements FormDetailResponse {
  const factory _FormDetailResponse(
      {required final int id,
      required final String name,
      required final String code,
      final String? description,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final int type,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'type_label') final String? typeLabel,
      required final List<FormFieldsGroup> groups}) = _$FormDetailResponseImpl;

  factory _FormDetailResponse.fromJson(Map<String, dynamic> json) =
      _$FormDetailResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  int get type;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'type_label')
  String? get typeLabel;
  @override
  List<FormFieldsGroup> get groups;

  /// Create a copy of FormDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDetailResponseImplCopyWith<_$FormDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
