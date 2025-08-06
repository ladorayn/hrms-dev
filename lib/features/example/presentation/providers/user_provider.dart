import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/get_user_usecase.dart';

final userRepositoryProvider = Provider((ref) => UserRepositoryImpl());
final getUserUseCaseProvider = Provider(
  (ref) => GetUserUseCase(ref.watch(userRepositoryProvider)),
);

final userProvider = FutureProvider<UserEntity>((ref) async {
  final getUser = ref.watch(getUserUseCaseProvider);
  return getUser();
});
