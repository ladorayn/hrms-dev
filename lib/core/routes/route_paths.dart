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
  static const performance = '/performance';
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
  static const exitSchedule = '/exit-schedule';
  static const exitScheduleName = 'exitSchedule';
  static const workHandover = '/work-handover';
  static const workHandoverName = 'offboardingWorkHandover';
  static const documentHandover = '/document-handover';
  static const documentHandoverName = 'offboardingDocumentHandover';
  static const workAssigneeHandover = '/work-handover-assignee';
  static const workAssigneeHandoverName = 'offboardingWorkAssigneeHandover';
  static const documentAssigneeHandover = '/document-handover-assignee';
  static const documentAssigneeHandoverName =
      'offboardingDocumentAssigneeHandover';
  static const responsibilityHandover = '/responsibility-handover';
  static const responsibilityHandoverName = 'responsibilityHandover';

  // Overtime Request
  static const overtimeRequest = '/overtime-request';
  static const overtimeEdit = '/edit-overtime/:id';
  static const overtimeEditName = 'overtimeEdit';

  // Leave Request
  static const leaveRequestForm = '/new-leave-request';
  static const leaveRequestFormName = 'leaveRequestForm';
  static const leaveDetail = '/leave-request/:id';
  static const leaveDetailName = 'leaveDetail';

  // Payslip
  static const payslip = '/payslip';
  static const payslipName = 'payslip';
  static const payslipViewRequest = '/payslip-view-request';
  static const payslipViewRequestName = 'payslipViewRequest';
  static const payslipView = '/payslip-view';
  static const payslipViewName = 'payslipView';
  static const payslipPrintRequest = '/payslip-print-request';
  static const payslipPrintRequestName = 'payslipPrintRequest';
  static const payslipPrintSubmitted = '/payslip-print-submitted';
  static const payslipPrintSubmittedName = 'payslipPrintSubmitted';

  // Profile
  static const profileDetail = '/profile-detail';
  static const profileDetailName = 'profileDetail';
  static const profileEdit = '/profile-edit';
  static const profileEditName = 'profileEdit';

  // Performance
  static const selfAssessment = '/self-assessment';
  static const selfAssessmentName = 'selfAssessmentName';
  static const managerAssessment = '/manager-assessment';
  static const managerAssessmentName = 'managerAssessmentName';
  static const assessmentForm = '/assessment-form';
  static const assessmentFormName = 'assessmentForm';
  static const assessmentManagerForm = '/assessment-manager-form';
  static const assessmentManagerFormName = 'assessmentManagerForm';
  static const supervisorAssessment = '/supervisor-assessment';
  static const supervisorAssessmentName = 'supervisorAssessmentName';
  static const supervisorAssessmentDetail = '/supervisor-assessment-detail';
  static const supervisorAssessmentDetailName =
      'supervisorAssessmentDetailName';
  static const supervisorAssessmentForm = '/supervisor-assessment-form';
  static const supervisorAssessmentFormName = 'supervisorAssessmentFormName';
  static const supervisorAssessmentSchedule = '/supervisor-assessment-schedule';
  static const supervisorAssessmentScheduleName =
      'supervisorAssessmentScheduleName';

  static const okrList = '/okr-list';
  static const okrListName = 'okrListName';
  static const okr = '/okr';
  static const okrName = 'okrName';
  static const okrKeyResult = '/okr-key-result';
  static const okrKeyResultName = 'okrKeyResultName';
}
