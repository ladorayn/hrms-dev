import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
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

  Future<void> onLoginSuccess(
      UserProfileResponse userProfileResponse, UserProfileData? profile) async {
    final updatedUserProfileResponse =
        userProfileResponse.copyWith(faces: profile?.faces);
    final prefs = await SharedPreferences.getInstance();
    final userJson = json.encode(updatedUserProfileResponse.toJson());
    await prefs.setString(StorageKeys.user, userJson);
    state = AsyncData(updatedUserProfileResponse);
  }

  Future<void> onLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await ref.read(todayAttendanceProvider.notifier).clear();
    await prefs.remove(StorageKeys.token);
    globalNavigatorKey.currentContext?.go(RoutePaths.login);
    await prefs.remove(StorageKeys.user);
    state = const AsyncData(null);
  }

  Future<void> refreshProfile() async {
    try {
      final repo = ref.read(authRepositoryProvider);
      final profile = await repo.getProfile();
      
      // Update local storage
      final prefs = await SharedPreferences.getInstance();
      final userJson = json.encode(profile.toJson());
      await prefs.setString(StorageKeys.user, userJson);
      
      state = AsyncData(profile);
    } catch (e) {
      // If refresh fails, we keep the old state but maybe log it
      rethrow;
    }
  }
}
