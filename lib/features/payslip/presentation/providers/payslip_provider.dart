import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/payslip/data/data_sources/payslip_remote_source.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';
import 'package:hrms_mobile/features/payslip/data/repositories/payslip_repository_impl.dart';
import 'package:hrms_mobile/features/payslip/domain/usecases/payslip_usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payslip_provider.g.dart';

final payslipRemoteSourceProvider = Provider<PayslipRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return PayslipRemoteSource(dio);
});

final payslipRepoProvider = Provider<PayslipRepositoryImpl>((ref) {
  final remoteSource = ref.watch(payslipRemoteSourceProvider);
  return PayslipRepositoryImpl(remoteSource: remoteSource);
});

final payslipUseCaseProvider =
    Provider((ref) => PayslipUsecases(ref.watch(payslipRepoProvider)));

@riverpod
class PayslipList extends _$PayslipList {
  @override
  Future<List<PayslipDataList>> build() async {
    final usecase = ref.watch(payslipUseCaseProvider);
    return await usecase.getPayslipList();
  }
}

@riverpod
class PayslipViewRequest extends _$PayslipViewRequest {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<String> requestViewPayslip({
    required PayslipRequest request,
    required int id,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(payslipUseCaseProvider);

    try {
      final BaseResponse<dynamic> response =
          await usecase.requestViewPayslip(request: request, id: id);

      if (response.status == 'success') {
        state = AsyncData(response.message);
        return response.message;
      } else {
        throw Exception('API Error: ${response.message}');
      }
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
class PrintPayslipRequest extends _$PrintPayslipRequest {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<String> requestPrintPayslip({
    required PayslipRequest request,
    required int id,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(payslipUseCaseProvider);

    try {
      final BaseResponse<dynamic> response =
          await usecase.requestPrintPayslip(request: request, id: id);
      if (response.status == 'success') {
        state = AsyncData(response.message);
        return response.message;
      } else {
        throw Exception('API Error: ${response.message}');
      }
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
class PayslipDetail extends _$PayslipDetail {
  @override
  Future<PayslipDetailResponse> build({required int id}) async {
    final usecase = ref.watch(payslipUseCaseProvider);
    return await usecase.getPayslipDetail(id: id);
  }
}
