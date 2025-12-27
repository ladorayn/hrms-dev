import 'package:freezed_annotation/freezed_annotation.dart';

part 'okr_list.freezed.dart';

part 'okr_list.g.dart';

@freezed
class OKRList with _$OKRList {
  const factory OKRList({
    int? id,
    String? period,
    String? name,
    @JsonKey(name: 'period_year') int? periodYear,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'objectives_count') int? objectivesCount,
    @JsonKey(name: 'key_results') KeyResult? keyResults,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OKRList;

  factory OKRList.fromJson(Map<String, dynamic> json) =>
      _$OKRListFromJson(json);
}

@freezed
class OKRDetail with _$OKRDetail {
  const factory OKRDetail({
    int? id,
    String? period,
    String? name,
    @JsonKey(name: 'period_year') int? periodYear,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'objectives_count') int? objectivesCount,
    List<Objective>? objectives,
    @JsonKey(name: 'key_results') KeyResult? keyResults,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OKRDetail;

  factory OKRDetail.fromJson(Map<String, dynamic> json) =>
      _$OKRDetailFromJson(json);
}

@freezed
class Objective with _$Objective {
  const factory Objective({
    int? id,
    String? title,
    String? description,
    int? progress,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'key_results_count') int? keyResultsCount,
    @JsonKey(name: 'key_results') List<KeyResultDetail>? keyResults,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Objective;

  factory Objective.fromJson(Map<String, dynamic> json) =>
      _$ObjectiveFromJson(json);
}

@freezed
class KeyResultDetail with _$KeyResultDetail {
  const factory KeyResultDetail({
    int? id,
    String? title,
    String? description,
    int? frequency,
    @JsonKey(name: 'frequency_label') String? frequencyLabel,
    int? format,
    @JsonKey(name: 'format_label') String? formatLabel,
    @JsonKey(name: 'start_value') int? startValue,
    @JsonKey(name: 'current_value') int? currentValue,
    @JsonKey(name: 'target_value') int? targetValue,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    int? direction,
    @JsonKey(name: 'direction_label') String? directionLabel,
    int? aggregation,
    @JsonKey(name: 'aggregation_label') String? aggregationLabel,
    int? progress,
    @JsonKey(name: 'objective_id') int? objectiveId,
    @JsonKey(name: 'job_position_id') int? jobPositionId,
    @JsonKey(name: 'job_level_id') int? jobLevelId,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _KeyResultDetail;

  factory KeyResultDetail.fromJson(Map<String, dynamic> json) =>
      _$KeyResultDetailFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({
    int? id,
    String? name,
    String? email,
  }) = _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}

@freezed
class KeyResult with _$KeyResult {
  const factory KeyResult({
    int? total,
    int? draft,
    int? active,
    int? done,
    int? achieved,
  }) = _KeyResult;

  factory KeyResult.fromJson(Map<String, dynamic> json) =>
      _$KeyResultFromJson(json);
}

@freezed
class OKRTracking with _$OKRTracking {
  const factory OKRTracking({
    int? id,
    String? title,
    String? description,
    int? frequency,
    @JsonKey(name: 'frequency_label') String? frequencyLabel,
    int? format,
    @JsonKey(name: 'format_label') String? formatLabel,
    @JsonKey(name: 'start_value') int? startValue,
    @JsonKey(name: 'current_value') int? currentValue,
    @JsonKey(name: 'target_value') int? targetValue,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    int? direction,
    @JsonKey(name: 'direction_label') String? directionLabel,
    int? aggregation,
    @JsonKey(name: 'aggregation_label') String? aggregationLabel,
    int? progress,
    @JsonKey(name: 'objective_id') int? objectiveId,
    Objective? objective, // Reused from your existing model
    @JsonKey(name: 'job_position_id') int? jobPositionId,
    @JsonKey(name: 'job_position') JobPosition? jobPosition,
    @JsonKey(name: 'job_level_id') int? jobLevelId,
    @JsonKey(name: 'job_level') JobLevel? jobLevel,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'tracking_table') List<TrackingTable>? trackingTable,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OKRTracking;

  factory OKRTracking.fromJson(Map<String, dynamic> json) =>
      _$OKRTrackingFromJson(json);
}

@freezed
class TrackingTable with _$TrackingTable {
  const factory TrackingTable({
    @JsonKey(name: 'period_id') int? periodId,
    String? label,
    @JsonKey(name: 'actual_value') int? actualValue,
    @JsonKey(name: 'target_value') int? targetValue,
  }) = _TrackingTable;

  factory TrackingTable.fromJson(Map<String, dynamic> json) =>
      _$TrackingTableFromJson(json);
}

@freezed
class JobPosition with _$JobPosition {
  const factory JobPosition({
    int? id,
    String? name,
  }) = _JobPosition;

  factory JobPosition.fromJson(Map<String, dynamic> json) =>
      _$JobPositionFromJson(json);
}

@freezed
class JobLevel with _$JobLevel {
  const factory JobLevel({
    int? id,
    String? name,
  }) = _JobLevel;

  factory JobLevel.fromJson(Map<String, dynamic> json) =>
      _$JobLevelFromJson(json);
}

@freezed
class SetTrackingValue with _$SetTrackingValue {
  const factory SetTrackingValue({
    int? id,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
    @JsonKey(name: 'okr_key_result_id') int? okrKeyResultId,
    int? frequency,
    @JsonKey(name: 'period_start') String? periodStart,
    @JsonKey(name: 'period_end') String? periodEnd,
    String? label,
    @JsonKey(name: 'actual_value') int? actualValue,
    @JsonKey(name: 'target_value') int? targetValue,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SetTrackingValue;

  factory SetTrackingValue.fromJson(Map<String, dynamic> json) =>
      _$SetTrackingValueFromJson(json);
}
