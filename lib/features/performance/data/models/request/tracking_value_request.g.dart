// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_value_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingValueRequestImpl _$$TrackingValueRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingValueRequestImpl(
      keyResultId: (json['key_result_id'] as num?)?.toInt(),
      trackingPeriodId: (json['tracking_period_id'] as num?)?.toInt(),
      actualValue: (json['actual_value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrackingValueRequestImplToJson(
        _$TrackingValueRequestImpl instance) =>
    <String, dynamic>{
      'key_result_id': instance.keyResultId,
      'tracking_period_id': instance.trackingPeriodId,
      'actual_value': instance.actualValue,
    };
