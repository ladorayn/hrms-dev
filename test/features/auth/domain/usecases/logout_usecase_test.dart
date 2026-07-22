import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late LogoutUseCase useCase;

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = LogoutUseCase(mockRepo);
  });

  group('LogoutUseCase.call', () {
    test('completes when repository logout succeeds', () async {
      // Arrange
      when(() => mockRepo.logout()).thenAnswer((_) async {});

      // Act
      await useCase();

      // Assert
      verify(() => mockRepo.logout()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      // Arrange
      when(() => mockRepo.logout()).thenThrow(
        UnauthorizedException('Session expired'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(
          isA<UnauthorizedException>().having(
            (e) => e.message,
            'message',
            'Session expired',
          ),
        ),
      );

      verify(() => mockRepo.logout()).called(1);
    });
  });
}
