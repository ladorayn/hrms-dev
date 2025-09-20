import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/forgot_password_usecase.dart';
import '../../../domain/usecases/reset_password_usecase.dart';
import '../auth_repository_provider.dart';

part 'reset_password_provider.g.dart';

// Providers for the use cases
final forgotPasswordUseCaseProvider = Provider((ref) {
  return ForgotPasswordUseCase(ref.watch(authRepositoryProvider));
});

final resetPasswordUseCaseProvider = Provider((ref) {
  return ResetPasswordUseCase(ref.watch(authRepositoryProvider));
});

@riverpod
class ResetPassword extends _$ResetPassword {
  @override
  FutureOr<void> build() {}

  // Action for the first screen (requesting the reset link)
  Future<void> requestReset(String email) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(forgotPasswordUseCaseProvider)(email),
    );
  }

  // Action for the second screen (submitting the new password)
  Future<void> submitNewPassword(ResetPasswordRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(resetPasswordUseCaseProvider)(request),
    );
  }
}
