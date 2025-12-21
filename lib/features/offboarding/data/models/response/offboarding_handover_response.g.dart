// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offboarding_handover_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HandoverItemImpl _$$HandoverItemImplFromJson(Map<String, dynamic> json) =>
    _$HandoverItemImpl(
      id: (json['id'] as num?)?.toInt(),
      offboardingId: (json['offboarding_id'] as num?)?.toInt(),
      category: json['category'] as String?,
      name: json['name'] as String?,
      notes: json['notes'] as String?,
      status: (json['status'] as num?)?.toInt(),
      expectedReturnDate: json['expected_return_date'] as String?,
      receivedAt: json['received_at'] as String?,
      meta: json['meta'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      statusLabel: json['status_label'] as String?,
      recipients: (json['recipients'] as List<dynamic>?)
          ?.map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HandoverItemImplToJson(_$HandoverItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offboarding_id': instance.offboardingId,
      'category': instance.category,
      'name': instance.name,
      'notes': instance.notes,
      'status': instance.status,
      'expected_return_date': instance.expectedReturnDate,
      'received_at': instance.receivedAt,
      'meta': instance.meta,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status_label': instance.statusLabel,
      'recipients': instance.recipients,
    };

_$RecipientImpl _$$RecipientImplFromJson(Map<String, dynamic> json) =>
    _$RecipientImpl(
      id: (json['id'] as num?)?.toInt(),
      handoverItemId: (json['handover_item_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      receivedAt: json['received_at'] as String?,
      remarks: json['remarks'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      statusLabel: json['status_label'] as String?,
    );

Map<String, dynamic> _$$RecipientImplToJson(_$RecipientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'handover_item_id': instance.handoverItemId,
      'user_id': instance.userId,
      'status': instance.status,
      'updated_by': instance.updatedBy,
      'received_at': instance.receivedAt,
      'remarks': instance.remarks,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status_label': instance.statusLabel,
    };
