import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/user_profile_usercase.dart';
import 'package:hrms_mobile/features/user/data/models/user.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late UserProfileUseCase useCase;

  const profile = UserProfileResponse(
    id: 1,
    name: 'Ada Lovelace',
    email: 'ada@example.com',
  );

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = UserProfileUseCase(mockRepo);
  });

  group('UserProfileUseCase.call', () {
    test('returns UserProfileResponse from repository on success', () async {
      // Arrange
      when(() => mockRepo.getProfile()).thenAnswer((_) async => profile);

      // Act
      final result = await useCase();

      // Assert
      expect(result.id, 1);
      expect(result.name, 'Ada Lovelace');
      expect(result.email, 'ada@example.com');
      verify(() => mockRepo.getProfile()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      // Arrange
      when(() => mockRepo.getProfile()).thenThrow(
        UnauthorizedException('Unauthenticated'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(isA<UnauthorizedException>()),
      );

      verify(() => mockRepo.getProfile()).called(1);
    });
  });
}
