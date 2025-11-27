// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_fields_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormFieldsGroupResponseImpl _$$FormFieldsGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FormFieldsGroupResponseImpl(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => FormFieldsGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormFieldsGroupResponseImplToJson(
        _$FormFieldsGroupResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FormFieldsGroupImpl _$$FormFieldsGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$FormFieldsGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      formId: (json['form_id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FormFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormFieldsGroupImplToJson(
        _$FormFieldsGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'form_id': instance.formId,
      'order': instance.order,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'fields': instance.fields,
    };

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
      metadata: json['metadata'] as Map<String, dynamic>?,
      fieldGroupId: (json['field_group_id'] as num?)?.toInt(),
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
      'field_group_id': instance.fieldGroupId,
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
