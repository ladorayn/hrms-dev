import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  // NETWORKING STUFF
  static bool get USE_ALICE =>
      dotenv.get('USE_ALICE', fallback: 'true').toLowerCase() == 'true';

  static bool get USE_MOCK_SERVER =>
      dotenv.get('USE_MOCK_SERVER', fallback: 'false').toLowerCase() == 'true';

  /// User-manual capture only. Pair with kDebugMode; keep false in .env.prod.
  static bool get manualCaptureBypass =>
      dotenv.get('MANUAL_CAPTURE_BYPASS', fallback: 'false').toLowerCase() ==
      'true';

  static String get BASE_URL_FACE_SERVICE =>
      dotenv.get('FACE_BASE_URL', fallback: 'https://face.okejobhub.fun/');

  static String get baseUrl {
    if (USE_MOCK_SERVER) {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:3003/api';
      } else {
        return 'http://localhost:3003/api';
      }
    } else {
      return dotenv.get('BASE_URL', fallback: 'https://api.okejobhub.fun/');
    }
  }

  static String get faceBaseUrl {
    if (USE_MOCK_SERVER) {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:3004/api';
      } else {
        return 'http://localhost:3004/api';
      }
    } else {
      return BASE_URL_FACE_SERVICE;
    }
  }
}
