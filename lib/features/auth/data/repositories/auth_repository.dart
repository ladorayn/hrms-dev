import 'package:hrms_mobile/features/auth/data/models/change_password/request/change_password_request_model.dart';
import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/user/data/models/company/company_profile.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(String email, String password);
  Future<void> logout();
  Future<void> forgotPassword(String email);
  Future<void> resetPassword(ResetPasswordRequest request);
  Future<UserProfileResponse> getProfile();
  Future<CompanyProfileResponse> getCompanyProfile();
  Future<void> changePassword(ChangePasswordRequest request);
}
