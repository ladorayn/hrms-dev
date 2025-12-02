// features/auth/data/models/user.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String email,
    @JsonKey(name: 'email_verify_at') String? emailVerifyAt,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'is_first_login') bool? isFirstLogin,
    @JsonKey(name: 'first_login_at') String? firstLoginAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'fcm_token') String? fcmToken,
    @JsonKey(name: 'profile_id') int? profileId,
    String? profile,
    // Add other fields from the response as needed
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
