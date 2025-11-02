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
  dynamic get metadata => throw _privateConstructorUsedError;

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
      dynamic metadata});
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
              as dynamic,
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
      dynamic metadata});
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
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      this.metadata});

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
  @override
  final dynamic metadata;

  @override
  String toString() {
    return 'FormFields(id: $id, formId: $formId, label: $label, type: $type, options: $options, isRequired: $isRequired, order: $order, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, description: $description, metadata: $metadata)';
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
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
      const DeepCollectionEquality().hash(metadata));

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
      final dynamic metadata}) = _$FormFieldsImpl;

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
  dynamic get metadata;

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

FieldMetadata _$FieldMetadataFromJson(Map<String, dynamic> json) {
  return _FieldMetadata.fromJson(json);
}

/// @nodoc
mixin _$FieldMetadata {
  @JsonKey(name: 'is_note')
  bool? get isNote => throw _privateConstructorUsedError;

  /// Serializes this FieldMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldMetadataCopyWith<FieldMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldMetadataCopyWith<$Res> {
  factory $FieldMetadataCopyWith(
          FieldMetadata value, $Res Function(FieldMetadata) then) =
      _$FieldMetadataCopyWithImpl<$Res, FieldMetadata>;
  @useResult
  $Res call({@JsonKey(name: 'is_note') bool? isNote});
}

/// @nodoc
class _$FieldMetadataCopyWithImpl<$Res, $Val extends FieldMetadata>
    implements $FieldMetadataCopyWith<$Res> {
  _$FieldMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNote = freezed,
  }) {
    return _then(_value.copyWith(
      isNote: freezed == isNote
          ? _value.isNote
          : isNote // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldMetadataImplCopyWith<$Res>
    implements $FieldMetadataCopyWith<$Res> {
  factory _$$FieldMetadataImplCopyWith(
          _$FieldMetadataImpl value, $Res Function(_$FieldMetadataImpl) then) =
      __$$FieldMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is_note') bool? isNote});
}

/// @nodoc
class __$$FieldMetadataImplCopyWithImpl<$Res>
    extends _$FieldMetadataCopyWithImpl<$Res, _$FieldMetadataImpl>
    implements _$$FieldMetadataImplCopyWith<$Res> {
  __$$FieldMetadataImplCopyWithImpl(
      _$FieldMetadataImpl _value, $Res Function(_$FieldMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNote = freezed,
  }) {
    return _then(_$FieldMetadataImpl(
      isNote: freezed == isNote
          ? _value.isNote
          : isNote // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldMetadataImpl implements _FieldMetadata {
  const _$FieldMetadataImpl({@JsonKey(name: 'is_note') this.isNote});

  factory _$FieldMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'is_note')
  final bool? isNote;

  @override
  String toString() {
    return 'FieldMetadata(isNote: $isNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldMetadataImpl &&
            (identical(other.isNote, isNote) || other.isNote == isNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isNote);

  /// Create a copy of FieldMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldMetadataImplCopyWith<_$FieldMetadataImpl> get copyWith =>
      __$$FieldMetadataImplCopyWithImpl<_$FieldMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldMetadataImplToJson(
      this,
    );
  }
}

abstract class _FieldMetadata implements FieldMetadata {
  const factory _FieldMetadata({@JsonKey(name: 'is_note') final bool? isNote}) =
      _$FieldMetadataImpl;

  factory _FieldMetadata.fromJson(Map<String, dynamic> json) =
      _$FieldMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'is_note')
  bool? get isNote;

  /// Create a copy of FieldMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldMetadataImplCopyWith<_$FieldMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
