import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Auth token storage backed by platform secure storage.
///
/// Migrates a legacy token from [SharedPreferences] into secure storage once.
class SecureTokenStorage {
  SecureTokenStorage({
    FlutterSecureStorage? secureStorage,
    Future<SharedPreferences> Function()? prefsFactory,
  })  : _secure = secureStorage ?? const FlutterSecureStorage(),
        _prefsFactory = prefsFactory ?? SharedPreferences.getInstance;

  final FlutterSecureStorage _secure;
  final Future<SharedPreferences> Function() _prefsFactory;

  Future<String?> read() async {
    await _migrateFromPrefsIfNeeded();
    final token = await _secure.read(key: StorageKeys.token);
    if (token == null || token.isEmpty) return null;
    return token;
  }

  Future<void> write(String token) async {
    await _secure.write(key: StorageKeys.token, value: token);
    final prefs = await _prefsFactory();
    await prefs.remove(StorageKeys.token);
  }

  Future<void> delete() async {
    await _secure.delete(key: StorageKeys.token);
    final prefs = await _prefsFactory();
    await prefs.remove(StorageKeys.token);
  }

  Future<void> _migrateFromPrefsIfNeeded() async {
    final existing = await _secure.read(key: StorageKeys.token);
    if (existing != null && existing.isNotEmpty) return;

    final prefs = await _prefsFactory();
    final legacy = prefs.getString(StorageKeys.token);
    if (legacy == null || legacy.isEmpty) return;

    await _secure.write(key: StorageKeys.token, value: legacy);
    await prefs.remove(StorageKeys.token);
  }
}

final secureTokenStorage = SecureTokenStorage();
