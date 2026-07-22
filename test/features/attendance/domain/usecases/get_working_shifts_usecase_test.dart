import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/working_shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_working_shifts_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository mockRepo;
  late GetWorkingShiftsUseCase useCase;

  const workingShift = WorkingShiftResponseModel(
    dayOfWeek: 1,
    dayName: 'Monday',
    date: '2024-06-01',
    shifts: [],
  );

  setUp(() {
    mockRepo = MockAttendanceRepository();
    useCase = GetWorkingShiftsUseCase(mockRepo);
  });

  group('GetWorkingShiftsUseCase.call', () {
    test('returns WorkingShiftResponseModel from repository on success',
        () async {
      // Arrange
      when(
        () => mockRepo.getTodayShift(
          userId: any(named: 'userId'),
          date: any(named: 'date'),
        ),
      ).thenAnswer((_) async => workingShift);

      // Act
      final result = await useCase('7', '2024-06-01');

      // Assert
      expect(result.dayOfWeek, 1);
      expect(result.dayName, 'Monday');
      expect(result.date, '2024-06-01');
      verify(
        () => mockRepo.getTodayShift(userId: '7', date: '2024-06-01'),
      ).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(
        () => mockRepo.getTodayShift(
          userId: any(named: 'userId'),
          date: any(named: 'date'),
        ),
      ).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase('7', '2024-06-01'),
        throwsA(isA<NetworkException>()),
      );

      verify(
        () => mockRepo.getTodayShift(userId: '7', date: '2024-06-01'),
      ).called(1);
    });
  });
}
