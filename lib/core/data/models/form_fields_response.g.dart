// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_fields_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormFieldsImpl _$$FormFieldsImplFromJson(Map<String, dynamic> json) =>
    _$FormFieldsImpl(
      id: (json['id'] as num).toInt(),
      formId: (json['form_id'] as num?)?.toInt(),
      label: json['label'] as String?,
      type: json['type'] as String?,
      options: json['options'],
      isRequired: json['is_required'] as bool,
      order: (json['order'] as num).toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      description: json['description'] as String?,
      metadata: json['metadata'],
    );

Map<String, dynamic> _$$FormFieldsImplToJson(_$FormFieldsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_id': instance.formId,
      'label': instance.label,
      'type': instance.type,
      'options': instance.options,
      'is_required': instance.isRequired,
      'order': instance.order,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'description': instance.description,
      'metadata': instance.metadata,
    };

_$FieldOptionsRangeImpl _$$FieldOptionsRangeImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldOptionsRangeImpl(
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
    );

Map<String, dynamic> _$$FieldOptionsRangeImplToJson(
        _$FieldOptionsRangeImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$FieldMetadataImpl _$$FieldMetadataImplFromJson(Map<String, dynamic> json) =>
    _$FieldMetadataImpl(
      isNote: json['is_note'] as bool?,
    );

Map<String, dynamic> _$$FieldMetadataImplToJson(_$FieldMetadataImpl instance) =>
    <String, dynamic>{
      'is_note': instance.isNote,
    };
