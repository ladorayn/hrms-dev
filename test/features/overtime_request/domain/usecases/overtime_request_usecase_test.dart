import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';
import 'package:hrms_mobile/features/overtime_request/domain/repositories/overtime_repository.dart';
import 'package:hrms_mobile/features/overtime_request/domain/usecases/overtime_request_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockOvertimeRepository extends Mock implements OvertimeRepository {}

class FakeOvertimeRequest extends Fake implements OvertimeRequest {}

void main() {
  late MockOvertimeRepository mockRepo;
  late OvertimeRequestUsecase useCase;

  const request = OvertimeRequest(
    overtimeDate: '2024-06-01',
    startTime: '18:00',
    endTime: '21:00',
    notes: 'Project deadline',
  );

  const response = OvertimeResponse(
    id: 10,
    overtimeDate: '2024-06-01',
    startTime: '18:00',
    endTime: '21:00',
    status: 1,
    notes: 'Project deadline',
  );

  setUpAll(() {
    registerFallbackValue(FakeOvertimeRequest());
  });

  setUp(() {
    mockRepo = MockOvertimeRepository();
    useCase = OvertimeRequestUsecase(mockRepo);
  });

  group('call', () {
    test('returns OvertimeResponse from repository', () async {
      when(() => mockRepo.overtimeRequest(any()))
          .thenAnswer((_) async => response);

      final result = await useCase(request);

      expect(result.id, 10);
      expect(result.notes, 'Project deadline');
      verify(() => mockRepo.overtimeRequest(request)).called(1);
    });

    test('rethrows ValidationException from repository', () async {
      when(() => mockRepo.overtimeRequest(any())).thenThrow(
        ValidationException('Invalid', {'notes': ['required']}),
      );

      await expectLater(
        () => useCase(request),
        throwsA(isA<ValidationException>()),
      );
    });
  });

  group('updateCall', () {
    test('forwards overtimeId and request', () async {
      when(
        () => mockRepo.updateOvertimeRequest(
          overtimeId: any(named: 'overtimeId'),
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => response);

      final result = await useCase.updateCall(
        overtimeId: '10',
        request: request,
      );

      expect(result.id, 10);
      verify(
        () => mockRepo.updateOvertimeRequest(
          overtimeId: '10',
          request: request,
        ),
      ).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.updateOvertimeRequest(
          overtimeId: any(named: 'overtimeId'),
          request: any(named: 'request'),
        ),
      ).thenThrow(NetworkException('Please check your internet connection.'));

      await expectLater(
        () => useCase.updateCall(overtimeId: '10', request: request),
        throwsA(isA<NetworkException>()),
      );
    });
  });
}
