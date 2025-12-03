import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/general/general_usecases.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
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

final generalRemoteSourceProvider = Provider<GeneralRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  final faceDio = ref.watch(faceDioProvider);
  return GeneralRemoteSource(dio, faceDio);
});

final generalRepoProvider = Provider<GeneralRepository>((ref) {
  final remoteSource = ref.watch(generalRemoteSourceProvider);
  return GeneralRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final generalUsecaseProvider = Provider((ref) {
  final repository = ref.watch(generalRepoProvider);
  return GeneralUsecases(repository);
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

      if (loginResponse.user.isFirstLogin == true) {
        state = state.copyWith(isLoading: false);
        globalNavigatorKey.currentContext?.pushNamed(
          RoutePaths.resetPasswordCreateName,
          extra: {'email': email, 'password': password, 'isFirstLogin': true},
        );
        return false;
      }

      final generalUsecase = ref.read(generalUsecaseProvider);

      final facesProfile = await generalUsecase.getFacesProfile();

      final companyProfile =
          await ref.read(companyProfileProvider.notifier).fetchCompanyProfile();

      await ref
          .read(companyProfileProvider.notifier)
          .onSuccessFetch(companyProfile);

      final userProfile =
          await ref.read(userProfileProvider.notifier).fetchProfile();

      await ref.read(authProvider.notifier).onLoginSuccess(
            userProfile,
            facesProfile,
          );

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
