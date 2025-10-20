import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_balance_response.freezed.dart';
part 'leave_balance_response.g.dart';

@freezed
class LeaveBalanceResponse with _$LeaveBalanceResponse {
  const factory LeaveBalanceResponse({
    @JsonKey(name: "available_time_off") int? availableTimeOff,
    @JsonKey(name: "time_off_used") int? timeOffUsed,
  }) = _LeaveBalanceResponse;

  factory LeaveBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaveBalanceResponseFromJson(json);
}
