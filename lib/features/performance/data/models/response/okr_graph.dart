import 'package:freezed_annotation/freezed_annotation.dart';

part 'okr_graph.freezed.dart';
part 'okr_graph.g.dart';

@freezed
class OKRGraphData with _$OKRGraphData {
  const factory OKRGraphData({
    int? id,
    String? name,
    @JsonKey(name: 'okr_cycle_id') int? okrCycleId,
    int? progress,
    int? status,
    @JsonKey(name: 'key_results') List<KeyResultGraphDetail>? keyResults,
  }) = _OKRGraphData;

  factory OKRGraphData.fromJson(Map<String, dynamic> json) =>
      _$OKRGraphDataFromJson(json);
}

@freezed
class KeyResultGraphDetail with _$KeyResultGraphDetail {
  const factory KeyResultGraphDetail({
    int? id,
    String? name,
    int? frequency,
    @JsonKey(name: 'frequency_label') String? frequencyLabel,
    int? format,
    @JsonKey(name: 'format_label') String? formatLabel,
    int? direction,
    @JsonKey(name: 'direction_label') String? directionLabel,
    int? aggregation,
    @JsonKey(name: 'aggregation_label') String? aggregationLabel,
    int? status,
    @JsonKey(name: 'average_actual_value') double? averageActualValue,
    @JsonKey(name: 'average_target_value') double? averageTargetValue,
    @JsonKey(name: 'target_value') double? targetValue,
    List<String>? data,
    List<String>? labels,
  }) = _KeyResultGraphDetail;

  factory KeyResultGraphDetail.fromJson(Map<String, dynamic> json) =>
      _$KeyResultGraphDetailFromJson(json);
}
