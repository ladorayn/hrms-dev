// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handover_bulk_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HandoverRequestImpl _$$HandoverRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HandoverRequestImpl(
      category: json['category'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => HandoverItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HandoverRequestImplToJson(
        _$HandoverRequestImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'data': instance.data,
    };

_$HandoverItemRequestImpl _$$HandoverItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HandoverItemRequestImpl(
      category: json['category'] as String,
      name: json['name'] as String,
      recipients: (json['recipients'] as List<dynamic>)
          .map((e) => RecipientRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HandoverItemRequestImplToJson(
        _$HandoverItemRequestImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'recipients': instance.recipients,
    };

_$RecipientRequestImpl _$$RecipientRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipientRequestImpl(
      userId: (json['user_id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipientRequestImplToJson(
        _$RecipientRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'status': instance.status,
    };

_$HandoverCategoryItemRequestImpl _$$HandoverCategoryItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HandoverCategoryItemRequestImpl(
      category: json['category'] as String,
    );

Map<String, dynamic> _$$HandoverCategoryItemRequestImplToJson(
        _$HandoverCategoryItemRequestImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
    };
