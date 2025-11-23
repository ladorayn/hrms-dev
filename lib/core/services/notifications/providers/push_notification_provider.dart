import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/services/notifications/push_notification_service.dart';

// GlobalKey is necessary to allow navigation from the PushNotificationService
// listeners (which run without a Widget context).
final pushNotificationServiceProvider =
    Provider<PushNotificationService>((ref) {
  // Pass the global navigator key to the service
  return PushNotificationService(globalNavigatorKey);
});
