import 'package:hrms_mobile/features/offboarding/data/data_sources/offboarding_remote_source.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';

class OffboardingRepositoryImpl implements OffboardingRepository {
  final OffboardingRemoteSource remoteSource;

  OffboardingRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<OffboardingStatusResponse> offboardingStatus() async {
    final response = await remoteSource.offboardingStatus();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
