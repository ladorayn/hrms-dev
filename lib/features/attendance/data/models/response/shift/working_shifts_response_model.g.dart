// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_shifts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingShiftResponseModelImpl _$$WorkingShiftResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingShiftResponseModelImpl(
      dayOfWeek: (json['day_of_week'] as num).toInt(),
      dayName: json['day_name'] as String,
      date: json['date'] as String,
      shifts: (json['shifts'] as List<dynamic>)
          .map((e) => ShiftSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkingShiftResponseModelImplToJson(
        _$WorkingShiftResponseModelImpl instance) =>
    <String, dynamic>{
      'day_of_week': instance.dayOfWeek,
      'day_name': instance.dayName,
      'date': instance.date,
      'shifts': instance.shifts,
    };

_$ShiftScheduleImpl _$$ShiftScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ShiftScheduleImpl(
      scheduleId: (json['schedule_id'] as num).toInt(),
      sequence: (json['sequence'] as num).toInt(),
      shift: ShiftInfo.fromJson(json['shift'] as Map<String, dynamic>),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      endsNextDay: json['ends_next_day'] as bool,
      breakStartTime: json['break_start_time'] as String?,
      breakEndTime: json['break_end_time'] as String?,
    );

Map<String, dynamic> _$$ShiftScheduleImplToJson(_$ShiftScheduleImpl instance) =>
    <String, dynamic>{
      'schedule_id': instance.scheduleId,
      'sequence': instance.sequence,
      'shift': instance.shift,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'ends_next_day': instance.endsNextDay,
      'break_start_time': instance.breakStartTime,
      'break_end_time': instance.breakEndTime,
    };

_$ShiftInfoImpl _$$ShiftInfoImplFromJson(Map<String, dynamic> json) =>
    _$ShiftInfoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ShiftInfoImplToJson(_$ShiftInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
