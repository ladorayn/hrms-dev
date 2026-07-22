import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late ForgotPasswordUseCase useCase;

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = ForgotPasswordUseCase(mockRepo);
  });

  group('ForgotPasswordUseCase.call', () {
    test('forwards email to repository on success', () async {
      // Arrange
      when(() => mockRepo.forgotPassword(any())).thenAnswer((_) async {});

      // Act
      await useCase('ada@example.com');

      // Assert
      verify(() => mockRepo.forgotPassword('ada@example.com')).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.forgotPassword(any())).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase('ada@example.com'),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.forgotPassword('ada@example.com')).called(1);
    });
  });
}
