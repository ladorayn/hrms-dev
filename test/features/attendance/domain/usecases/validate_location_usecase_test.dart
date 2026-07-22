import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/validate_location/validate_location_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/validate_location/validate_location_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/validate_location_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository mockRepo;
  late ValidateLocationUseCase useCase;

  const request = ValidateLocationRequestModel(
    latitude: '-6.2',
    longitude: '106.8',
  );

  const response = ValidateLocationResponseModel(
    isValid: true,
    distance: 12.5,
    maxRadius: 100,
  );

  setUpAll(() {
    registerFallbackValue(request);
  });

  setUp(() {
    mockRepo = MockAttendanceRepository();
    useCase = ValidateLocationUseCase(mockRepo);
  });

  group('ValidateLocationUseCase.call', () {
    test('returns ValidateLocationResponseModel on success', () async {
      // Arrange
      when(() => mockRepo.validateLocation(any()))
          .thenAnswer((_) async => response);

      // Act
      final result = await useCase(request);

      // Assert
      expect(result.isValid, true);
      expect(result.distance, 12.5);
      expect(result.maxRadius, 100);
      verify(() => mockRepo.validateLocation(request)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.validateLocation(any())).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(request),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.validateLocation(request)).called(1);
    });
  });
}
