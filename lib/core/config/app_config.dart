import 'dart:io';

class AppConfig {
  // THIRD PARTY STUFF
  static const bool USE_VKEY = true;

  // NETWORKING STUFF
  static const bool USE_FULL_BODY_ENCRYPT = false;
  static const bool USE_SSL_PINNING = true;
  static const bool USE_ALICE = true; // Set true for development
  static const bool USE_KMS = true;

  static const bool USE_MOCK_SERVER = false;

  static const String BASE_URL_FACE_SERVICE = 'https://face.okejobhub.fun/';

  static String get baseUrl {
    if (USE_MOCK_SERVER) {
      // Detect platform for emulator-specific address
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:3003/api'; // Android emulator
      } else {
        return 'http://localhost:3003/api'; // iOS, macOS, web
      }
    } else {
      return 'https://api.okejobhub.fun/'; // Production
    }
  }

  static String get faceBaseUrl {
    if (USE_MOCK_SERVER) {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:3004/api'; // Secondary Android emulator
      } else {
        return 'http://localhost:3004/api'; // Secondary iOS, macOS, web
      }
    } else {
      return BASE_URL_FACE_SERVICE; // Secondary Production
    }
  }
}
