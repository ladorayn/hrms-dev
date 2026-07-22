import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/domain/repositories/business_trip_repository.dart';
import 'package:hrms_mobile/features/business_trip/domain/usecases/business_trip_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockBusinessTripRepository extends Mock
    implements BusinessTripRepository {}

class FakeBusinessTripRequest extends Fake implements BusinessTripRequest {}

void main() {
  late MockBusinessTripRepository mockRepo;
  late BusinessTripUsecase useCase;

  const trip = BusinessTripData(
    id: 1,
    destination: 'Jakarta',
    reason: 'Client visit',
    status: 1,
  );

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
    useCase = BusinessTripUsecase(mockRepo);
  });

  group('getBusinessTrips', () {
    test('returns list from repository', () async {
      when(() => mockRepo.getBusinessTrips()).thenAnswer((_) async => [trip]);

      final result = await useCase.getBusinessTrips();

      expect(result, hasLength(1));
      expect(result.first.id, 1);
      verify(() => mockRepo.getBusinessTrips()).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(() => mockRepo.getBusinessTrips()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      await expectLater(
        () => useCase.getBusinessTrips(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('getBusinessTripDetail', () {
    test('forwards id and returns detail', () async {
      when(() => mockRepo.getBusinessTripDetail(any()))
          .thenAnswer((_) async => trip);

      final result = await useCase.getBusinessTripDetail(1);

      expect(result.id, 1);
      verify(() => mockRepo.getBusinessTripDetail(1)).called(1);
    });

    test('rethrows DataNotFoundException from repository', () async {
      when(() => mockRepo.getBusinessTripDetail(any())).thenThrow(
        DataNotFoundException('Trip not found'),
      );

      await expectLater(
        () => useCase.getBusinessTripDetail(99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });

  group('createBusinessTrip', () {
    test('forwards request to repository', () async {
      when(() => mockRepo.createBusinessTrip(any()))
          .thenAnswer((_) async {});

      await useCase.createBusinessTrip(request);

      verify(() => mockRepo.createBusinessTrip(request)).called(1);
    });

    test('rethrows ValidationException from repository', () async {
      when(() => mockRepo.createBusinessTrip(any())).thenThrow(
        ValidationException('Invalid', {'destination': ['required']}),
      );

      await expectLater(
        () => useCase.createBusinessTrip(request),
        throwsA(isA<ValidationException>()),
      );
    });
  });

  group('cancelBusinessTrip', () {
    test('forwards id to repository', () async {
      when(() => mockRepo.cancelBusinessTrip(any())).thenAnswer((_) async {});

      await useCase.cancelBusinessTrip(1);

      verify(() => mockRepo.cancelBusinessTrip(1)).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(() => mockRepo.cancelBusinessTrip(any())).thenThrow(
        ServerException('Unable to cancel'),
      );

      await expectLater(
        () => useCase.cancelBusinessTrip(1),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
