import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_shifts_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository mockRepo;
  late GetShiftsUseCase useCase;

  const shifts = [
    ShiftModel(id: 1, tenantId: 1, name: 'Morning'),
  ];

  setUp(() {
    mockRepo = MockAttendanceRepository();
    useCase = GetShiftsUseCase(mockRepo);
  });

  group('GetShiftsUseCase.call', () {
    test('returns shift list from repository on success', () async {
      // Arrange
      when(() => mockRepo.getShift()).thenAnswer((_) async => shifts);

      // Act
      final result = await useCase();

      // Assert
      expect(result, hasLength(1));
      expect(result.first.name, 'Morning');
      verify(() => mockRepo.getShift()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.getShift()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.getShift()).called(1);
    });
  });
}
