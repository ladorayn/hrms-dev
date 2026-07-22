import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';
import 'package:hrms_mobile/features/offboarding/domain/usecases/offboarding_usecases.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockOffboardingRepository extends Mock
    implements OffboardingRepository {}

class FakeExitFormRequest extends Fake implements ExitFormRequest {}

class FakeHandoverRequest extends Fake implements HandoverRequest {}

class FakeHandoverValidateRequest extends Fake
    implements HandoverValidateRequest {}

void main() {
  late MockOffboardingRepository mockRepo;
  late ProviderContainer container;

  const exitRequest = ExitFormRequest(
    submissions: [
      SubmissionForm(fieldId: 1, value: 'Relocation'),
    ],
  );

  const handoverRequest = HandoverRequest(
    category: 'asset',
    data: [],
  );

  const validateRequest = HandoverValidateRequest(handoverAssetId: 9);

  setUpAll(() {
    registerFallbackValue(FakeExitFormRequest());
    registerFallbackValue(FakeHandoverRequest());
    registerFallbackValue(FakeHandoverValidateRequest());
  });

  setUp(() {
    mockRepo = MockOffboardingRepository();
    container = ProviderContainer(
      overrides: [
        offboardingUseCaseProvider
            .overrideWithValue(OffboardingUsecases(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('ExitFormSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(exitFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.exitFormSubmission(
          request: any(named: 'request'),
          formId: any(named: 'formId'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final notifier = container.read(exitFormSubmissionProvider.notifier);
      final future = notifier.submitForm(
        request: exitRequest,
        formId: 2,
        offboardingId: 5,
      );

      expect(
        container.read(exitFormSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(exitFormSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, {'ok': true});
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.exitFormSubmission(
          request: any(named: 'request'),
          formId: any(named: 'formId'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'value': ['required']}),
      );

      final notifier = container.read(exitFormSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(
          request: exitRequest,
          formId: 2,
          offboardingId: 5,
        ),
        throwsA(isA<ValidationException>()),
      );

      final state = container.read(exitFormSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ValidationException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.exitFormSubmission(
          request: any(named: 'request'),
          formId: any(named: 'formId'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final notifier = container.read(exitFormSubmissionProvider.notifier);
      await notifier.submitForm(
        request: exitRequest,
        formId: 2,
        offboardingId: 5,
      );
      notifier.reset();

      expect(
        container.read(exitFormSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('HandoverSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(handoverSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.submitHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final notifier = container.read(handoverSubmissionProvider.notifier);
      final future = notifier.submitForm(
        request: handoverRequest,
        offboardingId: 5,
      );

      expect(
        container.read(handoverSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(handoverSubmissionProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, {'ok': true});
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.submitHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(ServerException('Submit failed'));

      final notifier = container.read(handoverSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(
          request: handoverRequest,
          offboardingId: 5,
        ),
        throwsA(isA<ServerException>()),
      );

      final state = container.read(handoverSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ServerException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.submitHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final notifier = container.read(handoverSubmissionProvider.notifier);
      await notifier.submitForm(
        request: handoverRequest,
        offboardingId: 5,
      );
      notifier.reset();

      expect(
        container.read(handoverSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('ValidateHandoverSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(validateHandoverSubmissionProvider(9)),
        const AsyncData<dynamic>(null),
      );
    });

    test('validateForm success → AsyncData(response)', () async {
      when(
        () => mockRepo.validateHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'validated': true});

      final notifier =
          container.read(validateHandoverSubmissionProvider(9).notifier);
      final future = notifier.validateForm(
        request: validateRequest,
        offboardingId: '5',
      );

      expect(
        container.read(validateHandoverSubmissionProvider(9)),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      final state = container.read(validateHandoverSubmissionProvider(9));
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, {'validated': true});
    });

    test('validateForm failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.validateHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(UnauthorizedException('Forbidden'));

      final notifier =
          container.read(validateHandoverSubmissionProvider(9).notifier);

      await expectLater(
        () => notifier.validateForm(
          request: validateRequest,
          offboardingId: '5',
        ),
        throwsA(isA<UnauthorizedException>()),
      );

      final state = container.read(validateHandoverSubmissionProvider(9));
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<UnauthorizedException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.validateHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'validated': true});

      final notifier =
          container.read(validateHandoverSubmissionProvider(9).notifier);
      await notifier.validateForm(
        request: validateRequest,
        offboardingId: '5',
      );
      notifier.reset();

      expect(
        container.read(validateHandoverSubmissionProvider(9)),
        const AsyncData<dynamic>(null),
      );
    });
  });
}
