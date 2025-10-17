import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_statistics_response_model.freezed.dart';
part 'overtime_statistics_response_model.g.dart';

@freezed
class OvertimeStatistics with _$OvertimeStatistics {
  const factory OvertimeStatistics({
    required Period period,
    required int pending,
    required int approved,
    required int rejected,
  }) = _OvertimeStatistics;

  factory OvertimeStatistics.fromJson(Map<String, dynamic> json) =>
      _$OvertimeStatisticsFromJson(json);
}

@freezed
class Period with _$Period {
  const factory Period({
    required String start,
    required String end,
  }) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
}
