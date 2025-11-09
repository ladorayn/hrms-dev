import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/data/data_source/general_remote_source.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository_impl.dart';
import 'package:hrms_mobile/core/data/usecases/general/general_usecases.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/leave_request/data/data_sources/leave_remote_source.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/data/repositories/leave_repository_impl.dart';
import 'package:hrms_mobile/features/leave_request/domain/usecases/leave_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'leave_provider.g.dart';

final leaveRemoteSourceProvider = Provider<LeaveRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return LeaveRemoteSource(dio);
});

final leaveRepoProvider = Provider<LeaveRepositoryImpl>((ref) {
  final remoteSource = ref.watch(leaveRemoteSourceProvider);
  return LeaveRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final leaveUseCaseProvider =
    Provider((ref) => LeaveUsecase(ref.watch(leaveRepoProvider)));

final generalRemoteSourceProvider = Provider<GeneralRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return GeneralRemoteSource(dio);
});

final generalRepoProvider = Provider<GeneralRepository>((ref) {
  final remoteSource = ref.watch(generalRemoteSourceProvider);
  return GeneralRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final generalUsecaseProvider = Provider((ref) {
  final repository = ref.watch(generalRepoProvider);
  return GeneralUsecases(repository);
});

@riverpod
Future<LeaveBalanceResponse> leaveBalance(Ref ref) {
  return ref.watch(leaveUseCaseProvider).getLeaveBalance();
}

@riverpod
class FileUploadNotifier extends _$FileUploadNotifier {
  @override
  AsyncValue<UploadFile?> build() {
    return const AsyncData(null);
  }

  Future<UploadFile> uploadFile(PlatformFile file) async {
    state = const AsyncLoading();
    final usecase = ref.read(generalUsecaseProvider);

    try {
      final response = await usecase.uploadFile(file: file);
      state = AsyncData(response);
      return response;
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
class LeaveRequestSubmission extends _$LeaveRequestSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required LeaveRequest request,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(leaveUseCaseProvider);

    try {
      final response = await usecase.submitLeaveRequest(request: request);
      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }

  void setLoading() {
    state = const AsyncLoading();
  }
}

@riverpod
class LeaveTypes extends _$LeaveTypes {
  @override
  Future<List<LeaveType>> build() async {
    final usecase = ref.watch(leaveUseCaseProvider);
    return await usecase.getLeaveTypes();
  }
}

@riverpod
class LeaveHistories extends _$LeaveHistories {
  @override
  Future<List<LeaveGroup>> build() async {
    final usecase = ref.watch(leaveUseCaseProvider);
    return await usecase.getLeaveHistory();
  }
}

@riverpod
class LeaveData extends _$LeaveData {
  @override
  Future<LeaveDetail> build({required int id}) async {
    final usecase = ref.watch(leaveUseCaseProvider);
    return await usecase.getLeaveDetail(id: id);
  }
}
