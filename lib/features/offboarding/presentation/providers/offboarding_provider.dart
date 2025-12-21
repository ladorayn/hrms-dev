import 'package:hrms_mobile/core/data/data_source/employees_remote_source.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/employees/employees_usecases.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/offboarding/data/data_sources/offboarding_remote_source.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/data/repositories/offboarding_repository_impl.dart';
import 'package:hrms_mobile/features/offboarding/domain/usecases/offboarding_usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'offboarding_provider.g.dart';

final offboardingRemoteSourceProvider =
    Provider<OffboardingRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return OffboardingRemoteSource(dio);
});

final offboardingRepoProvider = Provider<OffboardingRepositoryImpl>((ref) {
  final remoteSource = ref.watch(offboardingRemoteSourceProvider);
  return OffboardingRepositoryImpl(remoteSource: remoteSource);
});

final offboardingUseCaseProvider =
    Provider((ref) => OffboardingUsecases(ref.watch(offboardingRepoProvider)));

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
class PaginatedEmployee extends _$PaginatedEmployee {
  bool _isFetchingNextPage = false;

  @override
  Future<PaginatedResponse<Employee>> build({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) async {
    final usecase = ref.watch(employeesUseCaseProvider);

    return await usecase.getEmployees(
      search: search,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
      perPage: perPage ?? '10',
    );
  }

  Future<void> fetchNextPage({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) async {
    if (_isFetchingNextPage || !state.hasValue) return;

    final currentResponse = state.value!;
    final nextPageUrl = currentResponse.nextPageUrl;

    if (nextPageUrl == null) {
      return;
    }
    _isFetchingNextPage = true;

    try {
      final usecase = ref.read(employeesUseCaseProvider);
      final newPageResponse = await usecase.getEmployeesFromUrl(
        url: nextPageUrl,
        search: search,
        perPage: perPage,
        departmentIds: departmentIds,
        jobLevelIds: jobLevelIds,
        jobPositionIds: jobPositionIds,
        status: status,
        startDate: startDate,
        endDate: endDate,
      );

      final combinedEmployees = [
        ...currentResponse.data,
        ...newPageResponse.data,
      ];

      state = AsyncData(
        newPageResponse.copyWith(
          data: combinedEmployees,
        ),
      );
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    } finally {
      _isFetchingNextPage = false;
    }
  }
}

@riverpod
class OffboardingStatus extends _$OffboardingStatus {
  @override
  Future<OffboardingStatusResponse?> build() async {
    final usecase = ref.watch(offboardingUseCaseProvider);
    return await usecase.checkStatus();
  }
}

@riverpod
class OffboardingFormFields extends _$OffboardingFormFields {
  @override
  Future<List<FormFields>> build({required int formId}) async {
    final usecase = ref.watch(offboardingUseCaseProvider);
    return await usecase.getFormFields(formId: formId);
  }
}

@riverpod
class ExitFormSubmission extends _$ExitFormSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required ExitFormRequest request,
    required int formId,
    required int offboardingId,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(offboardingUseCaseProvider);

    try {
      final response = await usecase.submitExitForm(
          request: request, formId: formId, offboardingId: offboardingId);
      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

@riverpod
class HandoverSubmission extends _$HandoverSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required HandoverRequest request,
    required int offboardingId,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(offboardingUseCaseProvider);

    try {
      final response = await usecase.submitHandover(
          request: request, offboardingId: offboardingId);
      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

@riverpod
class OffboardingGetHandover extends _$OffboardingGetHandover {
  @override
  Future<List<HandoverItem>> build(
      {required String offboardingId, required String category}) async {
    final usecase = ref.watch(offboardingUseCaseProvider);
    return await usecase.getHandover(
        offboardingId: offboardingId, category: category);
  }
}

@riverpod
class ValidateHandoverSubmission extends _$ValidateHandoverSubmission {
  @override
  AsyncValue<dynamic> build(int handoverAssetId) {
    return const AsyncData(null);
  }

  Future<void> validateForm({
    required HandoverValidateRequest request,
    required String offboardingId,
  }) async {
    state = const AsyncLoading();

    final usecase = ref.read(offboardingUseCaseProvider);

    try {
      final response = await usecase.validateHandover(
        request: request,
        offboardingId: offboardingId,
      );

      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}
