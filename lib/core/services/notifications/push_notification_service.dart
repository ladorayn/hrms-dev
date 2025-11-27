// import 'package:http/http.dart' as http; // <--- REMOVED: Replaced by Dio
import 'package:dio/dio.dart'; // <--- ADDED: Use your consistent network library
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
// Assuming you have an error handler utility
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';

// Top-level function for background messages (REQUIRED by FCM)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('FCM Background Handler: ${message.messageId}');
}

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  final GlobalKey<NavigatorState> navigatorKey;
  final Dio _dio;

  PushNotificationService(this.navigatorKey, this._dio);

  static const String _tokenRegistrationUrl = 'api/v1/user/fcm-token';

  Future<void> initializePushNotifications() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await _requestPermissions();
    await _getTokenAndListenForRefresh();
    _setupMessageListeners();
  }

  Future<void> _requestPermissions() async {
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      debugPrint('User granted notification permission.');
    } else {
      debugPrint('User declined permission.');
    }

    LocalNotificationService.requestPermissionAndroid13();
  }

  Future<void> sendTokenToBackend(String token) async {
    try {
      final response = await _dio.post(
        _tokenRegistrationUrl,
        data: {
          'fcm_token': token,
        },
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        debugPrint('FCM Token successfully registered/updated with BE.');
      } else {
        debugPrint(
            'FCM Token registration returned unexpected status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw handleDioError(e);
    } catch (e) {
      debugPrint('Error during FCM token registration (Non-Dio error): $e');
    }
  }

  Future<void> _getTokenAndListenForRefresh() async {
    String? token = await _fcm.getToken();

    if (token != null) {
      debugPrint("FCM Registration Token: $token");

      await sendTokenToBackend(token);

      _fcm.onTokenRefresh.listen((newToken) {
        debugPrint("FCM Token Refreshed: $newToken");
        sendTokenToBackend(newToken);
      });
    }
  }

  void _setupMessageListeners() {
    _fcm.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        _handleNotificationTap(message, isLaunch: true);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _handleNotificationTap(message, isLaunch: false);
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Foreground Message received: ${message.notification?.title}');

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
