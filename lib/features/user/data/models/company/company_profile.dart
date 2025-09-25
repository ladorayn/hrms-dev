import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_profile.freezed.dart';
part 'company_profile.g.dart';

@freezed
class CompanyProfileResponse with _$CompanyProfileResponse {
  const factory CompanyProfileResponse({
    required int id,
    required String name,
    @JsonKey(name: 'legal_entity_name') String? legalEntityName,
    String? industry,
    String? email,
    String? phone,
    String? logo,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'business_registration_number')
    String? businessRegistrationNumber,
    String? website,
    String? address,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
    @JsonKey(name: 'payroll_bank_account_number')
    String? payrollBankAccountNumber,
    @JsonKey(name: 'payroll_bank_account_name') String? payrollBankAccountName,
    @JsonKey(name: 'payroll_currency') String? payrollCurrency,
  }) = _CompanyProfileResponse;

  factory CompanyProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileResponseFromJson(json);
}
