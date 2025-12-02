import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
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

  Future<void> onLoginSuccess(UserProfileResponse userProfileResponse,
      int? profileId, String? profile) async {
    final updatedUserProfileResponse = userProfileResponse.copyWith(
      profileId: profileId,
      profile: profile,
    );
    final prefs = await SharedPreferences.getInstance();
    final userJson = json.encode(updatedUserProfileResponse.toJson());
    await prefs.setString(StorageKeys.user, userJson);
    state = AsyncData(userProfileResponse);
  }

  Future<void> onLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await ref.read(todayAttendanceProvider.notifier).clear();
    await prefs.remove(StorageKeys.token);
    globalNavigatorKey.currentContext?.go(RoutePaths.login);
    await prefs.remove(StorageKeys.user);
    state = const AsyncData(null);
  }
}
