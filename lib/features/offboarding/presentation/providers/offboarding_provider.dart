import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/offboarding/data/data_sources/offboarding_remote_source.dart';
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
  return OffboardingRepositoryImpl(
    remoteSource: remoteSource,
  );
});

final offboardingUseCaseProvider =
    Provider((ref) => OffboardingUsecases(ref.watch(offboardingRepoProvider)));

@riverpod
class OffboardingStatus extends _$OffboardingStatus {
  @override
  Future<OffboardingStatusResponse?> build() async {
    final usecase = ref.watch(offboardingUseCaseProvider);
    final details = await usecase.checkStatus();
    return details;
  }
}
