import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/user/data/models/company/company_profile.dart';

class CompanyProfileUseCase {
  final AuthRepository repository;

  CompanyProfileUseCase(this.repository);

  Future<CompanyProfileResponse> call() {
    return repository.getCompanyProfile();
  }
}
