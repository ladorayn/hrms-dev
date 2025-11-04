import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_type_response.freezed.dart';
part 'leave_type_response.g.dart';

@freezed
class LeaveType with _$LeaveType {
  const factory LeaveType({
    required int id,
    required String name,
    required String description,
    required String gender,
    @JsonKey(name: 'quota_configuration') required String quotaConfiguration,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<Entitlement> entitlements,
  }) = _LeaveType;

  factory LeaveType.fromJson(Map<String, dynamic> json) =>
      _$LeaveTypeFromJson(json);
}

@freezed
class Entitlement with _$Entitlement {
  const factory Entitlement({
    required int id,
    @JsonKey(name: 'leave_type_id') required int leaveTypeId,
    @JsonKey(name: 'job_level') required String jobLevel,
    @JsonKey(name: 'quota_days') required int quotaDays,
    @JsonKey(name: 'carry_over_allowed') required bool carryOverAllowed,
    @JsonKey(name: 'max_carry_over_days') required int maxCarryOverDays,
    @JsonKey(name: 'deduct_employee_balance')
    required bool deductEmployeeBalance,
    @JsonKey(name: 'carry_over_expiry') String? carryOverExpiry,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Entitlement;

  factory Entitlement.fromJson(Map<String, dynamic> json) =>
      _$EntitlementFromJson(json);
}
