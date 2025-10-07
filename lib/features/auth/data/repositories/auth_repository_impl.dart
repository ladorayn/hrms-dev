import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/auth/data/models/login/request/login_request.dart';
import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/forgot_password_request.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/user/data/models/company/company_profile.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio dio;

  AuthRepositoryImpl(this.dio);

  @override
  Future<LoginResponse> login(String email, String password) async {
    final loginData = LoginRequest(email: email, password: password);
    try {
      final response = await dio.post('api/v1/login', data: loginData);
      return LoginResponse.fromJson(response.data['data']);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> logout() async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.remove(StorageKeys.token);
    // await prefs.remove(StorageKeys.user);
    return;
    // try {
    //   final response = await dio.post('/logout');
    //
    //   if (response.statusCode == 200) {
    //     final prefs = await SharedPreferences.getInstance();
    //     await prefs.remove(StorageKeys.token);
    //   } else {
    //     throw Exception('Logout failed: ${response.statusCode}');
    //   }
    // } on DioException catch (e) {
    //   if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
    //     throw UnauthorizedException('Session expired');
    //   }
    //   throw Exception(e.response?.data['message'] ?? 'Logout failed');
    // }
  }

  @override
  Future<void> forgotPassword(String email) async {
    final request = ForgotPasswordRequest(email: email);
    try {
      await dio.post('api/v1/password/forgot', data: request);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Request failed');
    }
  }

  @override
  Future<void> resetPassword(ResetPasswordRequest request) async {
    try {
      await dio.post('api/v1/password/reset', data: request);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Reset failed');
    }
  }

  @override
  Future<UserProfileResponse> getProfile() async {
    try {
      final response = await dio.get('api/v1/user/profile');
      return UserProfileResponse.fromJson(response.data['data']['user']);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Failed to fetch profile');
    }
  }

  @override
  Future<CompanyProfileResponse> getCompanyProfile() async {
    try {
      final response = await dio.get('api/v1/setting/company-profile');
      return CompanyProfileResponse.fromJson(response.data['data']);
    } on DioException catch (e) {
      throw Exception(
          e.response?.data['message'] ?? 'Failed to fetch company profile');
    }
  }
}
