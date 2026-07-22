import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';
import 'package:hrms_mobile/features/overtime_request/domain/repositories/overtime_repository.dart';
import 'package:hrms_mobile/features/overtime_request/domain/usecases/overtime_request_usecase.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/providers/overtime_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockOvertimeRepository extends Mock implements OvertimeRepository {}

class FakeOvertimeRequest extends Fake implements OvertimeRequest {}

void main() {
  late MockOvertimeRepository mockRepo;
  late ProviderContainer container;

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
    container = ProviderContainer(
      overrides: [
        overtimeRequestUseCaseProvider
            .overrideWithValue(OvertimeRequestUsecase(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('OvertimeRequestNotifier', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(overtimeRequestNotifierProvider),
        const AsyncData<void>(null),
      );
    });

    test('submitRequest success → true and AsyncData(null)', () async {
      when(() => mockRepo.overtimeRequest(any()))
          .thenAnswer((_) async => response);

      final notifier =
          container.read(overtimeRequestNotifierProvider.notifier);
      final future = notifier.submitRequest(request);

      expect(
        container.read(overtimeRequestNotifierProvider),
        isA<AsyncLoading<void>>(),
      );

      final result = await future;

      expect(result, isTrue);
      expect(
        container.read(overtimeRequestNotifierProvider),
        const AsyncData<void>(null),
      );
    });

    test('submitRequest failure → false and AsyncError (no rethrow)', () async {
      when(() => mockRepo.overtimeRequest(any())).thenThrow(
        ValidationException('Invalid', {'notes': ['required']}),
      );

      final notifier =
          container.read(overtimeRequestNotifierProvider.notifier);
      final result = await notifier.submitRequest(request);

      expect(result, isFalse);
      final state = container.read(overtimeRequestNotifierProvider);
      expect(state, isA<AsyncError<void>>());
      expect(state.error, isA<ValidationException>());
    });

    test('updateRequest success → true and AsyncData(null)', () async {
      when(
        () => mockRepo.updateOvertimeRequest(
          overtimeId: any(named: 'overtimeId'),
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => response);

      final notifier =
          container.read(overtimeRequestNotifierProvider.notifier);
      final result = await notifier.updateRequest(
        overtimeId: '10',
        request: request,
      );

      expect(result, isTrue);
      expect(
        container.read(overtimeRequestNotifierProvider),
        const AsyncData<void>(null),
      );
    });

    test('updateRequest failure → false and AsyncError (no rethrow)', () async {
      when(
        () => mockRepo.updateOvertimeRequest(
          overtimeId: any(named: 'overtimeId'),
          request: any(named: 'request'),
        ),
      ).thenThrow(NetworkException('Please check your internet connection.'));

      final notifier =
          container.read(overtimeRequestNotifierProvider.notifier);
      final result = await notifier.updateRequest(
        overtimeId: '10',
        request: request,
      );

      expect(result, isFalse);
      final state = container.read(overtimeRequestNotifierProvider);
      expect(state, isA<AsyncError<void>>());
      expect(state.error, isA<NetworkException>());
    });
  });
}
