// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_balance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveBalanceResponseImpl _$$LeaveBalanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveBalanceResponseImpl(
      availableTimeOff: (json['available_time_off'] as num?)?.toInt(),
      timeOffUsed: (json['time_off_used'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LeaveBalanceResponseImplToJson(
        _$LeaveBalanceResponseImpl instance) =>
    <String, dynamic>{
      'available_time_off': instance.availableTimeOff,
      'time_off_used': instance.timeOffUsed,
    };
