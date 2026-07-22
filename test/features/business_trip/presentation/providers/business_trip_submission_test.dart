import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/domain/repositories/business_trip_repository.dart';
import 'package:hrms_mobile/features/business_trip/domain/usecases/business_trip_usecase.dart';
import 'package:hrms_mobile/features/business_trip/presentation/providers/business_trip_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockBusinessTripRepository extends Mock
    implements BusinessTripRepository {}

class FakeBusinessTripRequest extends Fake implements BusinessTripRequest {}

void main() {
  late MockBusinessTripRepository mockRepo;
  late ProviderContainer container;

  const request = BusinessTripRequest(
    startDate: '2024-06-01',
    endDate: '2024-06-03',
    destination: 'Jakarta',
    reason: 'Client visit',
  );

  setUpAll(() {
    registerFallbackValue(FakeBusinessTripRequest());
  });

  setUp(() {
    mockRepo = MockBusinessTripRepository();
    container = ProviderContainer(
      overrides: [
        businessTripUseCaseProvider
            .overrideWithValue(BusinessTripUsecase(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('BusinessTripSubmission', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(businessTripSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm success → AsyncLoading then AsyncData(null)', () async {
      when(() => mockRepo.createBusinessTrip(any())).thenAnswer((_) async {});

      final notifier =
          container.read(businessTripSubmissionProvider.notifier);
      final future = notifier.submitForm(request: request);

      expect(
        container.read(businessTripSubmissionProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      expect(
        container.read(businessTripSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('submitForm failure → AsyncError and rethrows', () async {
      when(() => mockRepo.createBusinessTrip(any())).thenThrow(
        ValidationException('Invalid', {'destination': ['required']}),
      );

      final notifier =
          container.read(businessTripSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(request: request),
        throwsA(isA<ValidationException>()),
      );

      final state = container.read(businessTripSubmissionProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ValidationException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(() => mockRepo.createBusinessTrip(any())).thenThrow(
        ServerException('Failed'),
      );

      final notifier =
          container.read(businessTripSubmissionProvider.notifier);

      await expectLater(
        () => notifier.submitForm(request: request),
        throwsA(isA<ServerException>()),
      );

      notifier.reset();

      expect(
        container.read(businessTripSubmissionProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('BusinessTripCancellation', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(businessTripCancellationProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('cancelTrip success → AsyncLoading then AsyncData(null)', () async {
      when(() => mockRepo.cancelBusinessTrip(any())).thenAnswer((_) async {});

      final notifier =
          container.read(businessTripCancellationProvider.notifier);
      final future = notifier.cancelTrip(id: 1);

      expect(
        container.read(businessTripCancellationProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      await future;

      expect(
        container.read(businessTripCancellationProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('cancelTrip failure → AsyncError and rethrows', () async {
      when(() => mockRepo.cancelBusinessTrip(any())).thenThrow(
        ServerException('Unable to cancel'),
      );

      final notifier =
          container.read(businessTripCancellationProvider.notifier);

      await expectLater(
        () => notifier.cancelTrip(id: 1),
        throwsA(isA<ServerException>()),
      );

      final state = container.read(businessTripCancellationProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ServerException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(() => mockRepo.cancelBusinessTrip(any())).thenThrow(
        ServerException('Unable to cancel'),
      );

      final notifier =
          container.read(businessTripCancellationProvider.notifier);

      await expectLater(
        () => notifier.cancelTrip(id: 1),
        throwsA(isA<ServerException>()),
      );

      notifier.reset();

      expect(
        container.read(businessTripCancellationProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });
}
