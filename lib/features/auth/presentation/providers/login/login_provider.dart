import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/domain/entities/login_state.dart';
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
  LoginState build() {
    return const LoginState();
  }

  Future<bool> submit(String email, String password) async {
    state = state.copyWith(isLoading: true, errors: {});

    try {
      final loginResponse =
          await ref.read(loginUseCaseProvider)(email, password);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(StorageKeys.token, loginResponse.token);

      final companyProfile =
          await ref.read(companyProfileProvider.notifier).fetchCompanyProfile();

      await ref
          .read(companyProfileProvider.notifier)
          .onSuccessFetch(companyProfile);

      final userProfile =
          await ref.read(userProfileProvider.notifier).fetchProfile();

      await ref.read(authProvider.notifier).onLoginSuccess(userProfile);

      state = state.copyWith(isLoading: false);
      return true;
    } on ValidationException catch (e) {
      final displayErrors =
          e.errors.map((key, value) => MapEntry(key, value.first));
      state = state.copyWith(isLoading: false, errors: displayErrors);
      return false;
    } catch (error, st) {
      await ref.read(authRepositoryProvider).logout();
      await ref.read(logoutProvider.notifier).submit();
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }
}
