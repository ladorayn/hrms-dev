import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_bulk_update_request.freezed.dart';
part 'handover_bulk_update_request.g.dart';

@freezed
class HandoverRequest with _$HandoverRequest {
  const factory HandoverRequest({
    required List<HandoverItemRequest> data,
  }) = _HandoverRequest;

  factory HandoverRequest.fromJson(Map<String, dynamic> json) =>
      _$HandoverRequestFromJson(json);
}

/// This is the object inside the "data" array
@freezed
class HandoverItemRequest with _$HandoverItemRequest {
  const factory HandoverItemRequest({
    /// "work", "document", "equipment", "facility"
    required String category,
    required String name,
    required List<RecipientRequest> recipients,
  }) = _HandoverItemRequest;

  factory HandoverItemRequest.fromJson(Map<String, dynamic> json) =>
      _$HandoverItemRequestFromJson(json);
}

@freezed
class RecipientRequest with _$RecipientRequest {
  const factory RecipientRequest({
    @JsonKey(name: 'user_id') required int userId,
    required int status,
  }) = _RecipientRequest;

  factory RecipientRequest.fromJson(Map<String, dynamic> json) =>
      _$RecipientRequestFromJson(json);
}
