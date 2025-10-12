// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_location_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateLocationResponseModelImpl
    _$$ValidateLocationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ValidateLocationResponseModelImpl(
          isValid: json['is_valid'] as bool?,
          distance: (json['distance'] as num?)?.toDouble(),
          maxRadius: (json['max_radius'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ValidateLocationResponseModelImplToJson(
        _$ValidateLocationResponseModelImpl instance) =>
    <String, dynamic>{
      'is_valid': instance.isValid,
      'distance': instance.distance,
      'max_radius': instance.maxRadius,
    };
