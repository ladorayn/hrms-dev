import 'dart:convert';

import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final SharedPreferences prefs;

  UserRepositoryImpl(this.prefs);

  @override
  Future<User> getUser() async {
    final userJson = prefs.getString(StorageKeys.user);

    if (userJson != null) {
      final userMap = json.decode(userJson) as Map<String, dynamic>;
      return User.fromJson(userMap);
    } else {
      throw Exception('User not found. Please log in.');
    }
  }
}
