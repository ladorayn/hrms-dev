import 'dart:convert';

import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  Future<UserProfileResponse?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString(StorageKeys.user);

    if (userJson != null) {
      return UserProfileResponse.fromJson(json.decode(userJson));
    }
    return null;
  }

  Future<void> onLoginSuccess(UserProfileResponse userProfileResponse) async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = json.encode(userProfileResponse.toJson());
    await prefs.setString(StorageKeys.user, userJson);
    state = AsyncData(userProfileResponse);
  }

  Future<void> onLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeys.token);
    await prefs.remove(StorageKeys.user);
    state = const AsyncData(null);
  }
}
