// features/auth/data/models/login/response/login_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart'; // Import the new User model

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required User user,
    required String token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
