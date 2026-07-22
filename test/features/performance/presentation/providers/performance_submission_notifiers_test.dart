import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';
import 'package:hrms_mobile/features/performance/domain/usecases/performance_usecases.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockPerformanceRepository extends Mock
    implements PerformanceRepository {}

class FakeAssessmentFormRequest extends Fake
    implements AssessmentFormRequest {}

class FakeAssessmentFormValidateRequest extends Fake
    implements AssessmentFormValidateRequest {}

class FakeTrackingValueRequest extends Fake implements TrackingValueRequest {}

void main() {
  late MockPerformanceRepository mockRepo;
  late ProviderContainer container;

  const assessmentRequest = AssessmentFormRequest(
    status: 1,
    submissions: [SubmissionForm(fieldId: 1, value: 5)],
  );

  const validateRequest = AssessmentFormValidateRequest(
    submissions: [SubmissionForm(fieldId: 1, value: 5)],
  );

  const trackingRequest = TrackingValueRequest(
    keyResultId: 11,
    trackingPeriodId: 1,
    actualValue: 50,
  );

  const setTrackingValue = SetTrackingValue(id: 20, actualValue: '50');

  setUpAll(() {
    registerFallbackValue(FakeAssessmentFormRequest());
    registerFallbackValue(FakeAssessmentFormValidateRequest());
    registerFallbackValue(FakeTrackingValueRequest());
  });

  setUp(() {
    mockRepo = MockPerformanceRepository();
    container = ProviderContainer(
      overrides: [
        performanceUseCaseProvider
            .overrideWithValue(PerformanceUsecases(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('AssessmentFormSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(assessmentFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.assessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'ok');

      final notifier =
          container.read(assessmentFormSubmissionProvider.notifier);
      final future = notifier.submitForm(
        request: assessmentRequest,
        assessmentId: 1,
      );

      expect(
        container.read(assessmentFormSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(assessmentFormSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, 'ok');
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.assessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'status': ['required']}),
      );

      final notifier =
          container.read(assessmentFormSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(
          request: assessmentRequest,
          assessmentId: 1,
        ),
        throwsA(isA<ValidationException>()),
      );

      final state = container.read(assessmentFormSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ValidationException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.assessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'ok');

      final notifier =
          container.read(assessmentFormSubmissionProvider.notifier);
      await notifier.submitForm(
        request: assessmentRequest,
        assessmentId: 1,
      );
      notifier.reset();

      expect(
        container.read(assessmentFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('SupervisorAssessmentFormSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(supervisorAssessmentFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.supervisorAssessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'submitted');

      final notifier = container
          .read(supervisorAssessmentFormSubmissionProvider.notifier);
      final future = notifier.submitForm(
        request: assessmentRequest,
        assessmentId: 3,
      );

      expect(
        container.read(supervisorAssessmentFormSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state =
          container.read(supervisorAssessmentFormSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, 'submitted');
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.supervisorAssessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenThrow(ServerException('Failed'));

      final notifier = container
          .read(supervisorAssessmentFormSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(
          request: assessmentRequest,
          assessmentId: 3,
        ),
        throwsA(isA<ServerException>()),
      );

      final state =
          container.read(supervisorAssessmentFormSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ServerException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.supervisorAssessmentFormSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'submitted');

      final notifier = container
          .read(supervisorAssessmentFormSubmissionProvider.notifier);
      await notifier.submitForm(
        request: assessmentRequest,
        assessmentId: 3,
      );
      notifier.reset();

      expect(
        container.read(supervisorAssessmentFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('AssessmentFormValidateSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(assessmentFormValidateSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.assessmentFormValidateSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'validated');

      final notifier = container
          .read(assessmentFormValidateSubmissionProvider.notifier);
      final future = notifier.submitForm(
        request: validateRequest,
        assessmentId: 1,
      );

      expect(
        container.read(assessmentFormValidateSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state =
          container.read(assessmentFormValidateSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, 'validated');
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.assessmentFormValidateSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenThrow(UnauthorizedException('Forbidden'));

      final notifier = container
          .read(assessmentFormValidateSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(
          request: validateRequest,
          assessmentId: 1,
        ),
        throwsA(isA<UnauthorizedException>()),
      );

      final state =
          container.read(assessmentFormValidateSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<UnauthorizedException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.assessmentFormValidateSubmission(
          request: any(named: 'request'),
          assessmentId: any(named: 'assessmentId'),
        ),
      ).thenAnswer((_) async => 'validated');

      final notifier = container
          .read(assessmentFormValidateSubmissionProvider.notifier);
      await notifier.submitForm(
        request: validateRequest,
        assessmentId: 1,
      );
      notifier.reset();

      expect(
        container.read(assessmentFormValidateSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('SetTrackingValueP', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(setTrackingValuePProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.submitTrackingValue(
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => [setTrackingValue]);

      final notifier = container.read(setTrackingValuePProvider.notifier);
      final future = notifier.submitForm(
        request: [trackingRequest],
        id: 11,
      );

      expect(
        container.read(setTrackingValuePProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(setTrackingValuePProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, [setTrackingValue]);
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.submitTrackingValue(
          request: any(named: 'request'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'actual_value': ['required']}),
      );

      final notifier = container.read(setTrackingValuePProvider.notifier);

      await expectLater(
        () => notifier.submitForm(request: [trackingRequest], id: 11),
        throwsA(isA<ValidationException>()),
      );

      final state = container.read(setTrackingValuePProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ValidationException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.submitTrackingValue(
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => [setTrackingValue]);

      final notifier = container.read(setTrackingValuePProvider.notifier);
      await notifier.submitForm(request: [trackingRequest], id: 11);
      notifier.reset();

      expect(
        container.read(setTrackingValuePProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });
}
