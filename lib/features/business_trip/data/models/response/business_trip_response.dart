import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_trip_response.freezed.dart';
part 'business_trip_response.g.dart';

@freezed
class BusinessTripData with _$BusinessTripData {
  const factory BusinessTripData({
    required int id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    String? destination,
    String? reason,
    int? status,
    @JsonKey(name: 'status_str') String? statusStr,
    @JsonKey(name: 'approved_at') String? approvedAt,
    @JsonKey(name: 'approved_by_id') int? approvedById,
    String? notes,
    dynamic metadata,
    BusinessTripUser? user,
    BusinessTripApprover? approver,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _BusinessTripData;

  factory BusinessTripData.fromJson(Map<String, dynamic> json) =>
      _$BusinessTripDataFromJson(json);
}

@freezed
class BusinessTripUser with _$BusinessTripUser {
  const factory BusinessTripUser({
    required int id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'employee_id') int? employeeId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
  }) = _BusinessTripUser;

  factory BusinessTripUser.fromJson(Map<String, dynamic> json) =>
      _$BusinessTripUserFromJson(json);
}

@freezed
class BusinessTripApprover with _$BusinessTripApprover {
  const factory BusinessTripApprover({
    required int id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'employee_id') int? employeeId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
  }) = _BusinessTripApprover;

  factory BusinessTripApprover.fromJson(Map<String, dynamic> json) =>
      _$BusinessTripApproverFromJson(json);
}
