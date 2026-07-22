import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/company_profile_usecase.dart';
import 'package:hrms_mobile/features/user/data/models/company/company_profile.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;
  late CompanyProfileUseCase useCase;

  const company = CompanyProfileResponse(
    id: 10,
    name: 'OKJOB',
  );

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = CompanyProfileUseCase(mockRepo);
  });

  group('CompanyProfileUseCase.call', () {
    test('returns CompanyProfileResponse from repository on success', () async {
      // Arrange
      when(() => mockRepo.getCompanyProfile()).thenAnswer((_) async => company);

      // Act
      final result = await useCase();

      // Assert
      expect(result.id, 10);
      expect(result.name, 'OKJOB');
      verify(() => mockRepo.getCompanyProfile()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.getCompanyProfile()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.getCompanyProfile()).called(1);
    });
  });
}
