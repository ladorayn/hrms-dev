import 'dart:convert';

import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  // The build method will be called once to initialize the auth state
  @override
  Future<User?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString(StorageKeys.user);

    if (userJson != null) {
      return User.fromJson(json.decode(userJson));
    }
    return null;
  }

  // Call this method after a successful login
  Future<void> onLoginSuccess(LoginResponse loginResponse) async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = json.encode(loginResponse.user.toJson());
    await prefs.setString(StorageKeys.token, loginResponse.token);
    await prefs.setString(StorageKeys.user, userJson);
    state = AsyncData(loginResponse.user);
  }

  // Call this method to log out
  Future<void> onLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeys.token);
    await prefs.remove(StorageKeys.user);
    state = const AsyncData(null);
  }
}
