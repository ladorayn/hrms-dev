import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_request_model.freezed.dart';
part 'overtime_request_model.g.dart';

@freezed
class OvertimeRequest with _$OvertimeRequest {
  const factory OvertimeRequest({
    @JsonKey(name: 'overtime_date') required String overtimeDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required String notes,
  }) = _OvertimeRequest;

  factory OvertimeRequest.fromJson(Map<String, dynamic> json) =>
      _$OvertimeRequestFromJson(json);
}
