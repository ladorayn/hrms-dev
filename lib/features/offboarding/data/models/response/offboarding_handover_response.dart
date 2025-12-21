import 'package:freezed_annotation/freezed_annotation.dart';

part 'offboarding_handover_response.freezed.dart';
part 'offboarding_handover_response.g.dart';

@freezed
class HandoverItem with _$HandoverItem {
  const factory HandoverItem({
    int? id,
    @JsonKey(name: 'offboarding_id') int? offboardingId,
    String? category,
    String? name,
    String? notes,
    int? status,
    @JsonKey(name: 'expected_return_date') String? expectedReturnDate,
    @JsonKey(name: 'received_at') String? receivedAt,
    dynamic meta,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'status_label') String? statusLabel,
    List<Recipient>? recipients,
  }) = _HandoverItem;

  factory HandoverItem.fromJson(Map<String, dynamic> json) =>
      _$HandoverItemFromJson(json);
}

@freezed
class Recipient with _$Recipient {
  const factory Recipient({
    int? id,
    @JsonKey(name: 'handover_item_id') int? handoverItemId,
    @JsonKey(name: 'user_id') int? userId,
    int? status,
    @JsonKey(name: 'updated_by') int? updatedBy,
    @JsonKey(name: 'received_at') String? receivedAt,
    String? remarks,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'status_label') String? statusLabel,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) =>
      _$RecipientFromJson(json);
}
