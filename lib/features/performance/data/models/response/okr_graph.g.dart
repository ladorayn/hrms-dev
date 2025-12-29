// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okr_graph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OKRGraphDataImpl _$$OKRGraphDataImplFromJson(Map<String, dynamic> json) =>
    _$OKRGraphDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      okrCycleId: (json['okr_cycle_id'] as num?)?.toInt(),
      progress: (json['progress'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      keyResults: (json['key_results'] as List<dynamic>?)
          ?.map((e) => KeyResultGraphDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OKRGraphDataImplToJson(_$OKRGraphDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'okr_cycle_id': instance.okrCycleId,
      'progress': instance.progress,
      'status': instance.status,
      'key_results': instance.keyResults,
    };

_$KeyResultGraphDetailImpl _$$KeyResultGraphDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyResultGraphDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      frequency: (json['frequency'] as num?)?.toInt(),
      frequencyLabel: json['frequency_label'] as String?,
      format: (json['format'] as num?)?.toInt(),
      formatLabel: json['format_label'] as String?,
      direction: (json['direction'] as num?)?.toInt(),
      directionLabel: json['direction_label'] as String?,
      aggregation: (json['aggregation'] as num?)?.toInt(),
      aggregationLabel: json['aggregation_label'] as String?,
      status: (json['status'] as num?)?.toInt(),
      averageActualValue: (json['average_actual_value'] as num?)?.toDouble(),
      averageTargetValue: (json['average_target_value'] as num?)?.toDouble(),
      targetValue: (json['target_value'] as num?)?.toDouble(),
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$KeyResultGraphDetailImplToJson(
        _$KeyResultGraphDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'frequency': instance.frequency,
      'frequency_label': instance.frequencyLabel,
      'format': instance.format,
      'format_label': instance.formatLabel,
      'direction': instance.direction,
      'direction_label': instance.directionLabel,
      'aggregation': instance.aggregation,
      'aggregation_label': instance.aggregationLabel,
      'status': instance.status,
      'average_actual_value': instance.averageActualValue,
      'average_target_value': instance.averageTargetValue,
      'target_value': instance.targetValue,
      'data': instance.data,
      'labels': instance.labels,
    };
