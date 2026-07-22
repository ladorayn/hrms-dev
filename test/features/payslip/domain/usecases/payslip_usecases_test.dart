import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';
import 'package:hrms_mobile/features/payslip/domain/repositories/payslip_repository.dart';
import 'package:hrms_mobile/features/payslip/domain/usecases/payslip_usecases.dart';
import 'package:mocktail/mocktail.dart';

class MockPayslipRepository extends Mock implements PayslipRepository {}

class FakePayslipRequest extends Fake implements PayslipRequest {}

void main() {
  late MockPayslipRepository mockRepo;
  late PayslipUsecases useCase;

  const request = PayslipRequest(password: 'secret');

  const listItem = PayslipDataList(
    id: 1,
    viewAccessGranted: true,
  );

  const detail = PayslipDetailResponse(
    id: 1,
    netPay: 1000000,
    currency: 'IDR',
  );

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
    useCase = PayslipUsecases(mockRepo);
  });

  group('getPayslipList', () {
    test('returns list from repository', () async {
      when(() => mockRepo.getPayslipList())
          .thenAnswer((_) async => [listItem]);

      final result = await useCase.getPayslipList();

      expect(result, hasLength(1));
      expect(result.first.id, 1);
      verify(() => mockRepo.getPayslipList()).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(() => mockRepo.getPayslipList()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      await expectLater(
        () => useCase.getPayslipList(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('requestViewPayslip', () {
    test('forwards request and id', () async {
      when(
        () => mockRepo.requestViewPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final result =
          await useCase.requestViewPayslip(request: request, id: 1);

      expect(result.status, 'success');
      verify(
        () => mockRepo.requestViewPayslip(request: request, id: 1),
      ).called(1);
    });

    test('rethrows UnauthorizedException from repository', () async {
      when(
        () => mockRepo.requestViewPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenThrow(UnauthorizedException('Invalid password'));

      await expectLater(
        () => useCase.requestViewPayslip(request: request, id: 1),
        throwsA(isA<UnauthorizedException>()),
      );
    });
  });

  group('requestPrintPayslip', () {
    test('forwards request and id', () async {
      when(
        () => mockRepo.requestPrintPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenAnswer((_) async => baseResponse);

      final result =
          await useCase.requestPrintPayslip(request: request, id: 1);

      expect(result.message, 'OK');
      verify(
        () => mockRepo.requestPrintPayslip(request: request, id: 1),
      ).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(
        () => mockRepo.requestPrintPayslip(
          request: any(named: 'request'),
          id: any(named: 'id'),
        ),
      ).thenThrow(ServerException('Print failed'));

      await expectLater(
        () => useCase.requestPrintPayslip(request: request, id: 1),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getPayslipDetail', () {
    test('forwards id and returns detail', () async {
      when(
        () => mockRepo.getPayslipDetail(id: any(named: 'id')),
      ).thenAnswer((_) async => detail);

      final result = await useCase.getPayslipDetail(id: 1);

      expect(result.id, 1);
      expect(result.netPay, 1000000);
      verify(() => mockRepo.getPayslipDetail(id: 1)).called(1);
    });

    test('rethrows DataNotFoundException from repository', () async {
      when(
        () => mockRepo.getPayslipDetail(id: any(named: 'id')),
      ).thenThrow(DataNotFoundException('Payslip not found'));

      await expectLater(
        () => useCase.getPayslipDetail(id: 99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });
}
