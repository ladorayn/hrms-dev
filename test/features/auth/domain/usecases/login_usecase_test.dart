import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late LoginUseCase useCase;

  const testUser = User(
    name: 'Ada Lovelace',
    email: 'ada@example.com',
    isFirstLogin: false,
  );

  const testResponse = LoginResponse(
    user: testUser,
    token: 'fake-jwt-token',
  );

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = LoginUseCase(mockRepo);
  });

  group('LoginUseCase.call', () {
    test('returns LoginResponse from repository on success', () async {
      when(() => mockRepo.login(any(), any()))
          .thenAnswer((_) async => testResponse);

      final result = await useCase('ada@example.com', 'secret');

      expect(result.token, 'fake-jwt-token');
      expect(result.user.email, 'ada@example.com');
      verify(() => mockRepo.login('ada@example.com', 'secret')).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows UnauthorizedException from repository', () async {
      when(() => mockRepo.login(any(), any()))
          .thenThrow(UnauthorizedException('Invalid credentials'));

      await expectLater(
        () => useCase('ada@example.com', 'wrong'),
        throwsA(
          isA<UnauthorizedException>().having(
            (e) => e.message,
            'message',
            'Invalid credentials',
          ),
        ),
      );
      verify(() => mockRepo.login('ada@example.com', 'wrong')).called(1);
    });
  });
}
