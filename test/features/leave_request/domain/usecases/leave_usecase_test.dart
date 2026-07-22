import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';
import 'package:hrms_mobile/features/leave_request/domain/usecases/leave_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockLeaveRepository extends Mock implements LeaveRepository {}

void main() {
  late MockLeaveRepository mockRepo;
  late LeaveUsecase useCase;

  const sampleRequest = LeaveRequest(
    leaveTypeId: 1,
    startDate: '2024-07-01',
    endDate: '2024-07-02',
    reason: 'Vacation',
  );

  setUpAll(() {
    registerFallbackValue(sampleRequest);
  });

  setUp(() {
    mockRepo = MockLeaveRepository();
    useCase = LeaveUsecase(mockRepo);
  });

  group('getLeaveBalance', () {
    test('returns balance from repository', () async {
      const balance = LeaveBalanceResponse(
        availableTimeOff: 5,
        timeOffUsed: 2,
      );
      when(() => mockRepo.getLeaveBalance()).thenAnswer((_) async => balance);

      final result = await useCase.getLeaveBalance();

      expect(result.availableTimeOff, 5);
      expect(result.timeOffUsed, 2);
      verify(() => mockRepo.getLeaveBalance()).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(() => mockRepo.getLeaveBalance()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      await expectLater(
        () => useCase.getLeaveBalance(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('getLeaveTypes', () {
    test('returns empty list', () async {
      when(() => mockRepo.getLeaveTypes()).thenAnswer((_) async => []);

      final result = await useCase.getLeaveTypes();

      expect(result, isEmpty);
      verify(() => mockRepo.getLeaveTypes()).called(1);
    });

    test('returns non-empty list', () async {
      final types = [
        LeaveType(
          id: 1,
          name: 'Annual',
          description: 'Yearly leave',
          gender: 'all',
          quotaConfiguration: 'fixed',
          createdAt: '2024-01-01',
          updatedAt: '2024-01-01',
          entitlements: const [],
        ),
      ];
      when(() => mockRepo.getLeaveTypes()).thenAnswer((_) async => types);

      final result = await useCase.getLeaveTypes();

      expect(result, hasLength(1));
      expect(result.first.name, 'Annual');
    });

    test('rethrows on failure', () async {
      when(() => mockRepo.getLeaveTypes())
          .thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.getLeaveTypes(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('submitLeaveRequest', () {
    test('forwards request and returns response', () async {
      when(() => mockRepo.submitLeaveRequest(request: any(named: 'request')))
          .thenAnswer((_) async => {'status': 'success'});

      final result = await useCase.submitLeaveRequest(request: sampleRequest);

      expect(result, {'status': 'success'});
      verify(() => mockRepo.submitLeaveRequest(request: sampleRequest))
          .called(1);
    });

    test('rethrows on failure', () async {
      when(() => mockRepo.submitLeaveRequest(request: any(named: 'request')))
          .thenThrow(ValidationException('Invalid', {}));

      await expectLater(
        () => useCase.submitLeaveRequest(request: sampleRequest),
        throwsA(isA<ValidationException>()),
      );
    });
  });

  group('getLeaveHistory', () {
    test('returns history groups', () async {
      final history = [
        const LeaveGroup(date: '2024-07-01', label: 'July', leaves: []),
      ];
      when(() => mockRepo.getLeaveHistory()).thenAnswer((_) async => history);

      final result = await useCase.getLeaveHistory();

      expect(result, hasLength(1));
      expect(result.first.date, '2024-07-01');
      verify(() => mockRepo.getLeaveHistory()).called(1);
    });

    test('rethrows on failure', () async {
      when(() => mockRepo.getLeaveHistory())
          .thenThrow(ServerException('fail'));

      await expectLater(
        () => useCase.getLeaveHistory(),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getLeaveDetail', () {
    test('forwards id to repository', () async {
      const detail = LeaveDetail(
        id: 42,
        userId: 1,
        leaveType: LeaveDetailLeaveType(id: 1, name: 'Annual'),
        startDate: '2024-06-01',
        endDate: '2024-06-02',
        day: 2,
        reason: 'Family',
        status: 1,
        statusLabel: 'Pending',
        user: LeaveDetailUser(id: 1, name: 'Ada'),
        approvers: [],
        createdAt: '2024-05-01',
        updatedAt: '2024-05-01',
      );
      when(() => mockRepo.getLeaveDetail(id: any(named: 'id')))
          .thenAnswer((_) async => detail);

      final result = await useCase.getLeaveDetail(id: 42);

      expect(result.id, 42);
      verify(() => mockRepo.getLeaveDetail(id: 42)).called(1);
    });

    test('rethrows on failure', () async {
      when(() => mockRepo.getLeaveDetail(id: any(named: 'id')))
          .thenThrow(DataNotFoundException());

      await expectLater(
        () => useCase.getLeaveDetail(id: 99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });
}
