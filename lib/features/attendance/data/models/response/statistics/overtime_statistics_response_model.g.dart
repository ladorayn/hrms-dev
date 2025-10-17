// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_statistics_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OvertimeStatisticsImpl _$$OvertimeStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$OvertimeStatisticsImpl(
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      pending: (json['pending'] as num).toInt(),
      approved: (json['approved'] as num).toInt(),
      rejected: (json['rejected'] as num).toInt(),
    );

Map<String, dynamic> _$$OvertimeStatisticsImplToJson(
        _$OvertimeStatisticsImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'pending': instance.pending,
      'approved': instance.approved,
      'rejected': instance.rejected,
    };

_$PeriodImpl _$$PeriodImplFromJson(Map<String, dynamic> json) => _$PeriodImpl(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
