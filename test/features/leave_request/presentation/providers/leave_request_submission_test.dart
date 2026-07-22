import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';
import 'package:hrms_mobile/features/leave_request/domain/usecases/leave_usecase.dart';
import 'package:hrms_mobile/features/leave_request/presentation/providers/leave_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockLeaveRepository extends Mock implements LeaveRepository {}

void main() {
  late MockLeaveRepository mockRepo;
  late ProviderContainer container;

  const sampleRequest = LeaveRequest(
    leaveTypeId: 1,
    startDate: '2024-07-01',
    endDate: '2024-07-02',
    reason: 'Vacation',
  );

  setUp(() {
    mockRepo = MockLeaveRepository();
    container = ProviderContainer(
      overrides: [
        leaveUseCaseProvider.overrideWithValue(LeaveUsecase(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('LeaveRequestSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(leaveRequestSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncLoading then AsyncData', () async {
      const apiResponse = {'status': 'success'};
      when(() => mockRepo.submitLeaveRequest(request: sampleRequest))
          .thenAnswer((_) async => apiResponse);

      final notifier = container.read(leaveRequestSubmissionProvider.notifier);
      final future = notifier.submitForm(request: sampleRequest);

      expect(
        container.read(leaveRequestSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(leaveRequestSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, apiResponse);
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(() => mockRepo.submitLeaveRequest(request: sampleRequest))
          .thenThrow(ServerException('Server down'));

      final notifier = container.read(leaveRequestSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(request: sampleRequest),
        throwsA(isA<ServerException>()),
      );

      final state = container.read(leaveRequestSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ServerException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(() => mockRepo.submitLeaveRequest(request: sampleRequest))
          .thenAnswer((_) async => 'ok');

      final notifier = container.read(leaveRequestSubmissionProvider.notifier);
      await notifier.submitForm(request: sampleRequest);
      notifier.reset();

      expect(
        container.read(leaveRequestSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });
}
