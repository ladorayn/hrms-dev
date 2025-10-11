import 'package:hrms_mobile/features/auth/data/models/change_password/request/change_password_request_model.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';

class ChangePasswordUseCase {
  final AuthRepository repository;
  ChangePasswordUseCase(this.repository);

  Future<void> call(ChangePasswordRequest request) {
    return repository.changePassword(request);
  }
}
