import 'package:freezed_annotation/freezed_annotation.dart';

part 'offboarding_status_response.freezed.dart';
part 'offboarding_status_response.g.dart';

@freezed
class OffboardingStatusResponse with _$OffboardingStatusResponse {
  const factory OffboardingStatusResponse({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'effective_resignation_date')
    String? effectiveResignationDate,
    @JsonKey(name: 'last_working_date') String? lastWorkingDate,
    @JsonKey(name: 'form_id') int? formId,
    int? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OffboardingStatusResponse;

  factory OffboardingStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$OffboardingStatusResponseFromJson(json);
}

@freezed
class OffboardingProgress with _$OffboardingProgress {
  const factory OffboardingProgress({
    int? id,
    String? type,
    String? label,
    String? description,
    @JsonKey(name: 'is_completed') bool? isCompleted,
  }) = _OffboardingProgreess;

  factory OffboardingProgress.fromJson(Map<String, dynamic> json) =>
      _$OffboardingProgressFromJson(json);
}
