import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> getUser() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    // Return dummy user
    return const UserModel(id: '1', name: 'Riverpod User').toEntity();
  }
}
