import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/leave_request/data/data_sources/leave_remote_source.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/data/repositories/leave_repository_impl.dart';
import 'package:hrms_mobile/features/leave_request/domain/usecases/leave_usecase.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
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

@riverpod
Future<LeaveBalanceResponse> leaveBalance(Ref ref) {
  return ref.watch(leaveUseCaseProvider).getLeaveBalance();
}

@riverpod
class LeaveNotifier extends _$LeaveNotifier {
  @override
  FutureOr<void> build() {}

  Future<bool> submitRequest(OvertimeRequest request) async {
    state = const AsyncLoading();

    try {
      await ref.read(leaveUseCaseProvider).getLeaveBalance();
      state = const AsyncData(null);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
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
