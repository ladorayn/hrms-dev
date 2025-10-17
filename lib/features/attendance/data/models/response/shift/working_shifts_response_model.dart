import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_shifts_response_model.freezed.dart';
part 'working_shifts_response_model.g.dart';

@freezed
class WorkingShiftResponseModel with _$WorkingShiftResponseModel {
  const factory WorkingShiftResponseModel({
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    @JsonKey(name: 'day_name') required String dayName,
    required String date,
    required List<ShiftSchedule> shifts,
  }) = _WorkingShiftResponseModel;

  factory WorkingShiftResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingShiftResponseModelFromJson(json);
}

@freezed
class ShiftSchedule with _$ShiftSchedule {
  const factory ShiftSchedule({
    @JsonKey(name: 'schedule_id') required int scheduleId,
    required int sequence,
    required ShiftInfo shift,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'ends_next_day') required bool endsNextDay,
    @JsonKey(name: 'break_start_time') String? breakStartTime,
    @JsonKey(name: 'break_end_time') String? breakEndTime,
  }) = _ShiftSchedule;

  factory ShiftSchedule.fromJson(Map<String, dynamic> json) =>
      _$ShiftScheduleFromJson(json);
}

@freezed
class ShiftInfo with _$ShiftInfo {
  const factory ShiftInfo({
    required int id,
    required String name,
    String? description,
  }) = _ShiftInfo;

  factory ShiftInfo.fromJson(Map<String, dynamic> json) =>
      _$ShiftInfoFromJson(json);
}
