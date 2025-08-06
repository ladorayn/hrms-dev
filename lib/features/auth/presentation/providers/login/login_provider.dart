import 'package:hrms_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
      final token = await ref.read(loginUseCaseProvider)(email, password);
      state = AsyncData(token);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
