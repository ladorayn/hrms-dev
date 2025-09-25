import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';

class UserProfileUseCase {
  final AuthRepository repository;

  UserProfileUseCase(this.repository);

  Future<UserProfileResponse> call() {
    return repository.getProfile();
  }
}
