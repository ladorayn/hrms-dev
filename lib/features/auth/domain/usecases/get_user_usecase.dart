import 'package:hrms_mobile/features/auth/data/models/user.dart';

import '../repositories/user_repository.dart';

class GetUserUseCase {
  final UserRepository repository;
  GetUserUseCase(this.repository);

  Future<User> call() {
    return repository.getUser();
  }
}
