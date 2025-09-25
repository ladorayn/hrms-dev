// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyProfileResponseImpl _$$CompanyProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyProfileResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      legalEntityName: json['legal_entity_name'] as String?,
      industry: json['industry'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      logo: json['logo'] as String?,
      logoUrl: json['logo_url'] as String?,
      businessRegistrationNumber:
          json['business_registration_number'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      isActive: json['is_active'] as bool?,
      payrollBankName: json['payroll_bank_name'] as String?,
      payrollBankAccountNumber: json['payroll_bank_account_number'] as String?,
      payrollBankAccountName: json['payroll_bank_account_name'] as String?,
      payrollCurrency: json['payroll_currency'] as String?,
    );

Map<String, dynamic> _$$CompanyProfileResponseImplToJson(
        _$CompanyProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legal_entity_name': instance.legalEntityName,
      'industry': instance.industry,
      'email': instance.email,
      'phone': instance.phone,
      'logo': instance.logo,
      'logo_url': instance.logoUrl,
      'business_registration_number': instance.businessRegistrationNumber,
      'website': instance.website,
      'address': instance.address,
      'is_active': instance.isActive,
      'payroll_bank_name': instance.payrollBankName,
      'payroll_bank_account_number': instance.payrollBankAccountNumber,
      'payroll_bank_account_name': instance.payrollBankAccountName,
      'payroll_currency': instance.payrollCurrency,
    };
