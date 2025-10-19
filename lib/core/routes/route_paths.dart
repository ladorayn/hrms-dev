// core/navigation/route_paths.dart

class RoutePaths {
  // --- Unauthenticated Routes ---
  static const splash = '/splash';
  static const login = '/login';
  static const resetPassword = '/reset-password';
  static const resetPasswordCreate = '/create-password';
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

  // Attendance
  static const attendance = '/attendance';
  static const attendanceEdit = '/edit-attendance/:id';
  static const attendanceEditName = 'attendanceEdit';
  static const locationConfirmed = '/location-confirmed';
  static const faceRegistration = '/face-registration';
  static const faceVerification = '/face-verification';
  static const attendanceForm = '/attendance-form';

  // Offboarding
  static const offboarding = '/offboarding';
  static const offboardingName = 'offboarding';
  static const exitForm = '/exit-form';
  static const exitFormName = 'offboardingExitForm';
  static const workHandover = '/work-handover';
  static const workHandoverName = 'offboardingWorkHandover';
  static const documentHandover = '/document-handover';
  static const documentHandoverName = 'offboardingDocumentHandover';
  static const workAssigneeHandover = '/work-handover-assignee';
  static const workAssigneeHandoverName = 'offboardingWorkAssigneeHandover';
  static const documentAssigneeHandover = '/document-handover-assignee';
  static const documentAssigneeHandoverName =
      'offboardingDocumentAssigneeHandover';

  // Overtime Request
  static const overtimeRequest = '/overtime-request';
  static const overtimeEdit = '/edit-overtime/:id';
  static const overtimeEditName = 'overtimeEdit';

  // Leave Request
  static const leaveRequestForm = '/new-leave-request';
  static const leaveRequestFormName = 'leaveRequestForm';
  static const leaveDetail = '/leave-request/:id';
  static const leaveDetailName = 'leaveDetail';
}
