import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';

class OffboardingUsecases {
  final OffboardingRepository repository;

  OffboardingUsecases(this.repository);

  Future<OffboardingStatusResponse?> checkStatus() {
    return repository.offboardingStatus();
  }
}
