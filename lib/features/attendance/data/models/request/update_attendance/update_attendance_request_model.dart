import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_attendance_request_model.freezed.dart';
part 'update_attendance_request_model.g.dart';

@freezed
class UpdateAttendanceRequestModel with _$UpdateAttendanceRequestModel {
  const factory UpdateAttendanceRequestModel({
    @JsonKey(name: 'shift_id') int? shiftId,
    @JsonKey(name: 'clock_in_at') String? clockInAt,
    @JsonKey(name: 'clock_out_at') String? clockOutAt,
    String? notes,
  }) = _UpdateAttendanceRequestModel;

  factory UpdateAttendanceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAttendanceRequestModelFromJson(json);
}
