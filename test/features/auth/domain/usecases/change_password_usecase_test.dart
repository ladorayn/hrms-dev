import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/change_password/request/change_password_request_model.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late ChangePasswordUseCase useCase;

  const request = ChangePasswordRequest(
    currentPassword: 'old-secret',
    newPassword: 'new-secret',
    newPasswordConfirmation: 'new-secret',
  );

  setUpAll(() {
    registerFallbackValue(request);
  });

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = ChangePasswordUseCase(mockRepo);
  });

  group('ChangePasswordUseCase.call', () {
    test('forwards request to repository on success', () async {
      // Arrange
      when(() => mockRepo.changePassword(any())).thenAnswer((_) async {});

      // Act
      await useCase(request);

      // Assert
      verify(() => mockRepo.changePassword(request)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      // Arrange
      when(() => mockRepo.changePassword(any())).thenThrow(
        UnauthorizedException('Current password is incorrect'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(request),
        throwsA(
          isA<UnauthorizedException>().having(
            (e) => e.message,
            'message',
            'Current password is incorrect',
          ),
        ),
      );

      verify(() => mockRepo.changePassword(request)).called(1);
    });
  });
}
