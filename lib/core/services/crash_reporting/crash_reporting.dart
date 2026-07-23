import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// Crashlytics helpers for Android.
///
/// Assumes [Firebase.initializeApp] already ran (same app as FCM). Soft-fails
/// so boot continues if Crashlytics is unavailable.
class CrashReporting {
  static bool _enabled = false;

  static bool get isEnabled => _enabled;

  static Future<void> init() async {
    try {
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(true);
      _enabled = true;
    } catch (e, st) {
      _enabled = false;
      if (kDebugMode) {
        debugPrint('Crashlytics init skipped: $e');
        debugPrint('$st');
      }
    }
  }

  static Future<void> recordError(
    Object error,
    StackTrace? stack, {
    bool fatal = false,
  }) async {
    if (!_enabled) return;
    try {
      await FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: fatal,
      );
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Crashlytics.recordError failed: $e');
      }
    }
  }
}
