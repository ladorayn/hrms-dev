import 'package:dio/dio.dart';
import 'package:hrms_mobile/features/auth/data/models/login/request/login_request.dart';
import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/forgot_password_request.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio dio;

  AuthRepositoryImpl(this.dio);

  @override
  Future<LoginResponse> login(String email, String password) async {
    final loginData = LoginRequest(email: email, password: password);
    try {
      final response = await dio.post('/login', data: loginData);
      print("SUCCESS AJA BRO");
      return LoginResponse.fromJson(response.data['data']);
    } on DioException catch (e) {
      print("GAGAL INI BRO");
      throw Exception(e.response?.data['message'] ?? 'Login failed');
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
      await dio.post('/password/forgot', data: request);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Request failed');
    }
  }

  @override
  Future<void> resetPassword(ResetPasswordRequest request) async {
    try {
      await dio.post('/password/reset', data: request);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Reset failed');
    }
  }
}
