// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchListResponseModelImpl _$$BranchListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchListResponseModelImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BranchData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] as String?,
      pagination: json['pagination'] == null
          ? null
          : PaginationData.fromJson(json['pagination'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BranchListResponseModelImplToJson(
        _$BranchListResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'pagination': instance.pagination,
      'status': instance.status,
    };

_$BranchDataImpl _$$BranchDataImplFromJson(Map<String, dynamic> json) =>
    _$BranchDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      businessRegistrationNumber:
          json['business_registration_number'] as String?,
      email: json['email'] as String?,
      industry: json['industry'] as String?,
      isActive: json['is_active'] as bool?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      legalEntityName: json['legal_entity_name'] as String?,
      logo: json['logo'] as String?,
      logoUrl: json['logo_url'] as String?,
      maxRadius: (json['max_radius'] as num?)?.toInt(),
      payrollBankAccountName: json['payroll_bank_account_name'] as String?,
      payrollBankAccountNumber: json['payroll_bank_account_number'] as String?,
      payrollBankName: json['payroll_bank_name'] as String?,
      payrollCurrency: json['payroll_currency'] as String?,
      phone: json['phone'] as String?,
      tenantId: (json['tenant_id'] as num?)?.toInt(),
      website: json['website'] as String?,
      settings: json['settings'] == null
          ? null
          : BranchSettings.fromJson(json['settings'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BranchDataImplToJson(_$BranchDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'business_registration_number': instance.businessRegistrationNumber,
      'email': instance.email,
      'industry': instance.industry,
      'is_active': instance.isActive,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'legal_entity_name': instance.legalEntityName,
      'logo': instance.logo,
      'logo_url': instance.logoUrl,
      'max_radius': instance.maxRadius,
      'payroll_bank_account_name': instance.payrollBankAccountName,
      'payroll_bank_account_number': instance.payrollBankAccountNumber,
      'payroll_bank_name': instance.payrollBankName,
      'payroll_currency': instance.payrollCurrency,
      'phone': instance.phone,
      'tenant_id': instance.tenantId,
      'website': instance.website,
      'settings': instance.settings,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$BranchSettingsImpl _$$BranchSettingsImplFromJson(Map<String, dynamic> json) =>
    _$BranchSettingsImpl(
      breakDuration: (json['break_duration'] as num?)?.toInt(),
      dateFormat: json['date_format'] as String?,
      language: json['language'] as String?,
      timeFormat: json['time_format'] as String?,
      timezone: json['timezone'] as String?,
      workingHours: json['working_hours'] as String?,
    );

Map<String, dynamic> _$$BranchSettingsImplToJson(
        _$BranchSettingsImpl instance) =>
    <String, dynamic>{
      'break_duration': instance.breakDuration,
      'date_format': instance.dateFormat,
      'language': instance.language,
      'time_format': instance.timeFormat,
      'timezone': instance.timezone,
      'working_hours': instance.workingHours,
    };

_$PaginationDataImpl _$$PaginationDataImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDataImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      first: json['first'] as String?,
      from: (json['from'] as num?)?.toInt(),
      last: json['last'] as String?,
      lastPage: (json['last_page'] as num?)?.toInt(),
      next: json['next'],
      perPage: (json['per_page'] as num?)?.toInt(),
      prev: json['prev'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationDataImplToJson(
        _$PaginationDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'first': instance.first,
      'from': instance.from,
      'last': instance.last,
      'last_page': instance.lastPage,
      'next': instance.next,
      'per_page': instance.perPage,
      'prev': instance.prev,
      'to': instance.to,
      'total': instance.total,
    };
