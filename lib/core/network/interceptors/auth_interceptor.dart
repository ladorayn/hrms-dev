import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/state/logout_guard.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  final Ref ref;

  AuthInterceptor(this.ref);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(StorageKeys.token);

      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
        if (kDebugMode) print('[AuthInterceptor] Token attached: $token');
      } else {
        if (kDebugMode) print('[AuthInterceptor] No token found');
      }
    } catch (e) {
      if (kDebugMode) print('[AuthInterceptor] Error: $e');
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if ((err.response?.statusCode == 401 || err.response?.statusCode == 403) &&
        !LogoutGuard.hasLoggedOut) {
      LogoutGuard.hasLoggedOut = true;

      // ✅ Trigger logout once
      await ref.read(logoutProvider.notifier).submit(); // Triggers logout flow
      // Redirect to login
      final context = globalNavigatorKey.currentContext;

      if (context != null) {
        context.go(RoutePaths.login);
      }
    }

    handler.next(err);
  }
}
