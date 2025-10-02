// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attendance_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateAttendanceRequestModelImpl _$$UpdateAttendanceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAttendanceRequestModelImpl(
      shiftId: (json['shift_id'] as num?)?.toInt(),
      clockInAt: json['clock_in_at'] as String?,
      clockOutAt: json['clock_out_at'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$UpdateAttendanceRequestModelImplToJson(
        _$UpdateAttendanceRequestModelImpl instance) =>
    <String, dynamic>{
      'shift_id': instance.shiftId,
      'clock_in_at': instance.clockInAt,
      'clock_out_at': instance.clockOutAt,
      'notes': instance.notes,
    };
