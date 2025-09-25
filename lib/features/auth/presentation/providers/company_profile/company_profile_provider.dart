import 'dart:convert';

import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:hrms_mobile/features/auth/domain/usecases/company_profile_usecase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:hrms_mobile/features/user/data/models/company/company_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'company_profile_provider.g.dart';

final companyProfileUseCaseProvider = Provider((ref) {
  final repo = ref.watch(authRepositoryProvider);
  return CompanyProfileUseCase(repo);
});

@riverpod
class CompanyProfile extends _$CompanyProfile {
  @override
  FutureOr<CompanyProfileResponse?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(StorageKeys.companyProfile);
    if (json != null) {
      return CompanyProfileResponse.fromJson(jsonDecode(json));
    }
    return null;
  }

  Future<CompanyProfileResponse> fetchCompanyProfile() async {
    return await ref.read(authRepositoryProvider).getCompanyProfile();
  }

  Future<void> onSuccessFetch(
      CompanyProfileResponse companyProfileResponse) async {
    final prefs = await SharedPreferences.getInstance();
    final companyJson = json.encode(companyProfileResponse.toJson());
    await prefs.setString(StorageKeys.companyProfile, companyJson);
    state = AsyncData(companyProfileResponse);
  }
}
