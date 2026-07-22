import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_out_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepositoryImpl extends Mock
    implements AttendanceRepositoryImpl {}

void main() {
  late MockAttendanceRepositoryImpl mockRepo;
  late ClockOutUseCase useCase;

  const request = ClockOutRequestModel(
    clockOutAt: '2024-06-01T18:00:00Z',
  );

  const attendance = AttendanceData(id: 42);

  setUpAll(() {
    registerFallbackValue(request);
  });

  setUp(() {
    mockRepo = MockAttendanceRepositoryImpl();
    useCase = ClockOutUseCase(mockRepo);
  });

  group('ClockOutUseCase.call', () {
    test('returns AttendanceData from repository on success', () async {
      // Arrange
      when(() => mockRepo.clockOut(any(), any()))
          .thenAnswer((_) async => attendance);

      // Act
      final result = await useCase(42, request);

      // Assert
      expect(result.id, 42);
      verify(() => mockRepo.clockOut(42, request)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.clockOut(any(), any())).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(42, request),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.clockOut(42, request)).called(1);
    });
  });
}
