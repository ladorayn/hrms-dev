import 'package:flutter/foundation.dart';
import 'package:hrms_mobile/core/services/notifications/providers/push_notification_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_token_sync_provider.g.dart';

@Riverpod(keepAlive: true)
void fcmTokenSync(FcmTokenSyncRef ref) {
  // Watch auth state
  final authState = ref.watch(authProvider);
  final pushService = ref.read(pushNotificationServiceProvider);

  // Use listen to perform side effects on state changes
  ref.listen(authProvider, (previous, next) async {
    final nextUser = next.valueOrNull;
    final prevUser = previous?.valueOrNull;

    // Trigger sync when user becomes authenticated (e.g. login or startup with session)
    if (nextUser != null && prevUser == null) {
      debugPrint('[FcmTokenSync] User logged in/session restored. Syncing FCM token...');
      final token = await pushService.getFCMToken();
      if (token != null) {
        await pushService.sendTokenToBackend(token);
      }
    }
  });

  // Initial check: If already authenticated when this provider starts
  if (authState.valueOrNull != null) {
    Future.microtask(() async {
      debugPrint('[FcmTokenSync] Already authenticated. Ensuring FCM token is synced...');
      final token = await pushService.getFCMToken();
      if (token != null) {
        await pushService.sendTokenToBackend(token);
      }
    });
  }
}
