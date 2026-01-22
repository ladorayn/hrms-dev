// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offboarding_handover_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HandoverItemsImpl _$$HandoverItemsImplFromJson(Map<String, dynamic> json) =>
    _$HandoverItemsImpl(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      name: json['name'] as String,
      notes: json['notes'] as String?,
      status: (json['status'] as num).toInt(),
      expectedReturnDate: json['expected_return_date'] as String?,
      receivedAt: json['received_at'] as String?,
      statusLabel: json['status_label'] as String,
      createdAt: json['created_at'] as String,
      recipients: (json['recipients'] as List<dynamic>)
          .map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HandoverItemsImplToJson(_$HandoverItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'notes': instance.notes,
      'status': instance.status,
      'expected_return_date': instance.expectedReturnDate,
      'received_at': instance.receivedAt,
      'status_label': instance.statusLabel,
      'created_at': instance.createdAt,
      'recipients': instance.recipients,
    };

_$RecipientImpl _$$RecipientImplFromJson(Map<String, dynamic> json) =>
    _$RecipientImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      statusLabel: json['status_label'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipientImplToJson(_$RecipientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
