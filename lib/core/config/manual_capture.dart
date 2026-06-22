import 'package:flutter/foundation.dart';
import 'package:hrms_mobile/core/config/app_config.dart';

/// Dev-only shortcuts for user-manual screenshot capture (GPS / face).
/// Active only in debug builds when [AppConfig.manualCaptureBypass] is true.
bool get isManualCaptureBypassActive =>
    kDebugMode && AppConfig.manualCaptureBypass;
