import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_response_model.freezed.dart';
part 'overtime_response_model.g.dart';

@freezed
class OvertimeResponse with _$OvertimeResponse {
  const factory OvertimeResponse({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'overtime_date') String? overtimeDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    int? duration,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    String? notes,
    @JsonKey(name: 'approved_by') String? approvedBy,
    @JsonKey(name: 'request_date') String? requestDate,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OvertimeResponse;

  factory OvertimeResponse.fromJson(Map<String, dynamic> json) =>
      _$OvertimeResponseFromJson(json);
}
