import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<String> call(String email, String password) {
    return repository.login(email, password);
  }
}
