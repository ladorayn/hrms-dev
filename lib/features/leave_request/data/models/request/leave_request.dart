import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_request.freezed.dart';
part 'leave_request.g.dart';

@freezed
class LeaveRequest with _$LeaveRequest {
  const factory LeaveRequest({
    @JsonKey(name: 'leave_type_id') required int leaveTypeId,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String reason,
    @JsonKey(name: 'attachment', includeIfNull: false) final String? attachment,
  }) = _LeaveRequest;

  factory LeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestFromJson(json);
}

@freezed
class LeaveGroup with _$LeaveGroup {
  const factory LeaveGroup({
    required String date,
    required String label,
    required List<LeaveHistoryItem> leaves,
  }) = _LeaveGroup;

  factory LeaveGroup.fromJson(Map<String, dynamic> json) =>
      _$LeaveGroupFromJson(json);
}

// Represents the individual leave objects
@freezed
class LeaveHistoryItem with _$LeaveHistoryItem {
  const factory LeaveHistoryItem({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'leave_type') required LeaveTypes leaveType,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required int day,
    required String reason,
    required int status,
    @JsonKey(name: 'status_label') required String statusLabel,
    String? attachment,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _LeaveHistoryItem;

  factory LeaveHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$LeaveHistoryItemFromJson(json);
}

@freezed
class LeaveTypes with _$LeaveTypes {
  const factory LeaveTypes({
    required int id,
    required String name,
    String? description,
  }) = _LeaveType;

  factory LeaveTypes.fromJson(Map<String, dynamic> json) =>
      _$LeaveTypesFromJson(json);
}

@freezed
class LeaveDetail with _$LeaveDetail {
  const factory LeaveDetail({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'leave_type') required LeaveDetailLeaveType leaveType,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required int day,
    required String reason,
    required int status,
    @JsonKey(name: 'status_label') required String statusLabel,
    String? attachment,
    required LeaveDetailUser user,
    required List<LeaveDetailApprover> approvers,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _LeaveDetail;

  factory LeaveDetail.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailFromJson(json);
}

@freezed
class LeaveDetailLeaveType with _$LeaveDetailLeaveType {
  const factory LeaveDetailLeaveType({
    required int id,
    required String name,
    String? description,
  }) = _LeaveDetailLeaveType;

  factory LeaveDetailLeaveType.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailLeaveTypeFromJson(json);
}

@freezed
class LeaveDetailUser with _$LeaveDetailUser {
  const factory LeaveDetailUser({
    required int id,
    required String name,
    String? email,
  }) = _LeaveDetailUser;

  factory LeaveDetailUser.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailUserFromJson(json);
}

@freezed
class LeaveDetailApprover with _$LeaveDetailApprover {
  const factory LeaveDetailApprover({
    required int id,
    required LeaveDetailUser user,
  }) = _LeaveDetailApprover;

  factory LeaveDetailApprover.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailApproverFromJson(json);
}
