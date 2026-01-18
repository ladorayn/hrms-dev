// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_fields_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormFieldsGroupDetailImpl _$$FormFieldsGroupDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$FormFieldsGroupDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      type: (json['type'] as num?)?.toInt(),
      typeLabel: json['type_label'] as String?,
      groups: (json['groups'] as List<dynamic>)
          .map((e) => FormFieldsGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormFieldsGroupDetailImplToJson(
        _$FormFieldsGroupDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'groups': instance.groups,
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
      fieldGroupId: (json['field_group_id'] as num?)?.toInt(),
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
      competencyLevels: (json['competency_levels'] as List<dynamic>?)
          ?.map((e) => CompetencyLevels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormFieldsImplToJson(_$FormFieldsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_id': instance.formId,
      'field_group_id': instance.fieldGroupId,
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
      'competency_levels': instance.competencyLevels,
    };

_$CompetencyLevelsImpl _$$CompetencyLevelsImplFromJson(
        Map<String, dynamic> json) =>
    _$CompetencyLevelsImpl(
      id: (json['id'] as num?)?.toInt(),
      dimensions: json['dimensions'] as String?,
      level: json['level'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CompetencyLevelsImplToJson(
        _$CompetencyLevelsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dimensions': instance.dimensions,
      'level': instance.level,
      'name': instance.name,
      'description': instance.description,
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

_$FormDetailResponseImpl _$$FormDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FormDetailResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      type: (json['type'] as num).toInt(),
      deletedAt: json['deleted_at'] as String?,
      typeLabel: json['type_label'] as String?,
      groups: (json['groups'] as List<dynamic>)
          .map((e) => FormFieldsGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormDetailResponseImplToJson(
        _$FormDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'type': instance.type,
      'deleted_at': instance.deletedAt,
      'type_label': instance.typeLabel,
      'groups': instance.groups,
    };
