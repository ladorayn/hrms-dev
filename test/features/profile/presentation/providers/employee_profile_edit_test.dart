import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository.dart';
import 'package:hrms_mobile/core/data/usecases/employees/employees_usecases.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockEmployeeRepository extends Mock implements EmployeeRepository {}

class FakeEmployeeProfileRequest extends Fake
    implements EmployeeProfileRequest {}

void main() {
  late MockEmployeeRepository mockRepo;
  late ProviderContainer container;

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
    container = ProviderContainer(
      overrides: [
        employeesUseCaseProvider
            .overrideWithValue(EmployeeUsecases(mockRepo)),
      ],
    );
    addTearDown(container.dispose);
  });

  group('EmployeeProfileEdit', () {
    test('initial state is AsyncData(null)', () {
      expect(
        container.read(employeeProfileEditProvider),
        const AsyncData<UserProfile?>(null),
      );
    });

    test('submitUpdate success → AsyncData(profile)', () async {
      when(
        () => mockRepo.updateEmployeeProfile(
          id: any(named: 'id'),
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => profile);

      final notifier = container.read(employeeProfileEditProvider.notifier);
      final future = notifier.submitUpdate(id: 1, request: profileRequest);

      expect(
        container.read(employeeProfileEditProvider),
        isA<AsyncLoading<UserProfile?>>(),
      );

      await future;

      final state = container.read(employeeProfileEditProvider);
      expect(state, isA<AsyncData<UserProfile?>>());
      expect(state.value?.user?.name, 'Ada Lovelace');
      verify(
        () => mockRepo.updateEmployeeProfile(id: 1, request: profileRequest),
      ).called(1);
    });

    test('submitUpdate failure → AsyncError and rethrows', () async {
      when(
        () => mockRepo.updateEmployeeProfile(
          id: any(named: 'id'),
          request: any(named: 'request'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'email': ['required']}),
      );

      final notifier = container.read(employeeProfileEditProvider.notifier);

      await expectLater(
        () => notifier.submitUpdate(id: 1, request: profileRequest),
        throwsA(isA<ValidationException>()),
      );

      final state = container.read(employeeProfileEditProvider);
      expect(state, isA<AsyncError<UserProfile?>>());
      expect(state.error, isA<ValidationException>());
    });

    test('reset() returns to AsyncData(null)', () async {
      when(
        () => mockRepo.updateEmployeeProfile(
          id: any(named: 'id'),
          request: any(named: 'request'),
        ),
      ).thenAnswer((_) async => profile);

      final notifier = container.read(employeeProfileEditProvider.notifier);
      await notifier.submitUpdate(id: 1, request: profileRequest);
      notifier.reset();

      expect(
        container.read(employeeProfileEditProvider),
        const AsyncData<UserProfile?>(null),
      );
    });
  });
}
