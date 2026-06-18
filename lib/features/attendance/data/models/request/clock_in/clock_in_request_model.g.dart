// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClockInRequestModelImpl _$$ClockInRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClockInRequestModelImpl(
      shiftId: (json['shift_id'] as num).toInt(),
      clockInAt: json['clock_in_at'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClockInRequestModelImplToJson(
        _$ClockInRequestModelImpl instance) =>
    <String, dynamic>{
      'shift_id': instance.shiftId,
      'clock_in_at': instance.clockInAt,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'notes': instance.notes,
      'branch_id': instance.branchId,
    };
