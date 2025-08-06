import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/state/logout_guard.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_provider.g.dart';

final logoutUseCaseProvider = Provider((ref) {
  final repo = ref.watch(authRepositoryProvider);
  return LogoutUseCase(repo);
});

@riverpod
class Logout extends _$Logout {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    state = const AsyncLoading();
    try {
      await ref.read(logoutUseCaseProvider)();
      state = const AsyncData(null);

      final ctx = globalNavigatorKey.currentContext;
      if (ctx != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ctx.go(RoutePaths.login);

          // ✅ Reset flag only after the navigation happens
          LogoutGuard.hasLoggedOut = false;
        });
      } else {
        // fallback reset if context is null
        LogoutGuard.hasLoggedOut = false;
      }
    } catch (e, st) {
      state = AsyncError(e, st);
      LogoutGuard.hasLoggedOut = false; // ✅ Also reset on error
    }
  }
}
