import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository repository;
  LogoutUseCase(this.repository);

  Future<void> call() => repository.logout();
}
