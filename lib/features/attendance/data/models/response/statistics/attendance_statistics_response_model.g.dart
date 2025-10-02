// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_statistics_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceStatisticsImpl _$$AttendanceStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceStatisticsImpl(
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      attended: (json['attended'] as num).toInt(),
      absent: (json['absent'] as num).toDouble(),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      clockIn: ClockIn.fromJson(json['clock_in'] as Map<String, dynamic>),
      clockOut: ClockOut.fromJson(json['clock_out'] as Map<String, dynamic>),
      overtime: (json['overtime'] as num).toInt(),
      dayOff: DayOff.fromJson(json['day_off'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceStatisticsImplToJson(
        _$AttendanceStatisticsImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'attended': instance.attended,
      'absent': instance.absent,
      'status': instance.status,
      'clock_in': instance.clockIn,
      'clock_out': instance.clockOut,
      'overtime': instance.overtime,
      'day_off': instance.dayOff,
    };

_$PeriodImpl _$$PeriodImplFromJson(Map<String, dynamic> json) => _$PeriodImpl(
      start: json['start'] as String,
      end: json['end'] as String,
      days: (json['days'] as num).toDouble(),
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'days': instance.days,
    };

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      waiting: (json['waiting'] as num).toInt(),
      approved: (json['approved'] as num).toInt(),
      rejected: (json['rejected'] as num).toInt(),
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'waiting': instance.waiting,
      'approved': instance.approved,
      'rejected': instance.rejected,
    };

_$ClockInImpl _$$ClockInImplFromJson(Map<String, dynamic> json) =>
    _$ClockInImpl(
      late: (json['late'] as num).toInt(),
      early: (json['early'] as num).toInt(),
      onTime: (json['on_time'] as num).toInt(),
    );

Map<String, dynamic> _$$ClockInImplToJson(_$ClockInImpl instance) =>
    <String, dynamic>{
      'late': instance.late,
      'early': instance.early,
      'on_time': instance.onTime,
    };

_$ClockOutImpl _$$ClockOutImplFromJson(Map<String, dynamic> json) =>
    _$ClockOutImpl(
      late: (json['late'] as num).toInt(),
      early: (json['early'] as num).toInt(),
      onTime: (json['on_time'] as num).toInt(),
    );

Map<String, dynamic> _$$ClockOutImplToJson(_$ClockOutImpl instance) =>
    <String, dynamic>{
      'late': instance.late,
      'early': instance.early,
      'on_time': instance.onTime,
    };

_$DayOffImpl _$$DayOffImplFromJson(Map<String, dynamic> json) => _$DayOffImpl(
      used: (json['used'] as num).toInt(),
      quota: (json['quota'] as num).toInt(),
    );

Map<String, dynamic> _$$DayOffImplToJson(_$DayOffImpl instance) =>
    <String, dynamic>{
      'used': instance.used,
      'quota': instance.quota,
    };
