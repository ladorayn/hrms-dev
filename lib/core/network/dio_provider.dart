import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/config/app_config.dart';
import 'package:hrms_mobile/core/network/interceptors/auth_interceptor.dart';
import 'package:hrms_mobile/core/network/interceptors/kms_interceptor.dart';
import 'package:hrms_mobile/core/network/interceptors/vkey_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'alice_provider.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  ));

  if (!kReleaseMode) {
    dio.interceptors.add(PrettyDioLogger(
        requestBody: true, responseBody: true, requestHeader: true));
  }

  // 🔐 Auth interceptor
  // AutRh interceptor for token + redirect on 401
  dio.interceptors.add(AuthInterceptor(ref));

  if (AppConfig.USE_ALICE) {
    final alice = ref.watch(aliceProvider);
    final aliceAdapter = AliceDioAdapter();
    alice.addAdapter(aliceAdapter);
    dio.interceptors.add(aliceAdapter);
  }

  if (AppConfig.USE_VKEY) {
    dio.interceptors.add(VKeyInterceptor());
  }

  if (AppConfig.USE_KMS) {
    dio.interceptors.add(KmsInterceptor());
  }

  return dio;
}
