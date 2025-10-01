// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_out_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClockOutRequestModelImpl _$$ClockOutRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClockOutRequestModelImpl(
      clockOutAt: json['clock_out_at'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$ClockOutRequestModelImplToJson(
        _$ClockOutRequestModelImpl instance) =>
    <String, dynamic>{
      'clock_out_at': instance.clockOutAt,
      'notes': instance.notes,
    };
