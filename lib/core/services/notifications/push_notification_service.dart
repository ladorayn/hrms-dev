import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';

// Top-level function for background messages (REQUIRED by FCM)
// Must be defined outside of any class.
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // NOTE: Firebase.initializeApp() is not strictly needed here if you
  // only rely on the passed message data and don't call other Firebase services.
  debugPrint('FCM Background Handler: ${message.messageId}');
  // You can still perform tasks here, like saving to a database.
}

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  // Use a GlobalKey for navigation, as FCM listeners run outside of widget context
  final GlobalKey<NavigatorState> navigatorKey;

  PushNotificationService(this.navigatorKey);

  Future<void> initializePushNotifications() async {
    // 1. Set the top-level background message handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 2. Request platform permissions (iOS and newer Android)
    await _requestPermissions();

    // 3. Get token and set up refresh listener for backend registration
    await _getTokenAndListenForRefresh();

    // 4. Set up listeners for messages in all states (Foreground, Background, Terminated)
    _setupMessageListeners();
  }

  Future<void> _requestPermissions() async {
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true, badge: true, sound: true,
      provisional: true, // Optional: for quiet notifications on iOS
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      debugPrint('User granted notification permission.');
    } else {
      debugPrint('User declined permission.');
    }

    // Request Android 13+ permission if needed (safe to call always)
    LocalNotificationService.requestPermissionAndroid13();
  }

  Future<void> _getTokenAndListenForRefresh() async {
    String? token = await _fcm.getToken();
    debugPrint("FCM Registration Token: $token");

    // !!! CRITICAL: SEND THIS TOKEN TO YOUR BACKEND !!!
    // sendTokenToBackend(token);

    // Listen for token changes
    _fcm.onTokenRefresh.listen((newToken) {
      debugPrint("FCM Token Refreshed: $newToken");
      // !!! CRITICAL: UPDATE BACKEND WITH NEW TOKEN !!!
      // sendTokenToBackend(newToken);
    });
  }

  void _setupMessageListeners() {
    // 4a. Handle message when app is in **TERMINATED** state and user taps notification
    _fcm.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        _handleNotificationTap(message, isLaunch: true);
      }
    });

    // 4b. Handle message when app is in **BACKGROUND** state and user taps notification
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _handleNotificationTap(message, isLaunch: false);
    });

    // 4c. Handle message when app is in **FOREGROUND** state
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Foreground Message received: ${message.notification?.title}');

      // Use the LocalNotificationService to display a heads-up notification banner
      LocalNotificationService.showFCMNotification(message);
    });
  }

  // Navigation/Deep-linking logic
  void _handleNotificationTap(RemoteMessage message, {required bool isLaunch}) {
    debugPrint(
        'Notification tapped (isLaunch: $isLaunch). Payload: ${message.data}');

    // TODO: IMPLEMENT DEEP LINKING LOGIC
    // Use the data map to navigate via your navigatorKey or AppRouter
    final type = message.data['type'];
    final id = message.data['id'];

    if (type == 'leave_request' && id != null) {
      // Example: Go to the leave request details page
      // navigatorKey.currentState?.pushNamed('/leave-request-details', arguments: id);
    } else if (type == 'attendance_update') {
      // Example: Go to the attendance history page
      // navigatorKey.currentState?.pushNamed('/attendance-history');
    }
    // Note: The actual navigation depends on your `app_router` setup.
  }
}
