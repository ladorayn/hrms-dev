// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_trip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessTripRequestImpl _$$BusinessTripRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTripRequestImpl(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      destination: json['destination'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$BusinessTripRequestImplToJson(
        _$BusinessTripRequestImpl instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'destination': instance.destination,
      'reason': instance.reason,
    };
