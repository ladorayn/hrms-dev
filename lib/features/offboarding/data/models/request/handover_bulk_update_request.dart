import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_bulk_update_request.freezed.dart';
part 'handover_bulk_update_request.g.dart';

@freezed
class HandoverRequest with _$HandoverRequest {
  const factory HandoverRequest({
    required String category,
    required List<HandoverItemRequest> data,
  }) = _HandoverRequest;

  factory HandoverRequest.fromJson(Map<String, dynamic> json) =>
      _$HandoverRequestFromJson(json);
}

@freezed
class HandoverItemRequest with _$HandoverItemRequest {
  const factory HandoverItemRequest({
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

@freezed
class HandoverCategoryItemRequest with _$HandoverCategoryItemRequest {
  const factory HandoverCategoryItemRequest({
    required String category,
  }) = _HandoverCategoryItemRequest;

  factory HandoverCategoryItemRequest.fromJson(Map<String, dynamic> json) =>
      _$HandoverCategoryItemRequestFromJson(json);
}
