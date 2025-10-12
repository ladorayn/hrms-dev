import 'package:freezed_annotation/freezed_annotation.dart';

part 'offboarding_step.freezed.dart';
part 'offboarding_step.g.dart';

@freezed
class OffboardingStepModel with _$OffboardingStepModel {
  const factory OffboardingStepModel({
    required String title,
    required String description,
  }) = _OffboardingStepModel;

  factory OffboardingStepModel.fromJson(Map<String, dynamic> json) =>
      _$OffboardingStepModelFromJson(json);
}
