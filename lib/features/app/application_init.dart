import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/storage/secure_token_storage.dart';

final appStartupProvider = FutureProvider<bool>((ref) async {
  final token = await secureTokenStorage.read();
  return token != null && token.isNotEmpty;
});
