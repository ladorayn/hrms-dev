import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

final appStartupProvider = FutureProvider<bool>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString(StorageKeys.token);
  return token != null && token.isNotEmpty;
});
