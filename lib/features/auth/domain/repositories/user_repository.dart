import 'package:hrms_mobile/features/auth/data/models/user.dart';

abstract class UserRepository {
  Future<User> getUser();
}
