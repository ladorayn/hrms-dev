// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offboarding_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffboardingScheduleImpl _$$OffboardingScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$OffboardingScheduleImpl(
      id: (json['id'] as num?)?.toInt(),
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      interviewer: json['interviewer'] as String?,
    );

Map<String, dynamic> _$$OffboardingScheduleImplToJson(
        _$OffboardingScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'interviewer': instance.interviewer,
    };
