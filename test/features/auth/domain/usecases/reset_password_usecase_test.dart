import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late ResetPasswordUseCase useCase;

  const request = ResetPasswordRequest(
    email: 'ada@example.com',
    token: 'reset-token',
    password: 'new-secret',
    passwordConfirmation: 'new-secret',
  );

  setUpAll(() {
    registerFallbackValue(request);
  });

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = ResetPasswordUseCase(mockRepo);
  });

  group('ResetPasswordUseCase.call', () {
    test('forwards request to repository on success', () async {
      // Arrange
      when(() => mockRepo.resetPassword(any())).thenAnswer((_) async {});

      // Act
      await useCase(request);

      // Assert
      verify(() => mockRepo.resetPassword(request)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      // Arrange
      when(() => mockRepo.resetPassword(any())).thenThrow(
        UnauthorizedException('Invalid or expired token'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(request),
        throwsA(
          isA<UnauthorizedException>().having(
            (e) => e.message,
            'message',
            'Invalid or expired token',
          ),
        ),
      );

      verify(() => mockRepo.resetPassword(request)).called(1);
    });
  });
}
