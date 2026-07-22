import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/domain/repositories/payslip_repository.dart';
import 'package:hrms_mobile/features/payslip/domain/usecases/payslip_usecases.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockPayslipRepository extends Mock implements PayslipRepository {}

class FakePayslipRequest extends Fake implements PayslipRequest {}

void main() {
  late MockPayslipRepository mockRepo;
  late ProviderContainer container;

  const request = PayslipRequest(password: 'secret');

  const baseResponse = BaseResponse<dynamic>(
    status: 'success',
    message: 'OK',
    data: null,
  );

  setUpAll(() {
    registerFallbackValue(FakePayslipRequest());
  });

  setUp(() {
    mockRepo = MockPayslipRepository();
    container = ProviderContainer(
      overrides: [
        payslipUseCaseProvider.overrideWithValue(PayslipUsecases(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('PayslipViewRequest', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(payslipViewRequestProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('requestViewPayslip success → AsyncData(message)', () async {
      when(
        () => mockRepo.requestViewPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final notifier = container.read(payslipViewRequestProvider.notifier);
      final future = notifier.requestViewPayslip(request: request, id: 1);

      expect(
        container.read(payslipViewRequestProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      final message = await future;

      expect(message, 'OK');
      final state = container.read(payslipViewRequestProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, 'OK');
    });

    test('requestViewPayslip failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.requestViewPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenThrow(UnauthorizedException('Invalid password'));

      final notifier = container.read(payslipViewRequestProvider.notifier);

      await expectLater(
        () => notifier.requestViewPayslip(request: request, id: 1),
        throwsA(isA<UnauthorizedException>()),
      );

      final state = container.read(payslipViewRequestProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<UnauthorizedException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.requestViewPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final notifier = container.read(payslipViewRequestProvider.notifier);
      await notifier.requestViewPayslip(request: request, id: 1);
      notifier.reset();

      expect(
        container.read(payslipViewRequestProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });

  group('PrintPayslipRequest', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(printPayslipRequestProvider),
        const AsyncData<dynamic>(null),
      );
    });

    test('requestPrintPayslip success → AsyncData(message)', () async {
      when(
        () => mockRepo.requestPrintPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final notifier = container.read(printPayslipRequestProvider.notifier);
      final future = notifier.requestPrintPayslip(request: request, id: 1);

      expect(
        container.read(printPayslipRequestProvider),
        isA<AsyncLoading<dynamic>>(),
      );

      final message = await future;

      expect(message, 'OK');
      final state = container.read(printPayslipRequestProvider);
      expect(state, isA<AsyncData<dynamic>>());
      expect(state.value, 'OK');
    });

    test('requestPrintPayslip failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.requestPrintPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenThrow(ServerException('Print failed'));

      final notifier = container.read(printPayslipRequestProvider.notifier);

      await expectLater(
        () => notifier.requestPrintPayslip(request: request, id: 1),
        throwsA(isA<ServerException>()),
      );

      final state = container.read(printPayslipRequestProvider);
      expect(state, isA<AsyncError<dynamic>>());
      expect(state.error, isA<ServerException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.requestPrintPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final notifier = container.read(printPayslipRequestProvider.notifier);
      await notifier.requestPrintPayslip(request: request, id: 1);
      notifier.reset();

      expect(
        container.read(printPayslipRequestProvider),
        const AsyncData<dynamic>(null),
      );
    });
  });
}
