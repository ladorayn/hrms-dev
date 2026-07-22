import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_attendance_history_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository mockRepo;
  late GetAttendanceHistoryUseCase useCase;

  final history = [
    AttendanceModel(clockIn: DateTime.utc(2024, 6, 1, 9)),
  ];

  setUp(() {
    mockRepo = MockAttendanceRepository();
    useCase = GetAttendanceHistoryUseCase(mockRepo);
  });

  group('GetAttendanceHistoryUseCase.call', () {
    test('returns attendance history from repository on success', () async {
      // Arrange
      when(() => mockRepo.getHistory()).thenAnswer((_) async => history);

      // Act
      final result = await useCase();

      // Assert
      expect(result, hasLength(1));
      expect(result.first.clockIn, DateTime.utc(2024, 6, 1, 9));
      verify(() => mockRepo.getHistory()).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('rethrows NetworkException from repository', () async {
      // Arrange
      when(() => mockRepo.getHistory()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      // Act + Assert
      await expectLater(
        () => useCase(),
        throwsA(isA<NetworkException>()),
      );

      verify(() => mockRepo.getHistory()).called(1);
    });
  });
}
