import 'package:hrms_mobile/core/data/data_source/employees_remote_source.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/employees/employees_usecases.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

final employeesRemoteSourceProvider = Provider<EmployeesRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return EmployeesRemoteSource(dio);
});

final employeesRepoProvider = Provider<EmployeeRepositoryImpl>((ref) {
  final remoteSource = ref.watch(employeesRemoteSourceProvider);
  return EmployeeRepositoryImpl(remoteSource: remoteSource);
});

final employeesUseCaseProvider =
    Provider((ref) => EmployeeUsecases(ref.watch(employeesRepoProvider)));

@riverpod
class EmployeeDetail extends _$EmployeeDetail {
  @override
  Future<UserProfile> build({required int id}) async {
    final usecase = ref.watch(employeesUseCaseProvider);
    return await usecase.getEmployeeProfile(id: id);
  }
}

@riverpod
class EmployeeProfileEdit extends _$EmployeeProfileEdit {
  @override
  FutureOr<UserProfile?> build() {
    // Return null (idle state) initially
    return null;
  }

  Future<void> submitUpdate({
    required int id,
    required EmployeeProfileRequest request,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.read(employeesUseCaseProvider);

    try {
      final response =
          await usecase.updateEmployeeProfile(id: id, request: request);
      state = AsyncData(response);

      // Invalidate the detail provider to refresh the profile screen
      ref.invalidate(employeeDetailProvider(id: id));
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow; // Re-throw for the UI to catch
    }
  }

  void reset() {
    state = const AsyncData(null);
  }

  void setLoading() {
    state = const AsyncLoading();
  }
}
