import 'package:dio/dio.dart';

class VKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Example: Add a fake vkey header (replace with real signing logic)
    options.headers['X-VKey-Signature'] = 'signed-hash-or-token';

    super.onRequest(options, handler);
  }
}
