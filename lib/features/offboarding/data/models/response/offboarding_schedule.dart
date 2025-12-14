import 'package:freezed_annotation/freezed_annotation.dart';

part 'offboarding_schedule.freezed.dart';
part 'offboarding_schedule.g.dart';

@freezed
class OffboardingSchedule with _$OffboardingSchedule {
  const factory OffboardingSchedule({
    int? id,
    String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'interviewer') String? interviewer,
  }) = _OffboardingSchedule;

  factory OffboardingSchedule.fromJson(Map<String, dynamic> json) =>
      _$OffboardingScheduleFromJson(json);
}
