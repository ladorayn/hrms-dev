import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_in_request_model.freezed.dart';
part 'clock_in_request_model.g.dart';

@freezed
class ClockInRequestModel with _$ClockInRequestModel {
  const factory ClockInRequestModel({
    @JsonKey(name: 'shift_id') required int shiftId,
    @JsonKey(name: 'clock_in_at') required String clockInAt,
    required double latitude,
    required double longitude,
    String? notes,
    @JsonKey(name: 'branch_id') int? branchId,
  }) = _ClockInRequestModel;

  factory ClockInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ClockInRequestModelFromJson(json);
}
