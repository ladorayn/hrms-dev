import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_validate_request.freezed.dart';
part 'handover_validate_request.g.dart';

@freezed
class HandoverValidateRequest with _$HandoverValidateRequest {
  const factory HandoverValidateRequest({
    @JsonKey(name: 'handover_asset_id') required int handoverAssetId,
  }) = _HandoverValidateRequest;

  factory HandoverValidateRequest.fromJson(Map<String, dynamic> json) =>
      _$HandoverValidateRequestFromJson(json);
}
