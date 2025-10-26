import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';

abstract class OffboardingRepository {
  Future<OffboardingStatusResponse> offboardingStatus();
}
