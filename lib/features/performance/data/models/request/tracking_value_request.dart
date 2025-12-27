import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_value_request.freezed.dart';
part 'tracking_value_request.g.dart';

@freezed
class TrackingValueRequest with _$TrackingValueRequest {
  const factory TrackingValueRequest({
    @JsonKey(name: 'key_result_id') int? keyResultId,
    @JsonKey(name: 'tracking_period_id') int? trackingPeriodId,
    @JsonKey(name: 'actual_value') int? actualValue,
  }) = _TrackingValueRequest;

  factory TrackingValueRequest.fromJson(Map<String, dynamic> json) =>
      _$TrackingValueRequestFromJson(json);
}
