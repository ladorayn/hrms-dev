import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hrms_mobile/core/state/logout_guard.dart';
import 'package:hrms_mobile/core/storage/secure_token_storage.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';
import 'package:riverpod/riverpod.dart';

class AuthInterceptor extends Interceptor {
  final Ref ref;

  AuthInterceptor(this.ref);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await secureTokenStorage.read();

      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
        if (kDebugMode) print('[AuthInterceptor] Token attached');
      } else {
        if (kDebugMode) print('[AuthInterceptor] No token found');
      }
    } catch (e) {
      if (kDebugMode) print('[AuthInterceptor] Error: $e');
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final bool isUnauthorized =
        err.response?.statusCode == 401 || err.response?.statusCode == 403;
    final bool isLoginRequest = err.requestOptions.path.endsWith('/login');

    if (isUnauthorized && !isLoginRequest && !LogoutGuard.hasLoggedOut) {
      LogoutGuard.hasLoggedOut = true;

      if (kDebugMode) {
        print(
            '[AuthInterceptor] Unauthorized on a protected route. Forcing logout.');
      }
      ref.read(logoutProvider.notifier).submit();
    }
    handler.next(err);
  }
}
