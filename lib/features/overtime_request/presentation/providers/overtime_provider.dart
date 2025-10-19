import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/overtime_request/data/data_sources/overtime_remote_source.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/repositories/overtime_repository_impl.dart';
import 'package:hrms_mobile/features/overtime_request/domain/usecases/overtime_request_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'overtime_provider.g.dart';

final overtimeRemoteSourceProvider = Provider<OvertimeRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return OvertimeRemoteSource(dio);
});

final overtimeRepoProvider = Provider<OvertimeRepositoryImpl>((ref) {
  final remoteSource = ref.watch(overtimeRemoteSourceProvider);
  return OvertimeRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final overtimeRequestUseCaseProvider =
    Provider((ref) => OvertimeRequestUsecase(ref.watch(overtimeRepoProvider)));

@riverpod
class OvertimeRequestNotifier extends _$OvertimeRequestNotifier {
  @override
  FutureOr<void> build() {}

  Future<bool> submitRequest(OvertimeRequest request) async {
    state = const AsyncLoading();

    try {
      await ref.read(overtimeRequestUseCaseProvider).call(request);
      state = const AsyncData(null);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }

  Future<bool> updateRequest(
      {required String overtimeId, required OvertimeRequest request}) async {
    state = const AsyncLoading();

    try {
      await ref
          .read(overtimeRequestUseCaseProvider)
          .updateCall(overtimeId: overtimeId, request: request);
      state = const AsyncData(null);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}
