import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Global instance to be used by both local and push services
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class LocalNotificationService {
  // Use a private constructor to prevent external instantiation
  LocalNotificationService._();

  static Future<void> initializePlatformNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // Request permissions through the settings object on older iOS
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
            requestSoundPermission: true,
            requestBadgePermission: true,
            requestAlertPermission: true);

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
  }

  static void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    // This handles taps on local notifications and foreground FCM notifications
    String? payload = notificationResponse.payload;
    if (payload != null) {
      debugPrint('Notification tapped. Payload: $payload');
      // TODO: IMPLEMENT DEEP LINKING HERE
      // You will need to parse the payload (which should be a JSON string
      // containing the data map from FCM) and use your router to navigate.
      // Example:
      // final data = json.decode(payload);
      // navigatorKey.currentState?.pushNamed('/details', arguments: data['id']);
    }
  }

  static Future<void> requestPermissionAndroid13() async {
    // For Android 13+ (API 33), request runtime permission
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  // Helper method to display a notification banner
  static Future<void> showNotification({
    required int id,
    String? title,
    String? body,
    String? payload,
  }) async {
    // Ensure you define an Android Channel for notifications to work on Android 8.0+
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'fcm_default_channel',
      'HRMS Push Notifications',
      channelDescription: 'Channel for all HRMS push notifications.',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'HRMS Alert',
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      platformChannelSpecifics,
      payload: payload,
    );
  }

  // New: Method specifically for showing FCM messages received in the foreground
  static void showFCMNotification(RemoteMessage message) {
    // Only display if there is a notification part (title/body)
    if (message.notification != null) {
      LocalNotificationService.showNotification(
        // Use message hash code for unique ID
        id: message.hashCode,
        title: message.notification?.title,
        body: message.notification?.body,
        // Pass the entire data map as a stringified payload for tap handling
        payload: message.data.toString(),
      );
    }
  }
}
