import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_registration_request.freezed.dart';

part 'fcm_registration_request.g.dart';

@freezed
class FCMRegistrationRequest with _$FCMRegistrationRequest {
  const factory FCMRegistrationRequest({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'platform') required int platform,
  }) = _FCMRegistrationRequest;

  factory FCMRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$FCMRegistrationRequestFromJson(json);
}
