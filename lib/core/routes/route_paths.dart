// core/navigation/route_paths.dart

class RoutePaths {
  // --- Unauthenticated Routes ---
  static const splash = '/';
  static const login = '/login';
  static const resetPassword = '/reset-password';
  static const resetPasswordCreate = 'create';
  static const String resetPasswordCreateName = 'reset-password-create';
  static const resetPasswordSuccess = 'success';
  static const resetPasswordSuccessName = 'reset-password-success';
  static const String resetPasswordCheckEmail = 'check-email';
  static const String resetPasswordCheckEmailName =
      'reset-password-check-email';

  // --- Authenticated Routes (with Bottom Nav Bar) ---
  static const dashboard = '/dashboard'; // Home tab
  static const employees = '/employees';
  static const leaveRequest = '/leave-request';
  static const inbox = '/inbox';
  static const profile = '/profile';

  // --- Nested Routes ---
  static const attendance = 'attendance';
}
