import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/business_trip/data/data_sources/business_trip_remote_source.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/data/repositories/business_trip_repository_impl.dart';
import 'package:hrms_mobile/features/business_trip/domain/usecases/business_trip_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_trip_provider.g.dart';

final businessTripRemoteSourceProvider = Provider<BusinessTripRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return BusinessTripRemoteSource(dio);
});

final businessTripRepoProvider = Provider<BusinessTripRepositoryImpl>((ref) {
  final remoteSource = ref.watch(businessTripRemoteSourceProvider);
  return BusinessTripRepositoryImpl(remoteSource: remoteSource);
});

final businessTripUseCaseProvider = Provider((ref) {
  return BusinessTripUsecase(ref.watch(businessTripRepoProvider));
});

@riverpod
class BusinessTrips extends _$BusinessTrips {
  @override
  Future<List<BusinessTripData>> build() async {
    final usecase = ref.watch(businessTripUseCaseProvider);
    return await usecase.getBusinessTrips();
  }
}

@riverpod
class BusinessTripDetail extends _$BusinessTripDetail {
  @override
  Future<BusinessTripData> build({required int id}) async {
    final usecase = ref.watch(businessTripUseCaseProvider);
    return await usecase.getBusinessTripDetail(id);
  }
}

@riverpod
class BusinessTripSubmission extends _$BusinessTripSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required BusinessTripRequest request,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(businessTripUseCaseProvider);

    try {
      await usecase.createBusinessTrip(request);
      state = const AsyncData(null);
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
class BusinessTripCancellation extends _$BusinessTripCancellation {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> cancelTrip({
    required int id,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(businessTripUseCaseProvider);

    try {
      await usecase.cancelBusinessTrip(id);
      state = const AsyncData(null);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}
