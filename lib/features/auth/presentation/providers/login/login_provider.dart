import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/company_profile/company_profile_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/user_profile/user_profile_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_provider.g.dart';

final loginUseCaseProvider = Provider((ref) {
  final repo = ref.watch(authRepositoryProvider);
  return LoginUseCase(repo);
});

@riverpod
class Login extends _$Login {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String email, String password) async {
    state = const AsyncLoading();

    try {
      final loginResponse =
          await ref.read(loginUseCaseProvider)(email, password);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(StorageKeys.token, loginResponse.token);

      final companyProfile =
          await ref.read(companyProfileProvider.notifier).fetchCompanyProfile();

      print("Company p ${companyProfile.name}");

      await ref
          .read(companyProfileProvider.notifier)
          .onSuccessFetch(companyProfile);

      final userProfile =
          await ref.read(userProfileProvider.notifier).fetchProfile();

      await ref.read(authProvider.notifier).onLoginSuccess(userProfile);

      state = const AsyncData(null);
    } catch (error, st) {
      await ref.read(authRepositoryProvider).logout();
      await ref.read(logoutProvider.notifier).submit();
      state = AsyncError(error, st); // <- keep consistent state
      rethrow;
    }
  }
}
