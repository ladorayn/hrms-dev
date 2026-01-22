import 'package:freezed_annotation/freezed_annotation.dart';

part 'offboarding_handover_item_response.freezed.dart';
part 'offboarding_handover_item_response.g.dart';

@freezed
class HandoverItems with _$HandoverItems {
  const factory HandoverItems({
    required int id,
    required String category,
    required String name,
    String? notes,
    required int status,
    @JsonKey(name: 'expected_return_date') String? expectedReturnDate,
    @JsonKey(name: 'received_at') String? receivedAt,
    @JsonKey(name: 'status_label') required String statusLabel,
    @JsonKey(name: 'created_at') required String createdAt,
    required List<Recipient> recipients,
  }) = _HandoverItems;

  factory HandoverItems.fromJson(Map<String, dynamic> json) =>
      _$HandoverItemsFromJson(json);
}

@freezed
class Recipient with _$Recipient {
  const factory Recipient({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required int status,
    @JsonKey(name: 'status_label') required String statusLabel,
    required User user,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) =>
      _$RecipientFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
