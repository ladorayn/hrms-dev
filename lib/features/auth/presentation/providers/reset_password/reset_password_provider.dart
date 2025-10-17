import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/change_password/request/change_password_request_model.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/auth/domain/entities/reset_password_state.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/change_password_usecase.dart';
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

final changePasswordUseCaseProvider = Provider((ref) {
  return ChangePasswordUseCase(ref.watch(authRepositoryProvider));
});

@riverpod
class ResetPassword extends _$ResetPassword {
  @override
  ResetPasswordState build() {
    return const ResetPasswordState();
  }

  Future<void> requestReset(String email) async {
    state = state.copyWith(isLoading: true, errors: {});
    try {
      await ref.read(forgotPasswordUseCaseProvider)(email);
      state = const ResetPasswordState(); // success → reset state
    } on ValidationException catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: e.errors.map((k, v) => MapEntry(k, v.first)),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: {'general': e.toString()},
      );
    }
  }

  Future<void> submitNewPassword(ResetPasswordRequest request) async {
    state = state.copyWith(isLoading: true, errors: {});
    try {
      await ref.read(resetPasswordUseCaseProvider)(request);
      state = const ResetPasswordState(); // success → reset state
    } on ValidationException catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: e.errors.map((k, v) => MapEntry(k, v.first)),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: {'general': e.toString()},
      );
    }
  }

  Future<void> changeNewPassword(ChangePasswordRequest request) async {
    state = state.copyWith(isLoading: true, errors: {});
    try {
      await ref.read(changePasswordUseCaseProvider)(request);
      state = const ResetPasswordState(); // success → reset state
    } on ValidationException catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: e.errors.map((k, v) => MapEntry(k, v.first)),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errors: {'general': e.toString()},
      );
    }
  }
}
