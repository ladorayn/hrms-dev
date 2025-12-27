// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okr_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OKRListImpl _$$OKRListImplFromJson(Map<String, dynamic> json) =>
    _$OKRListImpl(
      id: (json['id'] as num?)?.toInt(),
      period: json['period'] as String?,
      name: json['name'] as String?,
      periodYear: (json['period_year'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      objectivesCount: (json['objectives_count'] as num?)?.toInt(),
      keyResults: json['key_results'] == null
          ? null
          : KeyResult.fromJson(json['key_results'] as Map<String, dynamic>),
      createdBy: json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OKRListImplToJson(_$OKRListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'name': instance.name,
      'period_year': instance.periodYear,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'tenant_id': instance.tenantId,
      'objectives_count': instance.objectivesCount,
      'key_results': instance.keyResults,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$OKRDetailImpl _$$OKRDetailImplFromJson(Map<String, dynamic> json) =>
    _$OKRDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      period: json['period'] as String?,
      name: json['name'] as String?,
      periodYear: (json['period_year'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      objectivesCount: (json['objectives_count'] as num?)?.toInt(),
      objectives: (json['objectives'] as List<dynamic>?)
          ?.map((e) => Objective.fromJson(e as Map<String, dynamic>))
          .toList(),
      keyResults: json['key_results'] == null
          ? null
          : KeyResult.fromJson(json['key_results'] as Map<String, dynamic>),
      createdBy: json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OKRDetailImplToJson(_$OKRDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'name': instance.name,
      'period_year': instance.periodYear,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'tenant_id': instance.tenantId,
      'objectives_count': instance.objectivesCount,
      'objectives': instance.objectives,
      'key_results': instance.keyResults,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$ObjectiveImpl _$$ObjectiveImplFromJson(Map<String, dynamic> json) =>
    _$ObjectiveImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      progress: (json['progress'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      okrCycleId: (json['okr_cycle_id'] as num?)?.toInt(),
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      keyResultsCount: (json['key_results_count'] as num?)?.toInt(),
      keyResults: (json['key_results'] as List<dynamic>?)
          ?.map((e) => KeyResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ObjectiveImplToJson(_$ObjectiveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'progress': instance.progress,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'okr_cycle_id': instance.okrCycleId,
      'tenant_id': instance.tenantId,
      'key_results_count': instance.keyResultsCount,
      'key_results': instance.keyResults,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$KeyResultDetailImpl _$$KeyResultDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyResultDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      frequency: (json['frequency'] as num?)?.toInt(),
      frequencyLabel: json['frequency_label'] as String?,
      format: (json['format'] as num?)?.toInt(),
      formatLabel: json['format_label'] as String?,
      startValue: (json['start_value'] as num?)?.toInt(),
      currentValue: (json['current_value'] as num?)?.toInt(),
      targetValue: (json['target_value'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      direction: (json['direction'] as num?)?.toInt(),
      directionLabel: json['direction_label'] as String?,
      aggregation: (json['aggregation'] as num?)?.toInt(),
      aggregationLabel: json['aggregation_label'] as String?,
      progress: (json['progress'] as num?)?.toInt(),
      objectiveId: (json['objective_id'] as num?)?.toInt(),
      jobPositionId: (json['job_position_id'] as num?)?.toInt(),
      jobLevelId: (json['job_level_id'] as num?)?.toInt(),
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$KeyResultDetailImplToJson(
        _$KeyResultDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'frequency': instance.frequency,
      'frequency_label': instance.frequencyLabel,
      'format': instance.format,
      'format_label': instance.formatLabel,
      'start_value': instance.startValue,
      'current_value': instance.currentValue,
      'target_value': instance.targetValue,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'direction': instance.direction,
      'direction_label': instance.directionLabel,
      'aggregation': instance.aggregation,
      'aggregation_label': instance.aggregationLabel,
      'progress': instance.progress,
      'objective_id': instance.objectiveId,
      'job_position_id': instance.jobPositionId,
      'job_level_id': instance.jobLevelId,
      'tenant_id': instance.tenantId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$CreatedByImpl _$$CreatedByImplFromJson(Map<String, dynamic> json) =>
    _$CreatedByImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$CreatedByImplToJson(_$CreatedByImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$KeyResultImpl _$$KeyResultImplFromJson(Map<String, dynamic> json) =>
    _$KeyResultImpl(
      total: (json['total'] as num?)?.toInt(),
      draft: (json['draft'] as num?)?.toInt(),
      active: (json['active'] as num?)?.toInt(),
      done: (json['done'] as num?)?.toInt(),
      achieved: (json['achieved'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$KeyResultImplToJson(_$KeyResultImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'draft': instance.draft,
      'active': instance.active,
      'done': instance.done,
      'achieved': instance.achieved,
    };

_$OKRTrackingImpl _$$OKRTrackingImplFromJson(Map<String, dynamic> json) =>
    _$OKRTrackingImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      frequency: (json['frequency'] as num?)?.toInt(),
      frequencyLabel: json['frequency_label'] as String?,
      format: (json['format'] as num?)?.toInt(),
      formatLabel: json['format_label'] as String?,
      startValue: (json['start_value'] as num?)?.toInt(),
      currentValue: (json['current_value'] as num?)?.toInt(),
      targetValue: (json['target_value'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      direction: (json['direction'] as num?)?.toInt(),
      directionLabel: json['direction_label'] as String?,
      aggregation: (json['aggregation'] as num?)?.toInt(),
      aggregationLabel: json['aggregation_label'] as String?,
      progress: (json['progress'] as num?)?.toInt(),
      objectiveId: (json['objective_id'] as num?)?.toInt(),
      objective: json['objective'] == null
          ? null
          : Objective.fromJson(json['objective'] as Map<String, dynamic>),
      jobPositionId: (json['job_position_id'] as num?)?.toInt(),
      jobPosition: json['job_position'] == null
          ? null
          : JobPosition.fromJson(json['job_position'] as Map<String, dynamic>),
      jobLevelId: (json['job_level_id'] as num?)?.toInt(),
      jobLevel: json['job_level'] == null
          ? null
          : JobLevel.fromJson(json['job_level'] as Map<String, dynamic>),
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      trackingTable: (json['tracking_table'] as List<dynamic>?)
          ?.map((e) => TrackingTable.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OKRTrackingImplToJson(_$OKRTrackingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'frequency': instance.frequency,
      'frequency_label': instance.frequencyLabel,
      'format': instance.format,
      'format_label': instance.formatLabel,
      'start_value': instance.startValue,
      'current_value': instance.currentValue,
      'target_value': instance.targetValue,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'direction': instance.direction,
      'direction_label': instance.directionLabel,
      'aggregation': instance.aggregation,
      'aggregation_label': instance.aggregationLabel,
      'progress': instance.progress,
      'objective_id': instance.objectiveId,
      'objective': instance.objective,
      'job_position_id': instance.jobPositionId,
      'job_position': instance.jobPosition,
      'job_level_id': instance.jobLevelId,
      'job_level': instance.jobLevel,
      'tenant_id': instance.tenantId,
      'tracking_table': instance.trackingTable,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$TrackingTableImpl _$$TrackingTableImplFromJson(Map<String, dynamic> json) =>
    _$TrackingTableImpl(
      periodId: (json['period_id'] as num?)?.toInt(),
      label: json['label'] as String?,
      actualValue: (json['actual_value'] as num?)?.toInt(),
      targetValue: (json['target_value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrackingTableImplToJson(_$TrackingTableImpl instance) =>
    <String, dynamic>{
      'period_id': instance.periodId,
      'label': instance.label,
      'actual_value': instance.actualValue,
      'target_value': instance.targetValue,
    };

_$JobPositionImpl _$$JobPositionImplFromJson(Map<String, dynamic> json) =>
    _$JobPositionImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobPositionImplToJson(_$JobPositionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$JobLevelImpl _$$JobLevelImplFromJson(Map<String, dynamic> json) =>
    _$JobLevelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobLevelImplToJson(_$JobLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SetTrackingValueImpl _$$SetTrackingValueImplFromJson(
        Map<String, dynamic> json) =>
    _$SetTrackingValueImpl(
      id: (json['id'] as num?)?.toInt(),
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      okrCycleId: (json['okr_cycle_id'] as num?)?.toInt(),
      okrKeyResultId: (json['okr_key_result_id'] as num?)?.toInt(),
      frequency: (json['frequency'] as num?)?.toInt(),
      periodStart: json['period_start'] as String?,
      periodEnd: json['period_end'] as String?,
      label: json['label'] as String?,
      actualValue: (json['actual_value'] as num?)?.toInt(),
      targetValue: (json['target_value'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SetTrackingValueImplToJson(
        _$SetTrackingValueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenant_id': instance.tenantId,
      'okr_cycle_id': instance.okrCycleId,
      'okr_key_result_id': instance.okrKeyResultId,
      'frequency': instance.frequency,
      'period_start': instance.periodStart,
      'period_end': instance.periodEnd,
      'label': instance.label,
      'actual_value': instance.actualValue,
      'target_value': instance.targetValue,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
