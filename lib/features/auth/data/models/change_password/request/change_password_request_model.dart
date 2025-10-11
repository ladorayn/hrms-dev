import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_request_model.freezed.dart';
part 'change_password_request_model.g.dart';

@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @JsonKey(name: "current_password") required String currentPassword,
    @JsonKey(name: "new_password") required String newPassword,
    @JsonKey(name: "new_password_confirmation")
    required String newPasswordConfirmation,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}
