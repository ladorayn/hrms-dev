import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(String email, String password);
  Future<void> logout();
  Future<void> forgotPassword(String email);
  Future<void> resetPassword(ResetPasswordRequest request);
}
