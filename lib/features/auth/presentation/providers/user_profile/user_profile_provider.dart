import 'package:hrms_mobile/features/auth/domain/usecases/user_profile_usercase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

final userProfileUseCaseProvider = Provider((ref) {
  final repo = ref.watch(authRepositoryProvider);
  return UserProfileUseCase(repo);
});

@riverpod
class UserProfile extends _$UserProfile {
  @override
  FutureOr<UserProfileResponse?> build() {
    return null;
  }

  Future<UserProfileResponse> fetchProfile() async {
    // Just fetch and return — no need to manage its own state
    return await ref.read(authRepositoryProvider).getProfile();
  }
}
