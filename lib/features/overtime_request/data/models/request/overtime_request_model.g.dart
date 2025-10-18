// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OvertimeRequestImpl _$$OvertimeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OvertimeRequestImpl(
      overtimeDate: json['overtime_date'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$OvertimeRequestImplToJson(
        _$OvertimeRequestImpl instance) =>
    <String, dynamic>{
      'overtime_date': instance.overtimeDate,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'notes': instance.notes,
    };
