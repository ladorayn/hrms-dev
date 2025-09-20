import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:hrms_mobile/features/auth/domain/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repositories/user_repository_impl.dart';
import '../../domain/usecases/get_user_usecase.dart';

final sharedPreferencesProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider).asData?.value;

  if (prefs == null) {
    throw Exception("SharedPreferences not initialized");
  }

  return UserRepositoryImpl(prefs);
});

final getUserUseCaseProvider = Provider(
  (ref) => GetUserUseCase(ref.watch(userRepositoryProvider)),
);

final userProvider = FutureProvider<User>((ref) async {
  final getUser = ref.watch(getUserUseCaseProvider);
  return getUser();
});
