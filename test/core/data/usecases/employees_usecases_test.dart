import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository.dart';
import 'package:hrms_mobile/core/data/usecases/employees/employees_usecases.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:mocktail/mocktail.dart';

class MockEmployeeRepository extends Mock implements EmployeeRepository {}

class FakeEmployeeProfileRequest extends Fake
    implements EmployeeProfileRequest {}

void main() {
  late MockEmployeeRepository mockRepo;
  late EmployeeUsecases useCase;

  const employee = Employee(id: 1, name: 'Ada Lovelace', email: 'ada@example.com');

  const paginated = PaginatedResponse<Employee>(
    data: [employee],
    currentPage: 1,
    total: 1,
  );

  const profile = UserProfile(
    user: UserWithEmployeeData(
      id: 1,
      name: 'Ada Lovelace',
      email: 'ada@example.com',
    ),
  );

  const profileRequest = EmployeeProfileRequest(
    name: 'Ada Lovelace',
    email: 'ada@example.com',
    phoneNumber: 81234567890,
    gender: 'female',
    dateOfBirth: '1815-12-10',
    placeOfBirth: 'London',
    maritalStatus: 'single',
    bloodType: 'O',
    height: 160,
    weight: 50,
    idNumber: '123',
    npwp: 'npwp',
    bpjs: 'bpjs',
    citizenIdAddress: 'Address',
    residentialAddress: 'Address',
    hobby: 'Math',
    achievement: 'Analytical Engine',
    personalDescription: 'Mathematician',
    jobPositionId: 1,
    jobLevelId: 1,
    departmentId: 1,
    teamMembers: [],
    startDate: '2024-01-01',
    status: 'active',
    baseSalary: 1000000,
    salaryNett: 900000,
    bankId: 1,
    accountNumber: '111',
    accountName: 'Ada',
    countryCode: 62,
    photoProfile: 'photo.jpg',
  );

  setUpAll(() {
    registerFallbackValue(FakeEmployeeProfileRequest());
  });

  setUp(() {
    mockRepo = MockEmployeeRepository();
    useCase = EmployeeUsecases(mockRepo);
  });

  group('getEmployees', () {
    test('forwards filters and returns paginated employees', () async {
      when(
        () => mockRepo.getEmployees(
          search: any(named: 'search'),
          departmentIds: any(named: 'departmentIds'),
          jobLevelIds: any(named: 'jobLevelIds'),
          jobPositionIds: any(named: 'jobPositionIds'),
          status: any(named: 'status'),
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          perPage: any(named: 'perPage'),
        ),
      ).thenAnswer((_) async => paginated);

      final result = await useCase.getEmployees(search: 'Ada', perPage: '10');

      expect(result.data.first.name, 'Ada Lovelace');
      verify(
        () => mockRepo.getEmployees(search: 'Ada', perPage: '10'),
      ).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.getEmployees(
          search: any(named: 'search'),
          departmentIds: any(named: 'departmentIds'),
          jobLevelIds: any(named: 'jobLevelIds'),
          jobPositionIds: any(named: 'jobPositionIds'),
          status: any(named: 'status'),
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          perPage: any(named: 'perPage'),
        ),
      ).thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.getEmployees(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('getEmployeesFromUrl', () {
    test('forwards url and filters', () async {
      when(
        () => mockRepo.getEmployeesFromUrl(
          url: any(named: 'url'),
          search: any(named: 'search'),
          departmentIds: any(named: 'departmentIds'),
          jobLevelIds: any(named: 'jobLevelIds'),
          jobPositionIds: any(named: 'jobPositionIds'),
          status: any(named: 'status'),
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          perPage: any(named: 'perPage'),
        ),
      ).thenAnswer((_) async => paginated);

      final result = await useCase.getEmployeesFromUrl(
        url: 'https://api.example.com/employees?page=2',
        search: 'Ada',
      );

      expect(result.data, hasLength(1));
      verify(
        () => mockRepo.getEmployeesFromUrl(
          url: 'https://api.example.com/employees?page=2',
          search: 'Ada',
        ),
      ).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(
        () => mockRepo.getEmployeesFromUrl(
          url: any(named: 'url'),
          search: any(named: 'search'),
          departmentIds: any(named: 'departmentIds'),
          jobLevelIds: any(named: 'jobLevelIds'),
          jobPositionIds: any(named: 'jobPositionIds'),
          status: any(named: 'status'),
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          perPage: any(named: 'perPage'),
        ),
      ).thenThrow(ServerException('Failed'));

      await expectLater(
        () => useCase.getEmployeesFromUrl(url: 'https://api.example.com/x'),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getEmployeeProfile', () {
    test('forwards id and returns profile', () async {
      when(
        () => mockRepo.getEmployeeProfile(id: any(named: 'id')),
      ).thenAnswer((_) async => profile);

      final result = await useCase.getEmployeeProfile(id: 1);

      expect(result.user?.email, 'ada@example.com');
      verify(() => mockRepo.getEmployeeProfile(id: 1)).called(1);
    });

    test('rethrows DataNotFoundException from repository', () async {
      when(
        () => mockRepo.getEmployeeProfile(id: any(named: 'id')),
      ).thenThrow(DataNotFoundException('Not found'));

      await expectLater(
        () => useCase.getEmployeeProfile(id: 99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });

  group('updateEmployeeProfile', () {
    test('forwards id and request', () async {
      when(
        () => mockRepo.updateEmployeeProfile(
          id: any(named: 'id'),
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => profile);

      final result = await useCase.updateEmployeeProfile(
        id: 1,
        request: profileRequest,
      );

      expect(result.user?.name, 'Ada Lovelace');
      verify(
        () => mockRepo.updateEmployeeProfile(
          id: 1,
          request: profileRequest,
        ),
      ).called(1);
    });

    test('rethrows ValidationException from repository', () async {
      when(
        () => mockRepo.updateEmployeeProfile(
          id: any(named: 'id'),
          request: any(named: 'request'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'email': ['required']}),
      );

      await expectLater(
        () => useCase.updateEmployeeProfile(
          id: 1,
          request: profileRequest,
        ),
        throwsA(isA<ValidationException>()),
      );
    });
  });
}
