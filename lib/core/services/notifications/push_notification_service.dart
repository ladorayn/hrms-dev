import 'dart:io';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hrms_mobile/core/data/models/notifications/fcm_registration_request.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('FCM Background Handler: ${message.messageId}');
}

class PushNotificationService {
  late final FirebaseMessaging? _fcm;
  final GlobalKey<NavigatorState> navigatorKey;
  final Dio _dio;

  PushNotificationService(this.navigatorKey, this._dio) {
    if (!kIsWeb && Platform.isAndroid) {
      _fcm = FirebaseMessaging.instance;
    } else {
      _fcm = null;
    }
  }

  static const String _tokenRegistrationUrl = 'api/v1/user/fcm-token';

  Future<void> initializePushNotifications() async {
    if (_fcm == null) return;
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await _requestPermissions();
    _setupMessageListeners();
    _listenToTokenRefresh();
  }

  Future<void> _requestPermissions() async {
    if (_fcm == null) return;
    NotificationSettings settings = await _fcm!.requestPermission(
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
    final prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString(StorageKeys.token);

    if (authToken == null) {
      debugPrint(
          '[PushNotificationService] Skipping token registration: No auth token found.');
      return;
    }

    final request = FCMRegistrationRequest(token: token, platform: 1);
    try {
      final response = await _dio.put(
        _tokenRegistrationUrl,
        data: request,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        debugPrint('FCM Token successfully registered/updated with BE.');
      } else {
        debugPrint(
            'FCM Token registration returned unexpected status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // Don't throw for 401/403 here to avoid landing the user in a logout loop
      // if this is triggered at the same time as a token expiration.
      debugPrint('Dio error during FCM token registration: ${e.message}');
    } catch (e) {
      debugPrint('Error during FCM token registration (Non-Dio error): $e');
    }
  }

  void _listenToTokenRefresh() {
    _fcm?.onTokenRefresh.listen((newToken) {
      debugPrint("FCM Token Refreshed: $newToken");
      sendTokenToBackend(newToken);
    });
  }

  Future<String?> getFCMToken() {
    if (_fcm == null) return Future.value(null);
    return _fcm!.getToken();
  }

  void _setupMessageListeners() {
    if (_fcm == null) return;
    _fcm!.getInitialMessage().then((RemoteMessage? message) {
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

    final type = message.data['type'];
    final id = message.data['id'];

    if (type == 'leave_request' && id != null) {
      // Example: Go to the leave request details page
      // navigatorKey.currentState?.pushNamed('/leave-request-details', arguments: id);
    } else if (type == 'attendance_update') {
      // Example: Go to the attendance history page
      // navigatorKey.currentState?.pushNamed('/attendance-history');
    }
  }
}
