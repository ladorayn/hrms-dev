import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:hrms_mobile/features/auth/domain/repositories/user_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockUserRepository mockRepo;
  late GetUserUseCase useCase;

  const user = User(
    name: 'Ada Lovelace',
    email: 'ada@example.com',
  );

  setUp(() {
    mockRepo = MockUserRepository();
    useCase = GetUserUseCase(mockRepo);
  });

  group('GetUserUseCase.call', () {
    test('returns User from repository on success', () async {
      // Arrange
      when(() => mockRepo.getUser()).thenAnswer((_) async => user);

      // Act
      final result = await useCase();

      // Assert
      expect(result.name, 'Ada Lovelace');
      expect(result.email, 'ada@example.com');
      verify(() => mockRepo.getUser()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      // Arrange
      when(() => mockRepo.getUser()).thenThrow(
        UnauthorizedException('Unauthenticated'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(isA<UnauthorizedException>()),
      );

      verify(() => mockRepo.getUser()).called(1);
    });
  });
}
