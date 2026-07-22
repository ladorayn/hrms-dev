import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_in_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository mockRepo;
  late ClockInUseCase useCase;

  const request = ClockInRequestModel(
    shiftId: 1,
    clockInAt: '2024-06-01T09:00:00Z',
    latitude: -6.2,
    longitude: 106.8,
  );

  const attendance = AttendanceData(id: 42);

  setUpAll(() {
    registerFallbackValue(request);
  });

  setUp(() {
    mockRepo = MockAttendanceRepository();
    useCase = ClockInUseCase(mockRepo);
  });

  group('ClockInUseCase.call', () {
    test('returns AttendanceData from repository on success', () async {
      // Arrange
      when(() => mockRepo.clockIn(any())).thenAnswer((_) async => attendance);

      // Act
      final result = await useCase(request);

      // Assert
      expect(result.id, 42);
      verify(() => mockRepo.clockIn(request)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.clockIn(any())).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(request),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.clockIn(request)).called(1);
    });
  });
}
