// employee_profile.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_profile.freezed.dart';
part 'employee_profile.g.dart';

@freezed
class EmployeeProfile with _$EmployeeProfile {
  const factory EmployeeProfile({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    String? code,
    String? gender,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    @JsonKey(name: 'marital_status') int? maritalStatus,
    @JsonKey(name: 'marital_status_label') String? maritalStatusLabel,
    @JsonKey(name: 'blood_type') String? bloodType,
    String? height,
    String? weight,
    @JsonKey(name: 'id_number') String? idNumber,
    String? npwp,
    String? bpjs,
    @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
    @JsonKey(name: 'residential_address') String? residentialAddress,
    String? hobby,
    String? achievement,
    @JsonKey(name: 'personal_description') String? personalDescription,
    @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _EmployeeProfile;

  factory EmployeeProfile.fromJson(Map<String, dynamic> json) =>
      _$EmployeeProfileFromJson(json);
}
