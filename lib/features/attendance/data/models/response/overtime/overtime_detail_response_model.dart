import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_detail_response_model.freezed.dart';
part 'overtime_detail_response_model.g.dart';

@freezed
class OvertimeDetail with _$OvertimeDetail {
  const factory OvertimeDetail({
    required int id,
    @JsonKey(name: "overtime_date") String? overtimeDate,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
    int? duration,
    int? status,
    @JsonKey(name: "status_label") String? statusLabel,
    String? notes,
    @JsonKey(name: "approved_by") int? approvedBy,
    Approver? approver,
    @JsonKey(name: "request_date") String? requestDate,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _OvertimeDetail;

  factory OvertimeDetail.fromJson(Map<String, dynamic> json) =>
      _$OvertimeDetailFromJson(json);
}

@freezed
class Approver with _$Approver {
  const factory Approver({
    int? id,
    String? name,
    String? duration,
  }) = _Approver;

  factory Approver.fromJson(Map<String, dynamic> json) =>
      _$ApproverFromJson(json);
}
