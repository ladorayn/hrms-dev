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

FormFieldsGroupResponse _$FormFieldsGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _FormFieldsGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$FormFieldsGroupResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<FormFieldsGroup> get data => throw _privateConstructorUsedError;

  /// Serializes this FormFieldsGroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFieldsGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldsGroupResponseCopyWith<FormFieldsGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldsGroupResponseCopyWith<$Res> {
  factory $FormFieldsGroupResponseCopyWith(FormFieldsGroupResponse value,
          $Res Function(FormFieldsGroupResponse) then) =
      _$FormFieldsGroupResponseCopyWithImpl<$Res, FormFieldsGroupResponse>;
  @useResult
  $Res call({String status, String message, List<FormFieldsGroup> data});
}

/// @nodoc
class _$FormFieldsGroupResponseCopyWithImpl<$Res,
        $Val extends FormFieldsGroupResponse>
    implements $FormFieldsGroupResponseCopyWith<$Res> {
  _$FormFieldsGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldsGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormFieldsGroupResponseImplCopyWith<$Res>
    implements $FormFieldsGroupResponseCopyWith<$Res> {
  factory _$$FormFieldsGroupResponseImplCopyWith(
          _$FormFieldsGroupResponseImpl value,
          $Res Function(_$FormFieldsGroupResponseImpl) then) =
      __$$FormFieldsGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message, List<FormFieldsGroup> data});
}

/// @nodoc
class __$$FormFieldsGroupResponseImplCopyWithImpl<$Res>
    extends _$FormFieldsGroupResponseCopyWithImpl<$Res,
        _$FormFieldsGroupResponseImpl>
    implements _$$FormFieldsGroupResponseImplCopyWith<$Res> {
  __$$FormFieldsGroupResponseImplCopyWithImpl(
      _$FormFieldsGroupResponseImpl _value,
      $Res Function(_$FormFieldsGroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldsGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$FormFieldsGroupResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FormFieldsGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldsGroupResponseImpl implements _FormFieldsGroupResponse {
  const _$FormFieldsGroupResponseImpl(
      {required this.status,
      required this.message,
      required final List<FormFieldsGroup> data})
      : _data = data;

  factory _$FormFieldsGroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldsGroupResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<FormFieldsGroup> _data;
  @override
  List<FormFieldsGroup> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FormFieldsGroupResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldsGroupResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FormFieldsGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldsGroupResponseImplCopyWith<_$FormFieldsGroupResponseImpl>
      get copyWith => __$$FormFieldsGroupResponseImplCopyWithImpl<
          _$FormFieldsGroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldsGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _FormFieldsGroupResponse implements FormFieldsGroupResponse {
  const factory _FormFieldsGroupResponse(
          {required final String status,
          required final String message,
          required final List<FormFieldsGroup> data}) =
      _$FormFieldsGroupResponseImpl;

  factory _FormFieldsGroupResponse.fromJson(Map<String, dynamic> json) =
      _$FormFieldsGroupResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  List<FormFieldsGroup> get data;

  /// Create a copy of FormFieldsGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldsGroupResponseImplCopyWith<_$FormFieldsGroupResponseImpl>
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
  Map<String, dynamic>? get metadata =>
      throw _privateConstructorUsedError; // Stays dynamic
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

// Stays dynamic
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
  Map<String, dynamic>? get metadata; // Stays dynamic
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
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'field_group_id') int? fieldGroupId});
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
    Object? fieldGroupId = freezed,
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
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: 'field_group_id') int? fieldGroupId});
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
    Object? fieldGroupId = freezed,
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
      fieldGroupId: freezed == fieldGroupId
          ? _value.fieldGroupId
          : fieldGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldsImpl implements _FormFields {
  const _$FormFieldsImpl(
      {required this.id,
      @JsonKey(name: 'form_id') this.formId,
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
      @JsonKey(name: 'field_group_id') this.fieldGroupId})
      : _metadata = metadata;

  factory _$FormFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
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

  @override
  @JsonKey(name: 'field_group_id')
  final int? fieldGroupId;

  @override
  String toString() {
    return 'FormFields(id: $id, formId: $formId, label: $label, type: $type, options: $options, isRequired: $isRequired, order: $order, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, description: $description, metadata: $metadata, fieldGroupId: $fieldGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formId, formId) || other.formId == formId) &&
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
            (identical(other.fieldGroupId, fieldGroupId) ||
                other.fieldGroupId == fieldGroupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      formId,
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
      fieldGroupId);

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
          @JsonKey(name: 'field_group_id') final int? fieldGroupId}) =
      _$FormFieldsImpl;

  factory _FormFields.fromJson(Map<String, dynamic> json) =
      _$FormFieldsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
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
  @JsonKey(name: 'field_group_id')
  int? get fieldGroupId;

  /// Create a copy of FormFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldsImplCopyWith<_$FormFieldsImpl> get copyWith =>
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
