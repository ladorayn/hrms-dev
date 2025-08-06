import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/login/login_response.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio dio;

  AuthRepositoryImpl(this.dio);

  @override
  Future<String> login(String email, String password) async {
    try {
      final response = await dio.post('/login', data: {
        'email': email,
        'password': password,
      });

      final result = LoginResponse.fromJson(response.data['data']);
      final token = result.token;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(StorageKeys.token, token);

      return token;
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await dio.post('/logout');

      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove(StorageKeys.token);
      } else {
        throw Exception('Logout failed: ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        throw UnauthorizedException('Session expired');
      }
      throw Exception(e.response?.data['message'] ?? 'Logout failed');
    }
  }
}
