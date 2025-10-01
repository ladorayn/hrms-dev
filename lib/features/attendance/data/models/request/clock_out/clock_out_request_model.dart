import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_out_request_model.freezed.dart';
part 'clock_out_request_model.g.dart';

@freezed
class ClockOutRequestModel with _$ClockOutRequestModel {
  const factory ClockOutRequestModel({
    @JsonKey(name: 'clock_out_at') required String clockOutAt,
    String? notes,
  }) = _ClockOutRequestModel;

  factory ClockOutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ClockOutRequestModelFromJson(json);
}
