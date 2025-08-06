import 'dart:convert';
import 'package:dio/dio.dart';

class KmsInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Encrypt request body if it's JSON
    if (options.data is Map) {
      final jsonBody = jsonEncode(options.data);

      // 🔐 Replace this with real encryption logic
      final encrypted = base64Encode(utf8.encode(jsonBody));

      options.data = {
        'encrypted_payload': encrypted,
      };

      options.headers['X-KMS-Encrypted'] = 'true';
    }

    super.onRequest(options, handler);
  }
}
