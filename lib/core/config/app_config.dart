import 'dart:io';

class AppConfig {
  // THIRD PARTY STUFF
  static const bool USE_VKEY = true;

  // NETWORKING STUFF
  static const bool USE_FULL_BODY_ENCRYPT = true;
  static const bool USE_SSL_PINNING = true;
  static const bool USE_ALICE = true; // Set true for development
  static const bool USE_KMS = true;

  static const bool USE_MOCK_SERVER = true;

  static String get baseUrl {
    if (USE_MOCK_SERVER) {
      // Detect platform for emulator-specific address
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:3003/api'; // Android emulator
      } else {
        return 'http://localhost:3003/api'; // iOS, macOS, web
      }
    } else {
      return 'https://your-real-backend.com/api'; // Production
    }
  }
}
