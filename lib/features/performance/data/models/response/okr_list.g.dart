// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okr_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OKRListImpl _$$OKRListImplFromJson(Map<String, dynamic> json) =>
    _$OKRListImpl(
      id: (json['id'] as num?)?.toInt(),
      period: json['period'] as String?,
      status: json['status'] as String?,
      formId: (json['form_id'] as num?)?.toInt(),
      dueDate: json['due_date'] as String?,
    );

Map<String, dynamic> _$$OKRListImplToJson(_$OKRListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'status': instance.status,
      'form_id': instance.formId,
      'due_date': instance.dueDate,
    };
