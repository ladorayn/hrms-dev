// features/auth/data/models/user.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String email,
    @JsonKey(name: 'tenant_id') int? tenantId,
    @JsonKey(name: 'is_first_login') bool? isFirstLogin,
    // Add other fields from the response as needed
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
