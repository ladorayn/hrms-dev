// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrms_mobile/features/user/data/models/employment/employment.dart';
import 'package:hrms_mobile/features/user/data/models/employment/profile/employee_profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    required int id,
    @JsonKey(name: 'employee_id') int? employeeId,
    String? code,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    required String name,
    required String email,
    List<String>? roles,
    @JsonKey(name: 'first_login_at') String? firstLoginAt,
    @JsonKey(name: 'is_first_login') bool? isFirstLogin,
    @JsonKey(name: 'employee_profile') EmployeeProfile? employeeProfile,
    Employment? employment,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}
