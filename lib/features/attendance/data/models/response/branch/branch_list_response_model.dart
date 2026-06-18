import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_list_response_model.freezed.dart';
part 'branch_list_response_model.g.dart';

@freezed
class BranchListResponseModel with _$BranchListResponseModel {
  const factory BranchListResponseModel({
    @Default([]) List<BranchData> data,
    String? message,
    PaginationData? pagination,
    String? status,
  }) = _BranchListResponseModel;

  factory BranchListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BranchListResponseModelFromJson(json);
}

@freezed
class BranchData with _$BranchData {
  const factory BranchData({
    required int id,
    String? name,
    String? address,
    @JsonKey(name: 'business_registration_number')
    String? businessRegistrationNumber,
    String? email,
    String? industry,
    @JsonKey(name: 'is_active') bool? isActive,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'legal_entity_name') String? legalEntityName,
    String? logo,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'max_radius') int? maxRadius,
    @JsonKey(name: 'payroll_bank_account_name')
    String? payrollBankAccountName,
    @JsonKey(name: 'payroll_bank_account_number')
    String? payrollBankAccountNumber,
    @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
    @JsonKey(name: 'payroll_currency') String? payrollCurrency,
    String? phone,
    @JsonKey(name: 'tenant_id') int? tenantId,
    String? website,
    BranchSettings? settings,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _BranchData;

  factory BranchData.fromJson(Map<String, dynamic> json) =>
      _$BranchDataFromJson(json);
}

@freezed
class BranchSettings with _$BranchSettings {
  const factory BranchSettings({
    @JsonKey(name: 'break_duration') int? breakDuration,
    @JsonKey(name: 'date_format') String? dateFormat,
    String? language,
    @JsonKey(name: 'time_format') String? timeFormat,
    String? timezone,
    @JsonKey(name: 'working_hours') String? workingHours,
  }) = _BranchSettings;

  factory BranchSettings.fromJson(Map<String, dynamic> json) =>
      _$BranchSettingsFromJson(json);
}

@freezed
class PaginationData with _$PaginationData {
  const factory PaginationData({
    @JsonKey(name: 'current_page') int? currentPage,
    String? first,
    int? from,
    String? last,
    @JsonKey(name: 'last_page') int? lastPage,
    dynamic next,
    @JsonKey(name: 'per_page') int? perPage,
    dynamic prev,
    int? to,
    int? total,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}
