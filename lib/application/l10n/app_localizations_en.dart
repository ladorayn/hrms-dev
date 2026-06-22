// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get continueButton => 'Continue';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get formEmail => 'Email';

  @override
  String get formHintEmail => 'Enter your email';

  @override
  String get formPassword => 'Password';

  @override
  String get formHintPassword => 'Enter your password';

  @override
  String get formPasswordConfirmation => 'Password Confirmation';

  @override
  String loginFailed(String error) {
    return 'Login failed: $error';
  }

  @override
  String get resetPasswordEmail_title => 'Reset Password';

  @override
  String get resetPasswordEmail_body => 'Enter your registered email to reset your password';

  @override
  String get resetPasswordEmail_linkSentSnackbar => 'Reset link sent! Check your email.';

  @override
  String get resetPasswordCheckEmail_title => 'Please Check Your Email';

  @override
  String get resetPasswordCheckEmail_body => 'A reset password link has been sent to your registered email.';

  @override
  String get resetPasswordCheckEmail_didNotReceive => 'Didn\'t receive an email? ';

  @override
  String get resetPasswordCheckEmail_resend => 'Resend Email';

  @override
  String get resetPasswordCheckEmail_resendingSnackbar => 'Resending reset link...';

  @override
  String get resetPasswordCreate_title => 'Create a New Password';

  @override
  String get resetPasswordCreate_subtitle => 'Create a new password for your account';

  @override
  String get resetPasswordSuccess_title => 'Password Reset Successful';

  @override
  String get resetPasswordSuccess_body => 'Please sign in using your new password.';

  @override
  String get errorUnknown => 'An unknown error occurred';

  @override
  String formValidationRequired(String fieldName) {
    return '$fieldName is required';
  }

  @override
  String formValidationMinLength(String fieldName, int minLength) {
    return '$fieldName must be at least $minLength characters long';
  }

  @override
  String formValidationMaxLength(String fieldName, int maxLength) {
    return '$fieldName cannot be longer than $maxLength characters';
  }

  @override
  String get formValidationEmailInvalid => 'Please enter a valid email';

  @override
  String get formValidationOnlyAlphanumeric => 'Only letters and numbers are allowed';

  @override
  String get formValidationPasswordInvalid => 'The password you entered is incorrect';

  @override
  String get formValidationPasswordCriteriaInvalid => 'Password does not meet the required criteria';

  @override
  String get formPhone => 'Phone Number';

  @override
  String get navHome => 'Home';

  @override
  String get navPerformance => 'Performance';

  @override
  String get navLeaveRequest => 'Leave Request';

  @override
  String get navInbox => 'Inbox';

  @override
  String get navProfile => 'Profile';

  @override
  String get profileMyProfile => 'My Profile';

  @override
  String get profileAttendanceAndOvertime => 'Attendance and Overtime';

  @override
  String get profileMyPayslip => 'My Payslip';

  @override
  String get profileChangeLanguage => 'Change Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageIndonesian => 'Bahasa Indonesia';

  @override
  String get dashboardClockIn => 'Clock In';

  @override
  String get dashboardClockOut => 'Clock Out';

  @override
  String get dashboardWorkingTimeDuration => 'Working Time Duration';

  @override
  String get dashboardOvertimeDuration => 'Overtime Duration';

  @override
  String get dashboardOvertimeRequest => 'Overtime Request';

  @override
  String get dashboardNewLeaveRequest => 'New Leave Request';

  @override
  String dashboardOffboardingStatusError(String error) {
    return 'Error fetching offboarding status $error';
  }

  @override
  String get dashboardRecentActivity => 'Recent Activity';

  @override
  String get dashboardCouldNotLoadActivities => 'Could not load activities';

  @override
  String get dashboardNoRecentActivity => 'No recent activity.';

  @override
  String get dashboardOffboardingTitle => '🔔 Complete Your Offboarding Journey!';

  @override
  String get dashboardOffboardingSubtitle => 'Let\'s wrap things up smoothly before you leave';

  @override
  String get dashboardOffboardingStartButton => 'Start Offboarding Process';

  @override
  String splashError(String error) {
    return 'Error: $error';
  }

  @override
  String get profileLogOut => 'Log Out';

  @override
  String profileEmployeeId(String employeeId) {
    return 'Employee ID: $employeeId';
  }

  @override
  String get profileStatDays => 'Days';

  @override
  String get profileStatHours => 'Hours';

  @override
  String get profileStatAttendance => 'Attendance';

  @override
  String get profileStatTimeOff => 'Time Off';

  @override
  String get profileStatOvertime => 'Overtime';

  @override
  String get profileErrorLoadingStats => 'Error loading stats';

  @override
  String profileFailedToLoad(String error) {
    return 'Failed to load profile: $error';
  }

  @override
  String get profilePersonalInformation => 'Personal Information';

  @override
  String get profileEmployeeInformation => 'Employee Information';

  @override
  String get profileEditProfile => 'Edit Profile';

  @override
  String get profilePhoto => 'Photo';

  @override
  String get profileName => 'Name';

  @override
  String get profileGender => 'Gender';

  @override
  String get profileGenderMale => 'Male';

  @override
  String get profileGenderFemale => 'Female';

  @override
  String get profilePlaceOfBirth => 'Place of Birth';

  @override
  String get profileBornDate => 'Born Date';

  @override
  String get profileMaritalStatus => 'Marital Status';

  @override
  String get profileMaritalStatusSingle => 'Single';

  @override
  String get profileMaritalStatusMarried => 'Married';

  @override
  String get profileMaritalStatusDivorced => 'Divorced';

  @override
  String get profileMaritalStatusWidowed => 'Widowed';

  @override
  String get profileBloodType => 'Blood Type';

  @override
  String get profileHeight => 'Height';

  @override
  String get profileWeight => 'Weight';

  @override
  String get profileUnitCm => 'cm';

  @override
  String get profileUnitKg => 'kg';

  @override
  String profileHeightWithUnit(String height) {
    return '$height cm';
  }

  @override
  String profileWeightWithUnit(String weight) {
    return '$weight kg';
  }

  @override
  String get profileIdNumber => 'ID Number';

  @override
  String get profileNpwp => 'Taxpayer ID Number (NPWP)';

  @override
  String get profileBpjs => 'Health Insurance Number (BPJS)';

  @override
  String get profileCitizenIdAddress => 'Citizen ID Address';

  @override
  String get profileResidentialAddress => 'Residential Address';

  @override
  String get profileHobby => 'Hobby';

  @override
  String get profileSocialMedia => 'Social Media';

  @override
  String get profileNoSocialMedia => 'No social media accounts linked.';

  @override
  String get profileAddMore => 'Add more';

  @override
  String get profileUpdating => 'Updating...';

  @override
  String get profileUpdateProfile => 'Update Profile';

  @override
  String profileAttachmentUploadFailed(String error) {
    return 'Attachment upload failed: $error';
  }

  @override
  String get profileUpdatedSuccessfully => 'Profile updated successfully!';

  @override
  String get profileSubmissionFailed => 'Submission Failed';

  @override
  String profileUpdateFailed(String error) {
    return 'Update Failed: $error';
  }

  @override
  String get profilePosition => 'Position';

  @override
  String get profileDepartment => 'Department';

  @override
  String get profileJobLevel => 'Job Level';

  @override
  String get profilePrimaryDirectReport => 'Primary Direct Report';

  @override
  String get profileAdditionalDirectReport => 'Additional Direct Report';

  @override
  String get profileTeam => 'Team';

  @override
  String get profileNoTeamAssigned => 'No team assigned';

  @override
  String get profileEmploymentStartDate => 'Employment Start Date';

  @override
  String get profileEmploymentEndDate => 'Employment End Date';

  @override
  String get profileUnknown => 'Unknown';

  @override
  String get attendanceTab => 'Attendance';

  @override
  String get overtimeTab => 'Overtime';

  @override
  String get attendanceClockInLabel => 'Clock-In';

  @override
  String get attendanceClockOutLabel => 'Clock-Out';

  @override
  String get attendanceClockInTitle => 'Clock-In';

  @override
  String get attendanceClockOutTitle => 'Clock-Out';

  @override
  String get attendanceClockInSentence => 'clock in';

  @override
  String get attendanceClockOutSentence => 'clock out';

  @override
  String get attendanceClockInCapitalize => 'Clock In';

  @override
  String get attendanceClockOutCapitalize => 'Clock Out';

  @override
  String get attendanceShift => 'Shift';

  @override
  String get attendanceNotes => 'Notes';

  @override
  String get attendanceLocation => 'Location';

  @override
  String get attendanceDuration => 'Duration';

  @override
  String get attendanceOvertime => 'Overtime';

  @override
  String get attendanceFilterByStatus => 'Filter by Status';

  @override
  String get attendanceStatusAll => 'All';

  @override
  String get attendanceStatusWaiting => 'Waiting';

  @override
  String get attendanceStatusApproved => 'Approved';

  @override
  String get attendanceStatusRejected => 'Rejected';

  @override
  String get attendanceStatLateClockIn => 'Late Clock In';

  @override
  String get attendanceStatEarlyClockOut => 'Early Clock Out';

  @override
  String get attendanceStatAbsent => 'Absent';

  @override
  String get attendanceStatDayOff => 'Day Off';

  @override
  String get attendancePendingRequest => 'Pending Request';

  @override
  String get attendanceApprovedRequest => 'Approved Request';

  @override
  String get attendanceRejectedRequest => 'Rejected Request';

  @override
  String get attendanceOvertimeRequestTitle => 'Overtime Request';

  @override
  String get attendanceOvertimeDuration => 'Overtime Duration';

  @override
  String get attendanceNoDataForPeriod => 'No attendance data for this period.';

  @override
  String get attendanceNoOvertimeDataForPeriod => 'No overtime data for this period.';

  @override
  String get attendanceErrorTryAgainLater => 'Error: Please try again later!';

  @override
  String get attendanceNetworkError => 'A network error occurred.';

  @override
  String attendanceUnexpectedError(String error) {
    return 'An unexpected error occurred: $error';
  }

  @override
  String attendanceTodayWithDay(String day) {
    return 'Today, $day';
  }

  @override
  String attendanceTodayWithDate(String date) {
    return 'Today, $date';
  }

  @override
  String get attendanceToday => 'Today';

  @override
  String get attendanceYesterday => 'Yesterday';

  @override
  String attendanceDaysAgo(int count) {
    return '$count days ago';
  }

  @override
  String get attendanceLocationConfirmed => 'Location Confirmed';

  @override
  String attendanceLocationConfirmedBody(String activity) {
    return 'Please complete face verification to proceed with $activity. This step helps ensure secure and accurate attendance tracking.';
  }

  @override
  String get attendanceStartVerification => 'Start Verification';

  @override
  String get attendanceRegisterYourFace => 'Register Your Face';

  @override
  String attendanceVerificationInProgress(String activity) {
    return '$activity Verification in Progress';
  }

  @override
  String attendanceLocationVerificationBody(String activity) {
    return 'We\'re verifying your current location before completing the $activity process. Please make sure location access is enabled and you\'re within the allowed work area.';
  }

  @override
  String attendanceLocationNotValid(String distance, String maxRadius) {
    return 'Location is not valid. You are ~${distance}m away. Max radius is ${maxRadius}m.';
  }

  @override
  String attendanceCouldNotGetLocation(String error) {
    return 'Error: Could not get location. $error';
  }

  @override
  String get attendancePleaseFillRequiredFields => 'Please fill all required fields.';

  @override
  String get attendanceNoActiveAttendance => 'No active attendance found.';

  @override
  String attendanceSaveActivity(String activity) {
    return 'Save $activity';
  }

  @override
  String get attendanceEditRequest => 'Edit Attendance Request';

  @override
  String get attendanceSubmittedRecord => 'Submitted Record';

  @override
  String get attendanceAdjustment => 'Attendance Adjustment';

  @override
  String get attendanceClockInField => 'Clock In';

  @override
  String get attendanceClockOutField => 'Clock Out';

  @override
  String get attendanceAdjustmentNotes => 'Adjustment Notes';

  @override
  String get attendanceSendAdjustmentRequest => 'Send Adjustment Request';

  @override
  String get attendanceUpdateSuccess => 'Update Success!';

  @override
  String get attendanceUpdateFailed => 'Update Failed!';

  @override
  String attendanceUpdateFailedWithError(String error) {
    return 'Update Failed: $error';
  }

  @override
  String get attendanceFaceRegistration => 'Face Registration';

  @override
  String get attendanceFaceVerification => 'Face Verification';

  @override
  String get attendanceFaceStepFrontInstruction => 'Face the camera directly and make sure your face is clearly visible';

  @override
  String get attendanceFaceStepRightInstruction => 'Slowly turn your head to the right and keep it within the frame';

  @override
  String get attendanceFaceStepLeftInstruction => 'Slowly turn your head to the left and keep it within the frame';

  @override
  String get attendanceFaceStepUploadingInstruction => 'Uploading photo and verifying face...';

  @override
  String get attendanceFaceStepFailedInstruction => 'Face Registration Failed!';

  @override
  String get attendanceFaceStepSuccessInstruction => 'Face Registration Success!';

  @override
  String get attendanceFaceStepTakeFrontPhoto => 'Take Front Photo';

  @override
  String get attendanceFaceStepTakeRightPhoto => 'Take Right Photo';

  @override
  String get attendanceFaceStepTakeLeftPhoto => 'Take Left Photo';

  @override
  String get attendanceFaceStepUploading => 'Uploading...';

  @override
  String get attendanceFaceStepTryAgain => 'Try Again';

  @override
  String get attendanceFaceStepDone => 'Done';

  @override
  String get attendanceVerificationInitialInstruction => 'Face the camera directly and make sure your face is clearly visible';

  @override
  String get attendanceVerificationLoadingInstruction => 'Verifying...';

  @override
  String get attendanceVerificationSuccessInstruction => 'Face Verification Success!';

  @override
  String get attendanceVerificationFailedInstruction => 'Face Verification Failed!';

  @override
  String get attendanceVerificationTakePhoto => 'Take Photo';

  @override
  String get activityLogClockIn => 'Clock In';

  @override
  String get activityLogClockOut => 'Clock Out';

  @override
  String get activityLogOvertimeCreated => 'Overtime Created';

  @override
  String get activityLogOvertimeApproved => 'Overtime Approved';

  @override
  String get activityLogOvertimeRejected => 'Overtime Rejected';

  @override
  String get activityLogOvertimeUpdated => 'Overtime Updated';

  @override
  String get activityLogUnknown => 'Unknown Activity';

  @override
  String get overtimeRequestTitle => 'Overtime Request';

  @override
  String get overtimeRequestDate => 'Request Date';

  @override
  String get overtimeStartTime => 'Start Time';

  @override
  String get overtimeEndTime => 'End Time';

  @override
  String get overtimeNotes => 'Overtime Notes';

  @override
  String get overtimeRequestButton => 'Request Overtime';

  @override
  String get overtimeSubmittedSuccess => 'Overtime request submitted successfully!';

  @override
  String get overtimeEditRequest => 'Edit Overtime Request';

  @override
  String get overtimeAdjustment => 'Overtime Adjustment';

  @override
  String get overtimeAdjustmentNotes => 'Adjustment Notes';

  @override
  String get overtimeSendAdjustmentRequest => 'Send Adjustment Request';

  @override
  String get overtimeAdjustmentSentSuccess => 'Adjustment request sent successfully!';

  @override
  String get overtimeNoAttendanceLog => 'No attendance log for this date.';

  @override
  String get leaveBalance => 'Leave Balance';

  @override
  String get leaveTimeOffUsed => 'Time Off Used';

  @override
  String get leaveTimeOff => 'Time Off';

  @override
  String get leaveDays => 'Days';

  @override
  String get leaveYourRequests => 'Your Leave Request';

  @override
  String get leaveNoHistoryFound => 'No leave history found.';

  @override
  String leaveFailedToLoadHistory(String error) {
    return 'Failed to load history: $error';
  }

  @override
  String get leaveRequestDetail => 'Leave Request Detail';

  @override
  String get leaveRequestDetailSection => 'Request Detail';

  @override
  String get leaveType => 'Leave Type';

  @override
  String get leaveDuration => 'Duration';

  @override
  String get leaveReason => 'Reason';

  @override
  String get leaveAttachment => 'Attachment';

  @override
  String get leaveApproval => 'Approval';

  @override
  String get leaveNoApproversAssigned => 'No approvers assigned.';

  @override
  String leaveDaysCount(int count) {
    return '($count Days)';
  }

  @override
  String get leaveNewRequest => 'New Leave Request';

  @override
  String get leaveStartDate => 'Start Date';

  @override
  String get leaveEndDate => 'End Date';

  @override
  String get leaveSendRequest => 'Send Request';

  @override
  String get leaveSubmitting => 'Submitting...';

  @override
  String get leaveSubmittedSuccess => 'Leave request submitted successfully!';

  @override
  String get leaveSubmittedFailed => 'Leave request submitted failed!';

  @override
  String get leaveFailedToLoadTypes => 'Failed to load leave types';

  @override
  String get leaveCouldNotLoadBalance => 'Could not load leave balance:';

  @override
  String get leaveSubmissionFailedPrefix => 'Submission Failed:';

  @override
  String get leaveTypeAnnualLeave => 'Annual Leave';

  @override
  String get leaveTypeSickLeave => 'Sick Leave';

  @override
  String get leaveTypeMaternityLeave => 'Maternity Leave';

  @override
  String get leaveTypeMenstrualLeave => 'Menstrual Leave';

  @override
  String get leaveTypeMarriageLeave => 'Marriage Leave';

  @override
  String get leaveTypeChildsMarriageLeave => 'Child\'s Marriage Leave';

  @override
  String get leaveTypePaternityLeave => 'Paternity Leave';

  @override
  String get leaveTypeBereavementLeave => 'Bereavement Leave';

  @override
  String get leaveTypeNaturalDisasterLeave => 'Natural Disaster Leave';

  @override
  String get leaveTypeUnpaidLeave => 'Unpaid Leave';

  @override
  String get leaveTypeExtendedLeave => 'Extended Leave';

  @override
  String get leaveTypeStudyLeave => 'Study Leave';

  @override
  String get leaveTypeReligiousLeave => 'Religious Leave';

  @override
  String get leaveTypeUnknown => 'Unknown';

  @override
  String get offboardingProcess => 'Offboarding Process';

  @override
  String get offboardingCompleteTasksTitle => 'Complete Your Offboarding Tasks';

  @override
  String get offboardingCompleteTasksSubtitle => 'Complete your offboarding tasks to ensure a smooth exit';

  @override
  String offboardingError(String error) {
    return 'Error: $error';
  }

  @override
  String get offboardingStart => 'Start';

  @override
  String get offboardingEdit => 'Edit';

  @override
  String get offboardingExitInterviewSchedule => 'Exit Interview Schedule';

  @override
  String get offboardingExitInterviewForm => 'Exit Interview Form';

  @override
  String get offboardingWorkHandover => 'Work & Responsibilities Handover';

  @override
  String get offboardingDocumentHandover => 'Document Handover';

  @override
  String get offboardingResponsibilityHandover => 'Responsibility Handover';

  @override
  String get offboardingDate => 'Date';

  @override
  String get offboardingTime => 'Time';

  @override
  String get offboardingInterviewer => 'Interviewer';

  @override
  String get offboardingHandoverSubmitted => 'Handover submitted successfully!';

  @override
  String get offboardingFillWorksFields => 'Please fill in all \"Works\" fields.';

  @override
  String get offboardingFillDocumentNameFields => 'Please fill in all \"Document Name\" fields.';

  @override
  String get offboardingSelectRecipient => 'Please select at least one recipient for all items.';

  @override
  String get offboardingIdNotFound => 'Could not find offboarding ID. Please try again.';

  @override
  String offboardingErrorLoadingData(String error) {
    return 'Error loading data: $error';
  }

  @override
  String get offboardingFailedToLoadData => 'Failed to load data';

  @override
  String get offboardingAdd => 'Add';

  @override
  String get offboardingSubmitting => 'Submitting...';

  @override
  String get offboardingSubmit => 'Submit';

  @override
  String get offboardingWorks => 'Works';

  @override
  String get offboardingDocumentName => 'Document Name';

  @override
  String get offboardingHandedOverTo => 'Handed Over To';

  @override
  String get offboardingEmployees => 'Employees';

  @override
  String get offboardingSearchEmployee => 'Search Employee';

  @override
  String get offboardingDone => 'Done';

  @override
  String get offboardingWork => 'Work';

  @override
  String get offboardingValidating => 'Validating...';

  @override
  String get offboardingValidateNow => 'Validate Now';

  @override
  String get offboardingWorkValidated => 'Work validated successfully!';

  @override
  String get offboardingHandoverValidated => 'Handover validated successfully!';

  @override
  String get offboardingNoItemsFound => 'No items found';

  @override
  String get offboardingNoDocumentsFound => 'No documents found';

  @override
  String get offboardingFormSubmitted => 'Form Submitted Successfully!';

  @override
  String get offboardingSubmissionFailed => 'Submission Failed';

  @override
  String get offboardingSubmitForm => 'Submit Form';

  @override
  String get offboardingNotes => 'Notes';

  @override
  String get offboardingSelectOption => 'Select an option';

  @override
  String offboardingUnknownFieldType(String type) {
    return 'Unknown field type: $type';
  }

  @override
  String get offboardingConfirmSubmit => 'Are you sure you want to submit this exit interview form?';

  @override
  String get offboardingConfirmNoChanges => 'Once submitted, you won\'t be able to make any changes.';

  @override
  String get offboardingCancel => 'Cancel';

  @override
  String get performanceTitle => 'Performance';

  @override
  String get performanceMyOkr => 'My OKR';

  @override
  String get performanceSupervisorAssessment => 'Supervisor Assessment';

  @override
  String get performanceSelfAssessment => 'Self Assessment';

  @override
  String get performanceDueDate => 'Due Date ';

  @override
  String get performanceNotAvailable => 'N/A';

  @override
  String performanceErrorLoadingSelfAssessments(String error) {
    return 'Error loading Self Assessments: $error';
  }

  @override
  String performanceErrorLoadingOkr(String error) {
    return 'Error loading OKR: $error';
  }

  @override
  String get performanceLoadingSupervisorAssessments => 'Loading supervisor assessments...';

  @override
  String performanceErrorLoadingSupervisorAssessments(String error) {
    return 'Error loading supervisor assessments: $error';
  }

  @override
  String get performanceSupervisorDataNotAvailable => 'Supervisor assessments data not available.';

  @override
  String performanceSelfAssessmentWithPeriod(String period) {
    return 'Self Assessment - $period';
  }

  @override
  String performanceMyOkrWithPeriod(String period) {
    return 'My OKR - $period';
  }

  @override
  String get performanceOkrTab => 'OKR';

  @override
  String get performanceDashboardTab => 'Dashboard';

  @override
  String get performanceObjective => 'OBJECTIVE';

  @override
  String get performanceKeyResult => 'KEY RESULT';

  @override
  String get performanceNoObjectivesFound => 'No objectives found';

  @override
  String get performanceNoGraphData => 'No graph data available';

  @override
  String get performanceNoTitle => 'No Title';

  @override
  String get performanceObjectiveFallback => 'Objective';

  @override
  String get performanceMetricFallback => 'Metric';

  @override
  String get performanceSelectRange => 'Select Range';

  @override
  String performanceErrorLoadingGraph(String error) {
    return 'Error loading graph: $error';
  }

  @override
  String get performanceAvgActual => 'Avg. Actual';

  @override
  String get performanceAvgTarget => 'Avg. Target';

  @override
  String get performanceApplyFilter => 'Apply Filter';

  @override
  String get performanceStartDate => 'Start Date';

  @override
  String get performanceEndDate => 'End Date';

  @override
  String get performanceTo => 'TO';

  @override
  String get performanceWeek => 'Week';

  @override
  String get performanceMonth => 'Month';

  @override
  String get performanceQuarter => 'Quarter';

  @override
  String get performanceYear => 'Year';

  @override
  String performanceWeekLabel(int number) {
    return 'Week $number';
  }

  @override
  String get performanceYearRequired => 'Year*';

  @override
  String get performanceKeyResultData => 'Key Result Data';

  @override
  String get performanceFillRequiredFields => 'Please fill all required fields correctly.';

  @override
  String get performanceProgressSaved => 'Progress saved successfully!';

  @override
  String get performanceNetworkError => 'A network error occurred.';

  @override
  String performanceUnexpectedError(String error) {
    return 'An unexpected error occurred: $error';
  }

  @override
  String get performanceRequired => 'Required';

  @override
  String get performanceTargetForPeriod => 'Target for this period';

  @override
  String get performanceSaving => 'Saving...';

  @override
  String get performanceSave => 'Save';

  @override
  String performanceError(String error) {
    return 'Error: $error';
  }

  @override
  String get performanceTeamMemberInformation => 'Team Member Information';

  @override
  String get performanceEmployeeName => 'Employee Name';

  @override
  String get performancePosition => 'Position';

  @override
  String get performanceJobLevel => 'Job Level';

  @override
  String get performanceDepartment => 'Department';

  @override
  String get performanceSubmittedOn => 'Submitted on';

  @override
  String get performanceValidatedOn => 'Validated on';

  @override
  String get performanceEmployeeInformation => 'Employee Information';

  @override
  String get performanceCurrentPosition => 'Current Position';

  @override
  String get performanceCurrentJobLevel => 'Current Job Level';

  @override
  String get performanceTargetPosition => 'Target Position';

  @override
  String get performanceTargetJobLevel => 'Target Job Level';

  @override
  String get performanceEmployeeStartDate => 'Employee Start Date';

  @override
  String get performanceAssessmentSchedule => 'Assessment Schedule';

  @override
  String get performanceDate => 'Date';

  @override
  String get performanceTime => 'Time';

  @override
  String get performanceNotes => 'Notes';

  @override
  String get performanceAssessmentForm => 'Assessment Form';

  @override
  String get performanceSupervisorAssessmentSchedule => 'Supervisor Assessment Schedule';

  @override
  String get performanceSupervisorAssessmentList => 'Supervisor Assessment List';

  @override
  String performanceErrorLoadingAssessments(String error) {
    return 'Error loading assessments: $error\nPull down to retry.';
  }

  @override
  String get performanceNoSupervisorAssessments => 'No supervisor assessments found.';

  @override
  String performanceErrorLoadingDetails(String error) {
    return 'Error loading details: $error';
  }

  @override
  String get performanceFormSubmitted => 'Form Submitted Successfully!';

  @override
  String performanceSubmissionFailed(String error) {
    return 'Submission Failed: $error';
  }

  @override
  String get performanceAssessmentReadOnly => 'This assessment is read-only.';

  @override
  String get performanceSubmitSelfAssessment => 'Submit Self Assessment';

  @override
  String get performanceSaveAsDraft => 'Save as Draft';

  @override
  String get performanceConfirmSubmitSelfAssessment => 'Are you sure you want to submit this self assessment form?';

  @override
  String get performanceConfirmNoChanges => 'Once submitted, you won\'t be able to make any changes.';

  @override
  String get performanceCancel => 'Cancel';

  @override
  String get performanceSubmitForm => 'Submit Form';

  @override
  String performanceUnknownType(String type) {
    return 'Unknown type: $type';
  }

  @override
  String get performanceEmployeeSubmittedReadOnly => 'This is the employee\'s submitted assessment (Read-Only).';

  @override
  String get performanceAddComments => 'Add your comments here...';

  @override
  String get performanceEnterComment => 'Enter comment...';

  @override
  String get performanceValidationSuccessful => 'Validation Successful';

  @override
  String performanceFailed(String error) {
    return 'Failed: $error';
  }

  @override
  String get performanceValidationCompleteReadOnly => 'Validation complete and read-only.';

  @override
  String get performanceValidateSelfAssessment => 'Validate Self Assessment';

  @override
  String get performanceMySelfAssessment => 'My Self Assessment';

  @override
  String get performanceTeamMemberSelfAssessment => 'Team Member Self Assessment';

  @override
  String get performanceAssessmentValidationTab => 'Assessment Validation';

  @override
  String get performanceSupervisorSubmitted => 'Supervisor Assessment Submitted Successfully!';

  @override
  String get performanceAssessmentReadOnlyShort => 'Assessment is read-only.';

  @override
  String get performanceSaveDraft => 'Save Draft';

  @override
  String get performanceSubmit => 'Submit';

  @override
  String get performanceConfirmSubmitSupervisor => 'Are you sure you want to submit this supervisor assessment form?';

  @override
  String get performanceConfirmSaveDraft => 'Are you sure you want to save this draft?';

  @override
  String get performanceCanEditDraftLater => 'You can continue editing the draft later.';

  @override
  String get inboxTitle => 'Inbox';

  @override
  String get inboxEmpty => 'No notifications in your inbox.';

  @override
  String get inboxError => 'Something went wrong';

  @override
  String get inboxNoTitle => 'No Title';

  @override
  String get inboxNoContent => 'No content available';

  @override
  String get inboxNotAvailable => 'N/A';

  @override
  String get payslipMyPayslip => 'My Payslip';

  @override
  String get payslipPeriodFallback => 'Payslip Period';

  @override
  String get payslipViewPayslip => 'View Payslip';

  @override
  String get payslipRequestAccess => 'Request Access';

  @override
  String get payslipPrintRequest => 'Print Request';

  @override
  String payslipLastMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Months',
      one: '1 Month',
    );
    return 'Last $_temp0';
  }

  @override
  String payslipListError(String error) {
    return 'Error: $error';
  }

  @override
  String get payslipNotAvailable => 'N/A';

  @override
  String payslipTitleWithPeriod(String period) {
    return 'Payslip $period';
  }

  @override
  String get payslipLoading => 'Loading';

  @override
  String payslipDetailLoadFailed(String error) {
    return 'Failed to load payslip detail: $error';
  }

  @override
  String get payslipEnterPassword => 'Please enter your password.';

  @override
  String get payslipIdMissing => 'Error: Payslip ID is missing.';

  @override
  String payslipAccessFailed(String error) {
    return 'Access Failed: $error';
  }

  @override
  String get payslipEnterPasswordToContinue => 'Enter Your Password to Continue';

  @override
  String get payslipPasswordSecurityMessage => 'For security reasons, please enter your account password to access your selected payslip.';

  @override
  String get payslipAccessPayslip => 'Access Payslip';

  @override
  String get payslipFallbackLabel => 'Payslip';

  @override
  String get payslipPrintPayslipRequest => 'Print Payslip Request';

  @override
  String get payslipSendPrintRequest => 'Send Print Request';

  @override
  String get payslipPrintRequestSubmitted => 'Payslip Print Request Submitted';

  @override
  String get payslipPrintRequestSubmittedBody => 'We\'ve received your request to print the payslip. Please wait while we process it, you\'ll be informed when it\'s ready to pick up.';

  @override
  String get payslipPayrollDetails => 'Payroll Details';

  @override
  String get payslipConfidential => '*CONFIDENTIAL';

  @override
  String get payslipPayrollPeriod => 'Payroll Period';

  @override
  String get payslipEmployeeId => 'Employee ID';

  @override
  String get payslipJobLevel => 'Job Level';

  @override
  String get payslipTaxpayerId => 'Taxpayer ID Number (NPWP)';

  @override
  String get payslipEmployeeName => 'Employee Name';

  @override
  String get payslipPosition => 'Position';

  @override
  String get payslipDepartment => 'Department';

  @override
  String get payslipBasicSalary => 'Basic Salary';

  @override
  String get payslipOvertime => 'Overtime';

  @override
  String get payslipEarnings => 'Earnings';

  @override
  String get payslipDeductions => 'Deductions';

  @override
  String get payslipTakeHomePay => 'Take Home Pay';

  @override
  String get payslipNotes => 'Notes';

  @override
  String get payslipNotesDisclaimer => 'THIS IS COMPUTER GENERATED PRINTOUT AND NO SIGNATURE IS REQUIRED\n\nPLEASE NOTE THAT THE CONTENTS OF THIS STATEMENT SHOULD BE TREATED WITH ABSOLUTE CONFIDENTIALITY EXCEPT TO THE EXTENT YOU ARE REQUIRED TO MAKE DISCLOSURE FOR ANY TAX, LEGAL, OR REGULATORY PURPOSES. ANY BREACH OF THIS CONFIDENTIALITY OBLIGATION WILL BE DEALT WITH SERIOUSLY, WHICH MAY INVOLVE DISCIPLINARY ACTION BEING TAKEN.';

  @override
  String get payslipBenefits => 'Benefits';

  @override
  String get payslipBenefitsDescription => 'These are the benefits you\'ll get from the company, but not included in your take-home pay (THP).';

  @override
  String get payslipBenefitWorkAccident => 'Work Accident Insurance';

  @override
  String get payslipBenefitDeath => 'Death Insurance';

  @override
  String get payslipBenefitOldAge => 'Old Age Insurance';

  @override
  String get payslipBenefitPension => 'Pension Insurance';

  @override
  String get payslipBenefitHealth => 'BPJS Health';

  @override
  String get payslipTotalBenefits => 'Total Benefits';

  @override
  String get payslipStatusLocked => 'Locked';

  @override
  String get payslipStatusRequestSent => 'Request has been sent';

  @override
  String payslipStatusDaysLeft(int days) {
    return '$days Days Left';
  }

  @override
  String get payslipStatusUnknown => 'Unknown';

  @override
  String get payslipPrintStatusProcessed => 'Processed';

  @override
  String get payslipPrintStatusPending => 'Pending';

  @override
  String get payslipPrintStatusReady => 'Ready';

  @override
  String get coreSelect => 'Select';

  @override
  String get coreSelectOption => 'Select an option';

  @override
  String get coreSelectItems => 'Select Items';

  @override
  String get coreSearch => 'Search...';

  @override
  String get coreDone => 'Done';

  @override
  String get coreConfirmOk => 'OK';

  @override
  String get coreSelectImage => 'Select Image';

  @override
  String get coreUploadFile => 'Upload File';

  @override
  String get coreAttachments => 'Attachments';

  @override
  String get coreSocialMedia => 'Social Media';

  @override
  String get coreSocialMediaHint => 'Type';

  @override
  String get coreCountries => 'Countries';

  @override
  String get coreCountryCode => 'Code';

  @override
  String coreUnknownFieldType(String type) {
    return 'Unknown field type: $type';
  }

  @override
  String get coreNotAvailable => '-';

  @override
  String coreErrorWithDetail(String error) {
    return 'Error: $error';
  }

  @override
  String get coreUpdatedJustNow => 'Updated just now';

  @override
  String coreUpdatedDaysAgo(int days) {
    return 'updated ${days}d ago';
  }

  @override
  String coreUpdatedHoursAgo(int hours) {
    return 'updated ${hours}h ago';
  }

  @override
  String coreUpdatedMinutesAgo(int minutes) {
    return 'updated ${minutes}m ago';
  }

  @override
  String get attendanceLocationServicesDisabled => 'Location services are disabled.';

  @override
  String get attendanceLocationPermissionDenied => 'Location permissions are denied.';

  @override
  String get attendanceLocationPermissionDeniedForever => 'Location permissions are permanently denied. We cannot request permissions.';

  @override
  String get attendanceManualCaptureBypass => 'Manual capture (location bypass)';

  @override
  String get businessTripTitle => 'Business Trip';

  @override
  String get businessTripNewRequest => 'New Business Trip Request';

  @override
  String get businessTripYourTrips => 'Your Business Trips';

  @override
  String get businessTripNoTripsFound => 'No business trips found.';

  @override
  String businessTripFailedLoadData(String error) {
    return 'Failed to load data: $error';
  }

  @override
  String get businessTripDetailTitle => 'Business Trip Detail';

  @override
  String get businessTripDestination => 'Destination';

  @override
  String get businessTripReason => 'Reason';

  @override
  String get businessTripNotes => 'Notes';

  @override
  String get businessTripDuration => 'Duration';

  @override
  String businessTripDays(int days) {
    return '($days Days)';
  }

  @override
  String get businessTripApprover => 'Approver';

  @override
  String get businessTripCancelRequest => 'Cancel Request';

  @override
  String get businessTripCancelConfirmTitle => 'Cancel Request';

  @override
  String get businessTripCancelConfirmBody => 'Are you sure you want to cancel this request?';

  @override
  String get businessTripCancelNo => 'No';

  @override
  String get businessTripCancelYes => 'Yes';

  @override
  String get businessTripCancelSuccess => 'Request cancelled successfully';

  @override
  String get businessTripCancelFailed => 'Failed to cancel request';

  @override
  String get businessTripFormTitle => 'New Business Trip';

  @override
  String get businessTripStartDate => 'Start Date';

  @override
  String get businessTripEndDate => 'End Date';

  @override
  String get businessTripFillAllFields => 'Please fill all fields.';

  @override
  String get businessTripSubmitSuccess => 'Business trip requested successfully!';

  @override
  String get businessTripSubmitFailed => 'Submission failed!';

  @override
  String get businessTripSendRequest => 'Send Request';

  @override
  String get businessTripSubmitting => 'Submitting...';
}
