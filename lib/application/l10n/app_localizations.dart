import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @formEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get formEmail;

  /// No description provided for @formHintEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get formHintEmail;

  /// No description provided for @formPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get formPassword;

  /// No description provided for @formHintPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get formHintPassword;

  /// No description provided for @formPasswordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Password Confirmation'**
  String get formPasswordConfirmation;

  /// Error message shown on login failure.
  ///
  /// In en, this message translates to:
  /// **'Login failed: {error}'**
  String loginFailed(String error);

  /// No description provided for @resetPasswordEmail_title.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordEmail_title;

  /// No description provided for @resetPasswordEmail_body.
  ///
  /// In en, this message translates to:
  /// **'Enter your registered email to reset your password'**
  String get resetPasswordEmail_body;

  /// No description provided for @resetPasswordEmail_linkSentSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Reset link sent! Check your email.'**
  String get resetPasswordEmail_linkSentSnackbar;

  /// No description provided for @resetPasswordCheckEmail_title.
  ///
  /// In en, this message translates to:
  /// **'Please Check Your Email'**
  String get resetPasswordCheckEmail_title;

  /// No description provided for @resetPasswordCheckEmail_body.
  ///
  /// In en, this message translates to:
  /// **'A reset password link has been sent to your registered email.'**
  String get resetPasswordCheckEmail_body;

  /// No description provided for @resetPasswordCheckEmail_didNotReceive.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive an email? '**
  String get resetPasswordCheckEmail_didNotReceive;

  /// No description provided for @resetPasswordCheckEmail_resend.
  ///
  /// In en, this message translates to:
  /// **'Resend Email'**
  String get resetPasswordCheckEmail_resend;

  /// No description provided for @resetPasswordCheckEmail_resendingSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Resending reset link...'**
  String get resetPasswordCheckEmail_resendingSnackbar;

  /// No description provided for @resetPasswordCreate_title.
  ///
  /// In en, this message translates to:
  /// **'Create a New Password'**
  String get resetPasswordCreate_title;

  /// No description provided for @resetPasswordCreate_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create a new password for your account'**
  String get resetPasswordCreate_subtitle;

  /// No description provided for @resetPasswordSuccess_title.
  ///
  /// In en, this message translates to:
  /// **'Password Reset Successful'**
  String get resetPasswordSuccess_title;

  /// No description provided for @resetPasswordSuccess_body.
  ///
  /// In en, this message translates to:
  /// **'Please sign in using your new password.'**
  String get resetPasswordSuccess_body;

  /// No description provided for @errorUnknown.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred'**
  String get errorUnknown;

  /// No description provided for @formValidationRequired.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} is required'**
  String formValidationRequired(String fieldName);

  /// No description provided for @formValidationMinLength.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} must be at least {minLength} characters long'**
  String formValidationMinLength(String fieldName, int minLength);

  /// No description provided for @formValidationMaxLength.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} cannot be longer than {maxLength} characters'**
  String formValidationMaxLength(String fieldName, int maxLength);

  /// No description provided for @formValidationEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get formValidationEmailInvalid;

  /// No description provided for @formValidationOnlyAlphanumeric.
  ///
  /// In en, this message translates to:
  /// **'Only letters and numbers are allowed'**
  String get formValidationOnlyAlphanumeric;

  /// No description provided for @formValidationPasswordInvalid.
  ///
  /// In en, this message translates to:
  /// **'The password you entered is incorrect'**
  String get formValidationPasswordInvalid;

  /// No description provided for @formValidationPasswordCriteriaInvalid.
  ///
  /// In en, this message translates to:
  /// **'Password does not meet the required criteria'**
  String get formValidationPasswordCriteriaInvalid;

  /// No description provided for @formPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get formPhone;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navPerformance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get navPerformance;

  /// No description provided for @navLeaveRequest.
  ///
  /// In en, this message translates to:
  /// **'Leave Request'**
  String get navLeaveRequest;

  /// No description provided for @navInbox.
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get navInbox;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @profileMyProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get profileMyProfile;

  /// No description provided for @profileAttendanceAndOvertime.
  ///
  /// In en, this message translates to:
  /// **'Attendance and Overtime'**
  String get profileAttendanceAndOvertime;

  /// No description provided for @profileMyPayslip.
  ///
  /// In en, this message translates to:
  /// **'My Payslip'**
  String get profileMyPayslip;

  /// No description provided for @profileChangeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get profileChangeLanguage;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageIndonesian.
  ///
  /// In en, this message translates to:
  /// **'Bahasa Indonesia'**
  String get languageIndonesian;

  /// No description provided for @dashboardClockIn.
  ///
  /// In en, this message translates to:
  /// **'Clock In'**
  String get dashboardClockIn;

  /// No description provided for @dashboardClockOut.
  ///
  /// In en, this message translates to:
  /// **'Clock Out'**
  String get dashboardClockOut;

  /// No description provided for @dashboardWorkingTimeDuration.
  ///
  /// In en, this message translates to:
  /// **'Working Time Duration'**
  String get dashboardWorkingTimeDuration;

  /// No description provided for @dashboardOvertimeDuration.
  ///
  /// In en, this message translates to:
  /// **'Overtime Duration'**
  String get dashboardOvertimeDuration;

  /// No description provided for @dashboardOvertimeRequest.
  ///
  /// In en, this message translates to:
  /// **'Overtime Request'**
  String get dashboardOvertimeRequest;

  /// No description provided for @dashboardNewLeaveRequest.
  ///
  /// In en, this message translates to:
  /// **'New Leave Request'**
  String get dashboardNewLeaveRequest;

  /// No description provided for @dashboardOffboardingStatusError.
  ///
  /// In en, this message translates to:
  /// **'Error fetching offboarding status {error}'**
  String dashboardOffboardingStatusError(String error);

  /// No description provided for @dashboardRecentActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get dashboardRecentActivity;

  /// No description provided for @dashboardCouldNotLoadActivities.
  ///
  /// In en, this message translates to:
  /// **'Could not load activities'**
  String get dashboardCouldNotLoadActivities;

  /// No description provided for @dashboardNoRecentActivity.
  ///
  /// In en, this message translates to:
  /// **'No recent activity.'**
  String get dashboardNoRecentActivity;

  /// No description provided for @dashboardOffboardingTitle.
  ///
  /// In en, this message translates to:
  /// **'🔔 Complete Your Offboarding Journey!'**
  String get dashboardOffboardingTitle;

  /// No description provided for @dashboardOffboardingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s wrap things up smoothly before you leave'**
  String get dashboardOffboardingSubtitle;

  /// No description provided for @dashboardOffboardingStartButton.
  ///
  /// In en, this message translates to:
  /// **'Start Offboarding Process'**
  String get dashboardOffboardingStartButton;

  /// No description provided for @splashError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String splashError(String error);

  /// No description provided for @profileLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get profileLogOut;

  /// No description provided for @profileEmployeeId.
  ///
  /// In en, this message translates to:
  /// **'Employee ID: {employeeId}'**
  String profileEmployeeId(String employeeId);

  /// No description provided for @profileStatDays.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get profileStatDays;

  /// No description provided for @profileStatHours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get profileStatHours;

  /// No description provided for @profileStatAttendance.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get profileStatAttendance;

  /// No description provided for @profileStatTimeOff.
  ///
  /// In en, this message translates to:
  /// **'Time Off'**
  String get profileStatTimeOff;

  /// No description provided for @profileStatOvertime.
  ///
  /// In en, this message translates to:
  /// **'Overtime'**
  String get profileStatOvertime;

  /// No description provided for @profileErrorLoadingStats.
  ///
  /// In en, this message translates to:
  /// **'Error loading stats'**
  String get profileErrorLoadingStats;

  /// No description provided for @profileFailedToLoad.
  ///
  /// In en, this message translates to:
  /// **'Failed to load profile: {error}'**
  String profileFailedToLoad(String error);

  /// No description provided for @profilePersonalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get profilePersonalInformation;

  /// No description provided for @profileEmployeeInformation.
  ///
  /// In en, this message translates to:
  /// **'Employee Information'**
  String get profileEmployeeInformation;

  /// No description provided for @profileEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileEditProfile;

  /// No description provided for @profilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get profilePhoto;

  /// No description provided for @profileName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profileName;

  /// No description provided for @profileGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get profileGender;

  /// No description provided for @profileGenderMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get profileGenderMale;

  /// No description provided for @profileGenderFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get profileGenderFemale;

  /// No description provided for @profilePlaceOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Place of Birth'**
  String get profilePlaceOfBirth;

  /// No description provided for @profileBornDate.
  ///
  /// In en, this message translates to:
  /// **'Born Date'**
  String get profileBornDate;

  /// No description provided for @profileMaritalStatus.
  ///
  /// In en, this message translates to:
  /// **'Marital Status'**
  String get profileMaritalStatus;

  /// No description provided for @profileMaritalStatusSingle.
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get profileMaritalStatusSingle;

  /// No description provided for @profileMaritalStatusMarried.
  ///
  /// In en, this message translates to:
  /// **'Married'**
  String get profileMaritalStatusMarried;

  /// No description provided for @profileMaritalStatusDivorced.
  ///
  /// In en, this message translates to:
  /// **'Divorced'**
  String get profileMaritalStatusDivorced;

  /// No description provided for @profileMaritalStatusWidowed.
  ///
  /// In en, this message translates to:
  /// **'Widowed'**
  String get profileMaritalStatusWidowed;

  /// No description provided for @profileBloodType.
  ///
  /// In en, this message translates to:
  /// **'Blood Type'**
  String get profileBloodType;

  /// No description provided for @profileHeight.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get profileHeight;

  /// No description provided for @profileWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get profileWeight;

  /// No description provided for @profileUnitCm.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get profileUnitCm;

  /// No description provided for @profileUnitKg.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get profileUnitKg;

  /// No description provided for @profileHeightWithUnit.
  ///
  /// In en, this message translates to:
  /// **'{height} cm'**
  String profileHeightWithUnit(String height);

  /// No description provided for @profileWeightWithUnit.
  ///
  /// In en, this message translates to:
  /// **'{weight} kg'**
  String profileWeightWithUnit(String weight);

  /// No description provided for @profileIdNumber.
  ///
  /// In en, this message translates to:
  /// **'ID Number'**
  String get profileIdNumber;

  /// No description provided for @profileNpwp.
  ///
  /// In en, this message translates to:
  /// **'Taxpayer ID Number (NPWP)'**
  String get profileNpwp;

  /// No description provided for @profileBpjs.
  ///
  /// In en, this message translates to:
  /// **'Health Insurance Number (BPJS)'**
  String get profileBpjs;

  /// No description provided for @profileCitizenIdAddress.
  ///
  /// In en, this message translates to:
  /// **'Citizen ID Address'**
  String get profileCitizenIdAddress;

  /// No description provided for @profileResidentialAddress.
  ///
  /// In en, this message translates to:
  /// **'Residential Address'**
  String get profileResidentialAddress;

  /// No description provided for @profileHobby.
  ///
  /// In en, this message translates to:
  /// **'Hobby'**
  String get profileHobby;

  /// No description provided for @profileSocialMedia.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get profileSocialMedia;

  /// No description provided for @profileNoSocialMedia.
  ///
  /// In en, this message translates to:
  /// **'No social media accounts linked.'**
  String get profileNoSocialMedia;

  /// No description provided for @profileAddMore.
  ///
  /// In en, this message translates to:
  /// **'Add more'**
  String get profileAddMore;

  /// No description provided for @profileUpdating.
  ///
  /// In en, this message translates to:
  /// **'Updating...'**
  String get profileUpdating;

  /// No description provided for @profileUpdateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get profileUpdateProfile;

  /// No description provided for @profileAttachmentUploadFailed.
  ///
  /// In en, this message translates to:
  /// **'Attachment upload failed: {error}'**
  String profileAttachmentUploadFailed(String error);

  /// No description provided for @profileUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully!'**
  String get profileUpdatedSuccessfully;

  /// No description provided for @profileSubmissionFailed.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed'**
  String get profileSubmissionFailed;

  /// No description provided for @profileUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update Failed: {error}'**
  String profileUpdateFailed(String error);

  /// No description provided for @profilePosition.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get profilePosition;

  /// No description provided for @profileDepartment.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get profileDepartment;

  /// No description provided for @profileJobLevel.
  ///
  /// In en, this message translates to:
  /// **'Job Level'**
  String get profileJobLevel;

  /// No description provided for @profilePrimaryDirectReport.
  ///
  /// In en, this message translates to:
  /// **'Primary Direct Report'**
  String get profilePrimaryDirectReport;

  /// No description provided for @profileAdditionalDirectReport.
  ///
  /// In en, this message translates to:
  /// **'Additional Direct Report'**
  String get profileAdditionalDirectReport;

  /// No description provided for @profileTeam.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get profileTeam;

  /// No description provided for @profileNoTeamAssigned.
  ///
  /// In en, this message translates to:
  /// **'No team assigned'**
  String get profileNoTeamAssigned;

  /// No description provided for @profileEmploymentStartDate.
  ///
  /// In en, this message translates to:
  /// **'Employment Start Date'**
  String get profileEmploymentStartDate;

  /// No description provided for @profileEmploymentEndDate.
  ///
  /// In en, this message translates to:
  /// **'Employment End Date'**
  String get profileEmploymentEndDate;

  /// No description provided for @profileUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get profileUnknown;

  /// No description provided for @attendanceTab.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get attendanceTab;

  /// No description provided for @overtimeTab.
  ///
  /// In en, this message translates to:
  /// **'Overtime'**
  String get overtimeTab;

  /// No description provided for @attendanceClockInLabel.
  ///
  /// In en, this message translates to:
  /// **'Clock-In'**
  String get attendanceClockInLabel;

  /// No description provided for @attendanceClockOutLabel.
  ///
  /// In en, this message translates to:
  /// **'Clock-Out'**
  String get attendanceClockOutLabel;

  /// No description provided for @attendanceClockInTitle.
  ///
  /// In en, this message translates to:
  /// **'Clock-In'**
  String get attendanceClockInTitle;

  /// No description provided for @attendanceClockOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Clock-Out'**
  String get attendanceClockOutTitle;

  /// No description provided for @attendanceClockInSentence.
  ///
  /// In en, this message translates to:
  /// **'clock in'**
  String get attendanceClockInSentence;

  /// No description provided for @attendanceClockOutSentence.
  ///
  /// In en, this message translates to:
  /// **'clock out'**
  String get attendanceClockOutSentence;

  /// No description provided for @attendanceClockInCapitalize.
  ///
  /// In en, this message translates to:
  /// **'Clock In'**
  String get attendanceClockInCapitalize;

  /// No description provided for @attendanceClockOutCapitalize.
  ///
  /// In en, this message translates to:
  /// **'Clock Out'**
  String get attendanceClockOutCapitalize;

  /// No description provided for @attendanceShift.
  ///
  /// In en, this message translates to:
  /// **'Shift'**
  String get attendanceShift;

  /// No description provided for @attendanceNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get attendanceNotes;

  /// No description provided for @attendanceLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get attendanceLocation;

  /// No description provided for @attendanceDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get attendanceDuration;

  /// No description provided for @attendanceOvertime.
  ///
  /// In en, this message translates to:
  /// **'Overtime'**
  String get attendanceOvertime;

  /// No description provided for @attendanceFilterByStatus.
  ///
  /// In en, this message translates to:
  /// **'Filter by Status'**
  String get attendanceFilterByStatus;

  /// No description provided for @attendanceStatusAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get attendanceStatusAll;

  /// No description provided for @attendanceStatusWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get attendanceStatusWaiting;

  /// No description provided for @attendanceStatusApproved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get attendanceStatusApproved;

  /// No description provided for @attendanceStatusRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get attendanceStatusRejected;

  /// No description provided for @attendanceStatLateClockIn.
  ///
  /// In en, this message translates to:
  /// **'Late Clock In'**
  String get attendanceStatLateClockIn;

  /// No description provided for @attendanceStatEarlyClockOut.
  ///
  /// In en, this message translates to:
  /// **'Early Clock Out'**
  String get attendanceStatEarlyClockOut;

  /// No description provided for @attendanceStatAbsent.
  ///
  /// In en, this message translates to:
  /// **'Absent'**
  String get attendanceStatAbsent;

  /// No description provided for @attendanceStatDayOff.
  ///
  /// In en, this message translates to:
  /// **'Day Off'**
  String get attendanceStatDayOff;

  /// No description provided for @attendancePendingRequest.
  ///
  /// In en, this message translates to:
  /// **'Pending Request'**
  String get attendancePendingRequest;

  /// No description provided for @attendanceApprovedRequest.
  ///
  /// In en, this message translates to:
  /// **'Approved Request'**
  String get attendanceApprovedRequest;

  /// No description provided for @attendanceRejectedRequest.
  ///
  /// In en, this message translates to:
  /// **'Rejected Request'**
  String get attendanceRejectedRequest;

  /// No description provided for @attendanceOvertimeRequestTitle.
  ///
  /// In en, this message translates to:
  /// **'Overtime Request'**
  String get attendanceOvertimeRequestTitle;

  /// No description provided for @attendanceOvertimeDuration.
  ///
  /// In en, this message translates to:
  /// **'Overtime Duration'**
  String get attendanceOvertimeDuration;

  /// No description provided for @attendanceNoDataForPeriod.
  ///
  /// In en, this message translates to:
  /// **'No attendance data for this period.'**
  String get attendanceNoDataForPeriod;

  /// No description provided for @attendanceNoOvertimeDataForPeriod.
  ///
  /// In en, this message translates to:
  /// **'No overtime data for this period.'**
  String get attendanceNoOvertimeDataForPeriod;

  /// No description provided for @attendanceErrorTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Error: Please try again later!'**
  String get attendanceErrorTryAgainLater;

  /// No description provided for @attendanceNetworkError.
  ///
  /// In en, this message translates to:
  /// **'A network error occurred.'**
  String get attendanceNetworkError;

  /// No description provided for @attendanceUnexpectedError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred: {error}'**
  String attendanceUnexpectedError(String error);

  /// No description provided for @attendanceTodayWithDay.
  ///
  /// In en, this message translates to:
  /// **'Today, {day}'**
  String attendanceTodayWithDay(String day);

  /// No description provided for @attendanceTodayWithDate.
  ///
  /// In en, this message translates to:
  /// **'Today, {date}'**
  String attendanceTodayWithDate(String date);

  /// No description provided for @attendanceToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get attendanceToday;

  /// No description provided for @attendanceYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get attendanceYesterday;

  /// No description provided for @attendanceDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String attendanceDaysAgo(int count);

  /// No description provided for @attendanceLocationConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Location Confirmed'**
  String get attendanceLocationConfirmed;

  /// No description provided for @attendanceLocationConfirmedBody.
  ///
  /// In en, this message translates to:
  /// **'Please complete face verification to proceed with {activity}. This step helps ensure secure and accurate attendance tracking.'**
  String attendanceLocationConfirmedBody(String activity);

  /// No description provided for @attendanceStartVerification.
  ///
  /// In en, this message translates to:
  /// **'Start Verification'**
  String get attendanceStartVerification;

  /// No description provided for @attendanceRegisterYourFace.
  ///
  /// In en, this message translates to:
  /// **'Register Your Face'**
  String get attendanceRegisterYourFace;

  /// No description provided for @attendanceVerificationInProgress.
  ///
  /// In en, this message translates to:
  /// **'{activity} Verification in Progress'**
  String attendanceVerificationInProgress(String activity);

  /// No description provided for @attendanceLocationVerificationBody.
  ///
  /// In en, this message translates to:
  /// **'We\'re verifying your current location before completing the {activity} process. Please make sure location access is enabled and you\'re within the allowed work area.'**
  String attendanceLocationVerificationBody(String activity);

  /// No description provided for @attendanceLocationNotValid.
  ///
  /// In en, this message translates to:
  /// **'Location is not valid. You are ~{distance}m away. Max radius is {maxRadius}m.'**
  String attendanceLocationNotValid(String distance, String maxRadius);

  /// No description provided for @attendanceCouldNotGetLocation.
  ///
  /// In en, this message translates to:
  /// **'Error: Could not get location. {error}'**
  String attendanceCouldNotGetLocation(String error);

  /// No description provided for @attendancePleaseFillRequiredFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all required fields.'**
  String get attendancePleaseFillRequiredFields;

  /// No description provided for @attendanceNoActiveAttendance.
  ///
  /// In en, this message translates to:
  /// **'No active attendance found.'**
  String get attendanceNoActiveAttendance;

  /// No description provided for @attendanceSaveActivity.
  ///
  /// In en, this message translates to:
  /// **'Save {activity}'**
  String attendanceSaveActivity(String activity);

  /// No description provided for @attendanceEditRequest.
  ///
  /// In en, this message translates to:
  /// **'Edit Attendance Request'**
  String get attendanceEditRequest;

  /// No description provided for @attendanceSubmittedRecord.
  ///
  /// In en, this message translates to:
  /// **'Submitted Record'**
  String get attendanceSubmittedRecord;

  /// No description provided for @attendanceAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Attendance Adjustment'**
  String get attendanceAdjustment;

  /// No description provided for @attendanceClockInField.
  ///
  /// In en, this message translates to:
  /// **'Clock In'**
  String get attendanceClockInField;

  /// No description provided for @attendanceClockOutField.
  ///
  /// In en, this message translates to:
  /// **'Clock Out'**
  String get attendanceClockOutField;

  /// No description provided for @attendanceAdjustmentNotes.
  ///
  /// In en, this message translates to:
  /// **'Adjustment Notes'**
  String get attendanceAdjustmentNotes;

  /// No description provided for @attendanceSendAdjustmentRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Adjustment Request'**
  String get attendanceSendAdjustmentRequest;

  /// No description provided for @attendanceUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Update Success!'**
  String get attendanceUpdateSuccess;

  /// No description provided for @attendanceUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update Failed!'**
  String get attendanceUpdateFailed;

  /// No description provided for @attendanceUpdateFailedWithError.
  ///
  /// In en, this message translates to:
  /// **'Update Failed: {error}'**
  String attendanceUpdateFailedWithError(String error);

  /// No description provided for @attendanceFaceRegistration.
  ///
  /// In en, this message translates to:
  /// **'Face Registration'**
  String get attendanceFaceRegistration;

  /// No description provided for @attendanceFaceVerification.
  ///
  /// In en, this message translates to:
  /// **'Face Verification'**
  String get attendanceFaceVerification;

  /// No description provided for @attendanceFaceStepFrontInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face the camera directly and make sure your face is clearly visible'**
  String get attendanceFaceStepFrontInstruction;

  /// No description provided for @attendanceFaceStepRightInstruction.
  ///
  /// In en, this message translates to:
  /// **'Slowly turn your head to the right and keep it within the frame'**
  String get attendanceFaceStepRightInstruction;

  /// No description provided for @attendanceFaceStepLeftInstruction.
  ///
  /// In en, this message translates to:
  /// **'Slowly turn your head to the left and keep it within the frame'**
  String get attendanceFaceStepLeftInstruction;

  /// No description provided for @attendanceFaceStepUploadingInstruction.
  ///
  /// In en, this message translates to:
  /// **'Uploading photo and verifying face...'**
  String get attendanceFaceStepUploadingInstruction;

  /// No description provided for @attendanceFaceStepFailedInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face Registration Failed!'**
  String get attendanceFaceStepFailedInstruction;

  /// No description provided for @attendanceFaceStepSuccessInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face Registration Success!'**
  String get attendanceFaceStepSuccessInstruction;

  /// No description provided for @attendanceFaceStepTakeFrontPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Front Photo'**
  String get attendanceFaceStepTakeFrontPhoto;

  /// No description provided for @attendanceFaceStepTakeRightPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Right Photo'**
  String get attendanceFaceStepTakeRightPhoto;

  /// No description provided for @attendanceFaceStepTakeLeftPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Left Photo'**
  String get attendanceFaceStepTakeLeftPhoto;

  /// No description provided for @attendanceFaceStepUploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading...'**
  String get attendanceFaceStepUploading;

  /// No description provided for @attendanceFaceStepTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get attendanceFaceStepTryAgain;

  /// No description provided for @attendanceFaceStepDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get attendanceFaceStepDone;

  /// No description provided for @attendanceVerificationInitialInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face the camera directly and make sure your face is clearly visible'**
  String get attendanceVerificationInitialInstruction;

  /// No description provided for @attendanceVerificationLoadingInstruction.
  ///
  /// In en, this message translates to:
  /// **'Verifying...'**
  String get attendanceVerificationLoadingInstruction;

  /// No description provided for @attendanceVerificationSuccessInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face Verification Success!'**
  String get attendanceVerificationSuccessInstruction;

  /// No description provided for @attendanceVerificationFailedInstruction.
  ///
  /// In en, this message translates to:
  /// **'Face Verification Failed!'**
  String get attendanceVerificationFailedInstruction;

  /// No description provided for @attendanceVerificationTakePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get attendanceVerificationTakePhoto;

  /// No description provided for @activityLogClockIn.
  ///
  /// In en, this message translates to:
  /// **'Clock In'**
  String get activityLogClockIn;

  /// No description provided for @activityLogClockOut.
  ///
  /// In en, this message translates to:
  /// **'Clock Out'**
  String get activityLogClockOut;

  /// No description provided for @activityLogOvertimeCreated.
  ///
  /// In en, this message translates to:
  /// **'Overtime Created'**
  String get activityLogOvertimeCreated;

  /// No description provided for @activityLogOvertimeApproved.
  ///
  /// In en, this message translates to:
  /// **'Overtime Approved'**
  String get activityLogOvertimeApproved;

  /// No description provided for @activityLogOvertimeRejected.
  ///
  /// In en, this message translates to:
  /// **'Overtime Rejected'**
  String get activityLogOvertimeRejected;

  /// No description provided for @activityLogOvertimeUpdated.
  ///
  /// In en, this message translates to:
  /// **'Overtime Updated'**
  String get activityLogOvertimeUpdated;

  /// No description provided for @activityLogUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown Activity'**
  String get activityLogUnknown;

  /// No description provided for @overtimeRequestTitle.
  ///
  /// In en, this message translates to:
  /// **'Overtime Request'**
  String get overtimeRequestTitle;

  /// No description provided for @overtimeRequestDate.
  ///
  /// In en, this message translates to:
  /// **'Request Date'**
  String get overtimeRequestDate;

  /// No description provided for @overtimeStartTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get overtimeStartTime;

  /// No description provided for @overtimeEndTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get overtimeEndTime;

  /// No description provided for @overtimeNotes.
  ///
  /// In en, this message translates to:
  /// **'Overtime Notes'**
  String get overtimeNotes;

  /// No description provided for @overtimeRequestButton.
  ///
  /// In en, this message translates to:
  /// **'Request Overtime'**
  String get overtimeRequestButton;

  /// No description provided for @overtimeSubmittedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Overtime request submitted successfully!'**
  String get overtimeSubmittedSuccess;

  /// No description provided for @overtimeEditRequest.
  ///
  /// In en, this message translates to:
  /// **'Edit Overtime Request'**
  String get overtimeEditRequest;

  /// No description provided for @overtimeAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Overtime Adjustment'**
  String get overtimeAdjustment;

  /// No description provided for @overtimeAdjustmentNotes.
  ///
  /// In en, this message translates to:
  /// **'Adjustment Notes'**
  String get overtimeAdjustmentNotes;

  /// No description provided for @overtimeSendAdjustmentRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Adjustment Request'**
  String get overtimeSendAdjustmentRequest;

  /// No description provided for @overtimeAdjustmentSentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Adjustment request sent successfully!'**
  String get overtimeAdjustmentSentSuccess;

  /// No description provided for @overtimeNoAttendanceLog.
  ///
  /// In en, this message translates to:
  /// **'No attendance log for this date.'**
  String get overtimeNoAttendanceLog;

  /// No description provided for @leaveBalance.
  ///
  /// In en, this message translates to:
  /// **'Leave Balance'**
  String get leaveBalance;

  /// No description provided for @leaveTimeOffUsed.
  ///
  /// In en, this message translates to:
  /// **'Time Off Used'**
  String get leaveTimeOffUsed;

  /// No description provided for @leaveTimeOff.
  ///
  /// In en, this message translates to:
  /// **'Time Off'**
  String get leaveTimeOff;

  /// No description provided for @leaveDays.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get leaveDays;

  /// No description provided for @leaveYourRequests.
  ///
  /// In en, this message translates to:
  /// **'Your Leave Request'**
  String get leaveYourRequests;

  /// No description provided for @leaveNoHistoryFound.
  ///
  /// In en, this message translates to:
  /// **'No leave history found.'**
  String get leaveNoHistoryFound;

  /// No description provided for @leaveFailedToLoadHistory.
  ///
  /// In en, this message translates to:
  /// **'Failed to load history: {error}'**
  String leaveFailedToLoadHistory(String error);

  /// No description provided for @leaveRequestDetail.
  ///
  /// In en, this message translates to:
  /// **'Leave Request Detail'**
  String get leaveRequestDetail;

  /// No description provided for @leaveRequestDetailSection.
  ///
  /// In en, this message translates to:
  /// **'Request Detail'**
  String get leaveRequestDetailSection;

  /// No description provided for @leaveType.
  ///
  /// In en, this message translates to:
  /// **'Leave Type'**
  String get leaveType;

  /// No description provided for @leaveDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get leaveDuration;

  /// No description provided for @leaveReason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get leaveReason;

  /// No description provided for @leaveAttachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get leaveAttachment;

  /// No description provided for @leaveApproval.
  ///
  /// In en, this message translates to:
  /// **'Approval'**
  String get leaveApproval;

  /// No description provided for @leaveNoApproversAssigned.
  ///
  /// In en, this message translates to:
  /// **'No approvers assigned.'**
  String get leaveNoApproversAssigned;

  /// No description provided for @leaveDaysCount.
  ///
  /// In en, this message translates to:
  /// **'({count} Days)'**
  String leaveDaysCount(int count);

  /// No description provided for @leaveNewRequest.
  ///
  /// In en, this message translates to:
  /// **'New Leave Request'**
  String get leaveNewRequest;

  /// No description provided for @leaveStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get leaveStartDate;

  /// No description provided for @leaveEndDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get leaveEndDate;

  /// No description provided for @leaveSendRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Request'**
  String get leaveSendRequest;

  /// No description provided for @leaveSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get leaveSubmitting;

  /// No description provided for @leaveSubmittedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Leave request submitted successfully!'**
  String get leaveSubmittedSuccess;

  /// No description provided for @leaveSubmittedFailed.
  ///
  /// In en, this message translates to:
  /// **'Leave request submitted failed!'**
  String get leaveSubmittedFailed;

  /// No description provided for @leaveFailedToLoadTypes.
  ///
  /// In en, this message translates to:
  /// **'Failed to load leave types'**
  String get leaveFailedToLoadTypes;

  /// No description provided for @leaveCouldNotLoadBalance.
  ///
  /// In en, this message translates to:
  /// **'Could not load leave balance:'**
  String get leaveCouldNotLoadBalance;

  /// No description provided for @leaveSubmissionFailedPrefix.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed:'**
  String get leaveSubmissionFailedPrefix;

  /// No description provided for @leaveTypeAnnualLeave.
  ///
  /// In en, this message translates to:
  /// **'Annual Leave'**
  String get leaveTypeAnnualLeave;

  /// No description provided for @leaveTypeSickLeave.
  ///
  /// In en, this message translates to:
  /// **'Sick Leave'**
  String get leaveTypeSickLeave;

  /// No description provided for @leaveTypeMaternityLeave.
  ///
  /// In en, this message translates to:
  /// **'Maternity Leave'**
  String get leaveTypeMaternityLeave;

  /// No description provided for @leaveTypeMenstrualLeave.
  ///
  /// In en, this message translates to:
  /// **'Menstrual Leave'**
  String get leaveTypeMenstrualLeave;

  /// No description provided for @leaveTypeMarriageLeave.
  ///
  /// In en, this message translates to:
  /// **'Marriage Leave'**
  String get leaveTypeMarriageLeave;

  /// No description provided for @leaveTypeChildsMarriageLeave.
  ///
  /// In en, this message translates to:
  /// **'Child\'s Marriage Leave'**
  String get leaveTypeChildsMarriageLeave;

  /// No description provided for @leaveTypePaternityLeave.
  ///
  /// In en, this message translates to:
  /// **'Paternity Leave'**
  String get leaveTypePaternityLeave;

  /// No description provided for @leaveTypeBereavementLeave.
  ///
  /// In en, this message translates to:
  /// **'Bereavement Leave'**
  String get leaveTypeBereavementLeave;

  /// No description provided for @leaveTypeNaturalDisasterLeave.
  ///
  /// In en, this message translates to:
  /// **'Natural Disaster Leave'**
  String get leaveTypeNaturalDisasterLeave;

  /// No description provided for @leaveTypeUnpaidLeave.
  ///
  /// In en, this message translates to:
  /// **'Unpaid Leave'**
  String get leaveTypeUnpaidLeave;

  /// No description provided for @leaveTypeExtendedLeave.
  ///
  /// In en, this message translates to:
  /// **'Extended Leave'**
  String get leaveTypeExtendedLeave;

  /// No description provided for @leaveTypeStudyLeave.
  ///
  /// In en, this message translates to:
  /// **'Study Leave'**
  String get leaveTypeStudyLeave;

  /// No description provided for @leaveTypeReligiousLeave.
  ///
  /// In en, this message translates to:
  /// **'Religious Leave'**
  String get leaveTypeReligiousLeave;

  /// No description provided for @leaveTypeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get leaveTypeUnknown;

  /// No description provided for @offboardingProcess.
  ///
  /// In en, this message translates to:
  /// **'Offboarding Process'**
  String get offboardingProcess;

  /// No description provided for @offboardingCompleteTasksTitle.
  ///
  /// In en, this message translates to:
  /// **'Complete Your Offboarding Tasks'**
  String get offboardingCompleteTasksTitle;

  /// No description provided for @offboardingCompleteTasksSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Complete your offboarding tasks to ensure a smooth exit'**
  String get offboardingCompleteTasksSubtitle;

  /// No description provided for @offboardingError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String offboardingError(String error);

  /// No description provided for @offboardingStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get offboardingStart;

  /// No description provided for @offboardingEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get offboardingEdit;

  /// No description provided for @offboardingExitInterviewSchedule.
  ///
  /// In en, this message translates to:
  /// **'Exit Interview Schedule'**
  String get offboardingExitInterviewSchedule;

  /// No description provided for @offboardingExitInterviewForm.
  ///
  /// In en, this message translates to:
  /// **'Exit Interview Form'**
  String get offboardingExitInterviewForm;

  /// No description provided for @offboardingWorkHandover.
  ///
  /// In en, this message translates to:
  /// **'Work & Responsibilities Handover'**
  String get offboardingWorkHandover;

  /// No description provided for @offboardingDocumentHandover.
  ///
  /// In en, this message translates to:
  /// **'Document Handover'**
  String get offboardingDocumentHandover;

  /// No description provided for @offboardingResponsibilityHandover.
  ///
  /// In en, this message translates to:
  /// **'Responsibility Handover'**
  String get offboardingResponsibilityHandover;

  /// No description provided for @offboardingDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get offboardingDate;

  /// No description provided for @offboardingTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get offboardingTime;

  /// No description provided for @offboardingInterviewer.
  ///
  /// In en, this message translates to:
  /// **'Interviewer'**
  String get offboardingInterviewer;

  /// No description provided for @offboardingHandoverSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Handover submitted successfully!'**
  String get offboardingHandoverSubmitted;

  /// No description provided for @offboardingFillWorksFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all \"Works\" fields.'**
  String get offboardingFillWorksFields;

  /// No description provided for @offboardingFillDocumentNameFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all \"Document Name\" fields.'**
  String get offboardingFillDocumentNameFields;

  /// No description provided for @offboardingSelectRecipient.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one recipient for all items.'**
  String get offboardingSelectRecipient;

  /// No description provided for @offboardingIdNotFound.
  ///
  /// In en, this message translates to:
  /// **'Could not find offboarding ID. Please try again.'**
  String get offboardingIdNotFound;

  /// No description provided for @offboardingErrorLoadingData.
  ///
  /// In en, this message translates to:
  /// **'Error loading data: {error}'**
  String offboardingErrorLoadingData(String error);

  /// No description provided for @offboardingFailedToLoadData.
  ///
  /// In en, this message translates to:
  /// **'Failed to load data'**
  String get offboardingFailedToLoadData;

  /// No description provided for @offboardingAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get offboardingAdd;

  /// No description provided for @offboardingSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get offboardingSubmitting;

  /// No description provided for @offboardingSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get offboardingSubmit;

  /// No description provided for @offboardingWorks.
  ///
  /// In en, this message translates to:
  /// **'Works'**
  String get offboardingWorks;

  /// No description provided for @offboardingDocumentName.
  ///
  /// In en, this message translates to:
  /// **'Document Name'**
  String get offboardingDocumentName;

  /// No description provided for @offboardingHandedOverTo.
  ///
  /// In en, this message translates to:
  /// **'Handed Over To'**
  String get offboardingHandedOverTo;

  /// No description provided for @offboardingEmployees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get offboardingEmployees;

  /// No description provided for @offboardingSearchEmployee.
  ///
  /// In en, this message translates to:
  /// **'Search Employee'**
  String get offboardingSearchEmployee;

  /// No description provided for @offboardingDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get offboardingDone;

  /// No description provided for @offboardingWork.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get offboardingWork;

  /// No description provided for @offboardingValidating.
  ///
  /// In en, this message translates to:
  /// **'Validating...'**
  String get offboardingValidating;

  /// No description provided for @offboardingValidateNow.
  ///
  /// In en, this message translates to:
  /// **'Validate Now'**
  String get offboardingValidateNow;

  /// No description provided for @offboardingWorkValidated.
  ///
  /// In en, this message translates to:
  /// **'Work validated successfully!'**
  String get offboardingWorkValidated;

  /// No description provided for @offboardingHandoverValidated.
  ///
  /// In en, this message translates to:
  /// **'Handover validated successfully!'**
  String get offboardingHandoverValidated;

  /// No description provided for @offboardingNoItemsFound.
  ///
  /// In en, this message translates to:
  /// **'No items found'**
  String get offboardingNoItemsFound;

  /// No description provided for @offboardingNoDocumentsFound.
  ///
  /// In en, this message translates to:
  /// **'No documents found'**
  String get offboardingNoDocumentsFound;

  /// No description provided for @offboardingFormSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Form Submitted Successfully!'**
  String get offboardingFormSubmitted;

  /// No description provided for @offboardingSubmissionFailed.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed'**
  String get offboardingSubmissionFailed;

  /// No description provided for @offboardingSubmitForm.
  ///
  /// In en, this message translates to:
  /// **'Submit Form'**
  String get offboardingSubmitForm;

  /// No description provided for @offboardingNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get offboardingNotes;

  /// No description provided for @offboardingSelectOption.
  ///
  /// In en, this message translates to:
  /// **'Select an option'**
  String get offboardingSelectOption;

  /// No description provided for @offboardingUnknownFieldType.
  ///
  /// In en, this message translates to:
  /// **'Unknown field type: {type}'**
  String offboardingUnknownFieldType(String type);

  /// No description provided for @offboardingConfirmSubmit.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit this exit interview form?'**
  String get offboardingConfirmSubmit;

  /// No description provided for @offboardingConfirmNoChanges.
  ///
  /// In en, this message translates to:
  /// **'Once submitted, you won\'t be able to make any changes.'**
  String get offboardingConfirmNoChanges;

  /// No description provided for @offboardingCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get offboardingCancel;

  /// No description provided for @performanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get performanceTitle;

  /// No description provided for @performanceMyOkr.
  ///
  /// In en, this message translates to:
  /// **'My OKR'**
  String get performanceMyOkr;

  /// No description provided for @performanceSupervisorAssessment.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Assessment'**
  String get performanceSupervisorAssessment;

  /// No description provided for @performanceSelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'Self Assessment'**
  String get performanceSelfAssessment;

  /// No description provided for @performanceDueDate.
  ///
  /// In en, this message translates to:
  /// **'Due Date '**
  String get performanceDueDate;

  /// No description provided for @performanceNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get performanceNotAvailable;

  /// No description provided for @performanceErrorLoadingSelfAssessments.
  ///
  /// In en, this message translates to:
  /// **'Error loading Self Assessments: {error}'**
  String performanceErrorLoadingSelfAssessments(String error);

  /// No description provided for @performanceErrorLoadingOkr.
  ///
  /// In en, this message translates to:
  /// **'Error loading OKR: {error}'**
  String performanceErrorLoadingOkr(String error);

  /// No description provided for @performanceLoadingSupervisorAssessments.
  ///
  /// In en, this message translates to:
  /// **'Loading supervisor assessments...'**
  String get performanceLoadingSupervisorAssessments;

  /// No description provided for @performanceErrorLoadingSupervisorAssessments.
  ///
  /// In en, this message translates to:
  /// **'Error loading supervisor assessments: {error}'**
  String performanceErrorLoadingSupervisorAssessments(String error);

  /// No description provided for @performanceSupervisorDataNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Supervisor assessments data not available.'**
  String get performanceSupervisorDataNotAvailable;

  /// No description provided for @performanceSelfAssessmentWithPeriod.
  ///
  /// In en, this message translates to:
  /// **'Self Assessment - {period}'**
  String performanceSelfAssessmentWithPeriod(String period);

  /// No description provided for @performanceMyOkrWithPeriod.
  ///
  /// In en, this message translates to:
  /// **'My OKR - {period}'**
  String performanceMyOkrWithPeriod(String period);

  /// No description provided for @performanceOkrTab.
  ///
  /// In en, this message translates to:
  /// **'OKR'**
  String get performanceOkrTab;

  /// No description provided for @performanceDashboardTab.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get performanceDashboardTab;

  /// No description provided for @performanceObjective.
  ///
  /// In en, this message translates to:
  /// **'OBJECTIVE'**
  String get performanceObjective;

  /// No description provided for @performanceKeyResult.
  ///
  /// In en, this message translates to:
  /// **'KEY RESULT'**
  String get performanceKeyResult;

  /// No description provided for @performanceNoObjectivesFound.
  ///
  /// In en, this message translates to:
  /// **'No objectives found'**
  String get performanceNoObjectivesFound;

  /// No description provided for @performanceNoGraphData.
  ///
  /// In en, this message translates to:
  /// **'No graph data available'**
  String get performanceNoGraphData;

  /// No description provided for @performanceNoTitle.
  ///
  /// In en, this message translates to:
  /// **'No Title'**
  String get performanceNoTitle;

  /// No description provided for @performanceObjectiveFallback.
  ///
  /// In en, this message translates to:
  /// **'Objective'**
  String get performanceObjectiveFallback;

  /// No description provided for @performanceMetricFallback.
  ///
  /// In en, this message translates to:
  /// **'Metric'**
  String get performanceMetricFallback;

  /// No description provided for @performanceSelectRange.
  ///
  /// In en, this message translates to:
  /// **'Select Range'**
  String get performanceSelectRange;

  /// No description provided for @performanceErrorLoadingGraph.
  ///
  /// In en, this message translates to:
  /// **'Error loading graph: {error}'**
  String performanceErrorLoadingGraph(String error);

  /// No description provided for @performanceAvgActual.
  ///
  /// In en, this message translates to:
  /// **'Avg. Actual'**
  String get performanceAvgActual;

  /// No description provided for @performanceAvgTarget.
  ///
  /// In en, this message translates to:
  /// **'Avg. Target'**
  String get performanceAvgTarget;

  /// No description provided for @performanceApplyFilter.
  ///
  /// In en, this message translates to:
  /// **'Apply Filter'**
  String get performanceApplyFilter;

  /// No description provided for @performanceStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get performanceStartDate;

  /// No description provided for @performanceEndDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get performanceEndDate;

  /// No description provided for @performanceTo.
  ///
  /// In en, this message translates to:
  /// **'TO'**
  String get performanceTo;

  /// No description provided for @performanceWeek.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get performanceWeek;

  /// No description provided for @performanceMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get performanceMonth;

  /// No description provided for @performanceQuarter.
  ///
  /// In en, this message translates to:
  /// **'Quarter'**
  String get performanceQuarter;

  /// No description provided for @performanceYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get performanceYear;

  /// No description provided for @performanceWeekLabel.
  ///
  /// In en, this message translates to:
  /// **'Week {number}'**
  String performanceWeekLabel(int number);

  /// No description provided for @performanceYearRequired.
  ///
  /// In en, this message translates to:
  /// **'Year*'**
  String get performanceYearRequired;

  /// No description provided for @performanceKeyResultData.
  ///
  /// In en, this message translates to:
  /// **'Key Result Data'**
  String get performanceKeyResultData;

  /// No description provided for @performanceFillRequiredFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all required fields correctly.'**
  String get performanceFillRequiredFields;

  /// No description provided for @performanceProgressSaved.
  ///
  /// In en, this message translates to:
  /// **'Progress saved successfully!'**
  String get performanceProgressSaved;

  /// No description provided for @performanceNetworkError.
  ///
  /// In en, this message translates to:
  /// **'A network error occurred.'**
  String get performanceNetworkError;

  /// No description provided for @performanceUnexpectedError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred: {error}'**
  String performanceUnexpectedError(String error);

  /// No description provided for @performanceRequired.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get performanceRequired;

  /// No description provided for @performanceTargetForPeriod.
  ///
  /// In en, this message translates to:
  /// **'Target for this period'**
  String get performanceTargetForPeriod;

  /// No description provided for @performanceSaving.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get performanceSaving;

  /// No description provided for @performanceSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get performanceSave;

  /// No description provided for @performanceError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String performanceError(String error);

  /// No description provided for @performanceTeamMemberInformation.
  ///
  /// In en, this message translates to:
  /// **'Team Member Information'**
  String get performanceTeamMemberInformation;

  /// No description provided for @performanceEmployeeName.
  ///
  /// In en, this message translates to:
  /// **'Employee Name'**
  String get performanceEmployeeName;

  /// No description provided for @performancePosition.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get performancePosition;

  /// No description provided for @performanceJobLevel.
  ///
  /// In en, this message translates to:
  /// **'Job Level'**
  String get performanceJobLevel;

  /// No description provided for @performanceDepartment.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get performanceDepartment;

  /// No description provided for @performanceSubmittedOn.
  ///
  /// In en, this message translates to:
  /// **'Submitted on'**
  String get performanceSubmittedOn;

  /// No description provided for @performanceValidatedOn.
  ///
  /// In en, this message translates to:
  /// **'Validated on'**
  String get performanceValidatedOn;

  /// No description provided for @performanceEmployeeInformation.
  ///
  /// In en, this message translates to:
  /// **'Employee Information'**
  String get performanceEmployeeInformation;

  /// No description provided for @performanceCurrentPosition.
  ///
  /// In en, this message translates to:
  /// **'Current Position'**
  String get performanceCurrentPosition;

  /// No description provided for @performanceCurrentJobLevel.
  ///
  /// In en, this message translates to:
  /// **'Current Job Level'**
  String get performanceCurrentJobLevel;

  /// No description provided for @performanceTargetPosition.
  ///
  /// In en, this message translates to:
  /// **'Target Position'**
  String get performanceTargetPosition;

  /// No description provided for @performanceTargetJobLevel.
  ///
  /// In en, this message translates to:
  /// **'Target Job Level'**
  String get performanceTargetJobLevel;

  /// No description provided for @performanceEmployeeStartDate.
  ///
  /// In en, this message translates to:
  /// **'Employee Start Date'**
  String get performanceEmployeeStartDate;

  /// No description provided for @performanceAssessmentSchedule.
  ///
  /// In en, this message translates to:
  /// **'Assessment Schedule'**
  String get performanceAssessmentSchedule;

  /// No description provided for @performanceDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get performanceDate;

  /// No description provided for @performanceTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get performanceTime;

  /// No description provided for @performanceNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get performanceNotes;

  /// No description provided for @performanceAssessmentForm.
  ///
  /// In en, this message translates to:
  /// **'Assessment Form'**
  String get performanceAssessmentForm;

  /// No description provided for @performanceSupervisorAssessmentSchedule.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Assessment Schedule'**
  String get performanceSupervisorAssessmentSchedule;

  /// No description provided for @performanceSupervisorAssessmentList.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Assessment List'**
  String get performanceSupervisorAssessmentList;

  /// No description provided for @performanceErrorLoadingAssessments.
  ///
  /// In en, this message translates to:
  /// **'Error loading assessments: {error}\nPull down to retry.'**
  String performanceErrorLoadingAssessments(String error);

  /// No description provided for @performanceNoSupervisorAssessments.
  ///
  /// In en, this message translates to:
  /// **'No supervisor assessments found.'**
  String get performanceNoSupervisorAssessments;

  /// No description provided for @performanceErrorLoadingDetails.
  ///
  /// In en, this message translates to:
  /// **'Error loading details: {error}'**
  String performanceErrorLoadingDetails(String error);

  /// No description provided for @performanceFormSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Form Submitted Successfully!'**
  String get performanceFormSubmitted;

  /// No description provided for @performanceSubmissionFailed.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed: {error}'**
  String performanceSubmissionFailed(String error);

  /// No description provided for @performanceAssessmentReadOnly.
  ///
  /// In en, this message translates to:
  /// **'This assessment is read-only.'**
  String get performanceAssessmentReadOnly;

  /// No description provided for @performanceSubmitSelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'Submit Self Assessment'**
  String get performanceSubmitSelfAssessment;

  /// No description provided for @performanceSaveAsDraft.
  ///
  /// In en, this message translates to:
  /// **'Save as Draft'**
  String get performanceSaveAsDraft;

  /// No description provided for @performanceConfirmSubmitSelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit this self assessment form?'**
  String get performanceConfirmSubmitSelfAssessment;

  /// No description provided for @performanceConfirmNoChanges.
  ///
  /// In en, this message translates to:
  /// **'Once submitted, you won\'t be able to make any changes.'**
  String get performanceConfirmNoChanges;

  /// No description provided for @performanceCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get performanceCancel;

  /// No description provided for @performanceSubmitForm.
  ///
  /// In en, this message translates to:
  /// **'Submit Form'**
  String get performanceSubmitForm;

  /// No description provided for @performanceUnknownType.
  ///
  /// In en, this message translates to:
  /// **'Unknown type: {type}'**
  String performanceUnknownType(String type);

  /// No description provided for @performanceEmployeeSubmittedReadOnly.
  ///
  /// In en, this message translates to:
  /// **'This is the employee\'s submitted assessment (Read-Only).'**
  String get performanceEmployeeSubmittedReadOnly;

  /// No description provided for @performanceAddComments.
  ///
  /// In en, this message translates to:
  /// **'Add your comments here...'**
  String get performanceAddComments;

  /// No description provided for @performanceEnterComment.
  ///
  /// In en, this message translates to:
  /// **'Enter comment...'**
  String get performanceEnterComment;

  /// No description provided for @performanceValidationSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Validation Successful'**
  String get performanceValidationSuccessful;

  /// No description provided for @performanceFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed: {error}'**
  String performanceFailed(String error);

  /// No description provided for @performanceValidationCompleteReadOnly.
  ///
  /// In en, this message translates to:
  /// **'Validation complete and read-only.'**
  String get performanceValidationCompleteReadOnly;

  /// No description provided for @performanceValidateSelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'Validate Self Assessment'**
  String get performanceValidateSelfAssessment;

  /// No description provided for @performanceMySelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'My Self Assessment'**
  String get performanceMySelfAssessment;

  /// No description provided for @performanceTeamMemberSelfAssessment.
  ///
  /// In en, this message translates to:
  /// **'Team Member Self Assessment'**
  String get performanceTeamMemberSelfAssessment;

  /// No description provided for @performanceAssessmentValidationTab.
  ///
  /// In en, this message translates to:
  /// **'Assessment Validation'**
  String get performanceAssessmentValidationTab;

  /// No description provided for @performanceSupervisorSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Assessment Submitted Successfully!'**
  String get performanceSupervisorSubmitted;

  /// No description provided for @performanceAssessmentReadOnlyShort.
  ///
  /// In en, this message translates to:
  /// **'Assessment is read-only.'**
  String get performanceAssessmentReadOnlyShort;

  /// No description provided for @performanceSaveDraft.
  ///
  /// In en, this message translates to:
  /// **'Save Draft'**
  String get performanceSaveDraft;

  /// No description provided for @performanceSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get performanceSubmit;

  /// No description provided for @performanceConfirmSubmitSupervisor.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit this supervisor assessment form?'**
  String get performanceConfirmSubmitSupervisor;

  /// No description provided for @performanceConfirmSaveDraft.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to save this draft?'**
  String get performanceConfirmSaveDraft;

  /// No description provided for @performanceCanEditDraftLater.
  ///
  /// In en, this message translates to:
  /// **'You can continue editing the draft later.'**
  String get performanceCanEditDraftLater;

  /// No description provided for @inboxTitle.
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get inboxTitle;

  /// No description provided for @inboxEmpty.
  ///
  /// In en, this message translates to:
  /// **'No notifications in your inbox.'**
  String get inboxEmpty;

  /// No description provided for @inboxError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get inboxError;

  /// No description provided for @inboxNoTitle.
  ///
  /// In en, this message translates to:
  /// **'No Title'**
  String get inboxNoTitle;

  /// No description provided for @inboxNoContent.
  ///
  /// In en, this message translates to:
  /// **'No content available'**
  String get inboxNoContent;

  /// No description provided for @inboxNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get inboxNotAvailable;

  /// No description provided for @payslipMyPayslip.
  ///
  /// In en, this message translates to:
  /// **'My Payslip'**
  String get payslipMyPayslip;

  /// No description provided for @payslipPeriodFallback.
  ///
  /// In en, this message translates to:
  /// **'Payslip Period'**
  String get payslipPeriodFallback;

  /// No description provided for @payslipViewPayslip.
  ///
  /// In en, this message translates to:
  /// **'View Payslip'**
  String get payslipViewPayslip;

  /// No description provided for @payslipRequestAccess.
  ///
  /// In en, this message translates to:
  /// **'Request Access'**
  String get payslipRequestAccess;

  /// No description provided for @payslipPrintRequest.
  ///
  /// In en, this message translates to:
  /// **'Print Request'**
  String get payslipPrintRequest;

  /// No description provided for @payslipLastMonths.
  ///
  /// In en, this message translates to:
  /// **'Last {count, plural, =1{1 Month} other{{count} Months}}'**
  String payslipLastMonths(int count);

  /// No description provided for @payslipListError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String payslipListError(String error);

  /// No description provided for @payslipNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get payslipNotAvailable;

  /// No description provided for @payslipTitleWithPeriod.
  ///
  /// In en, this message translates to:
  /// **'Payslip {period}'**
  String payslipTitleWithPeriod(String period);

  /// No description provided for @payslipLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get payslipLoading;

  /// No description provided for @payslipDetailLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load payslip detail: {error}'**
  String payslipDetailLoadFailed(String error);

  /// No description provided for @payslipEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password.'**
  String get payslipEnterPassword;

  /// No description provided for @payslipIdMissing.
  ///
  /// In en, this message translates to:
  /// **'Error: Payslip ID is missing.'**
  String get payslipIdMissing;

  /// No description provided for @payslipAccessFailed.
  ///
  /// In en, this message translates to:
  /// **'Access Failed: {error}'**
  String payslipAccessFailed(String error);

  /// No description provided for @payslipEnterPasswordToContinue.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password to Continue'**
  String get payslipEnterPasswordToContinue;

  /// No description provided for @payslipPasswordSecurityMessage.
  ///
  /// In en, this message translates to:
  /// **'For security reasons, please enter your account password to access your selected payslip.'**
  String get payslipPasswordSecurityMessage;

  /// No description provided for @payslipAccessPayslip.
  ///
  /// In en, this message translates to:
  /// **'Access Payslip'**
  String get payslipAccessPayslip;

  /// No description provided for @payslipFallbackLabel.
  ///
  /// In en, this message translates to:
  /// **'Payslip'**
  String get payslipFallbackLabel;

  /// No description provided for @payslipPrintPayslipRequest.
  ///
  /// In en, this message translates to:
  /// **'Print Payslip Request'**
  String get payslipPrintPayslipRequest;

  /// No description provided for @payslipSendPrintRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Print Request'**
  String get payslipSendPrintRequest;

  /// No description provided for @payslipPrintRequestSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Payslip Print Request Submitted'**
  String get payslipPrintRequestSubmitted;

  /// No description provided for @payslipPrintRequestSubmittedBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ve received your request to print the payslip. Please wait while we process it, you\'ll be informed when it\'s ready to pick up.'**
  String get payslipPrintRequestSubmittedBody;

  /// No description provided for @payslipPayrollDetails.
  ///
  /// In en, this message translates to:
  /// **'Payroll Details'**
  String get payslipPayrollDetails;

  /// No description provided for @payslipConfidential.
  ///
  /// In en, this message translates to:
  /// **'*CONFIDENTIAL'**
  String get payslipConfidential;

  /// No description provided for @payslipPayrollPeriod.
  ///
  /// In en, this message translates to:
  /// **'Payroll Period'**
  String get payslipPayrollPeriod;

  /// No description provided for @payslipEmployeeId.
  ///
  /// In en, this message translates to:
  /// **'Employee ID'**
  String get payslipEmployeeId;

  /// No description provided for @payslipJobLevel.
  ///
  /// In en, this message translates to:
  /// **'Job Level'**
  String get payslipJobLevel;

  /// No description provided for @payslipTaxpayerId.
  ///
  /// In en, this message translates to:
  /// **'Taxpayer ID Number (NPWP)'**
  String get payslipTaxpayerId;

  /// No description provided for @payslipEmployeeName.
  ///
  /// In en, this message translates to:
  /// **'Employee Name'**
  String get payslipEmployeeName;

  /// No description provided for @payslipPosition.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get payslipPosition;

  /// No description provided for @payslipDepartment.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get payslipDepartment;

  /// No description provided for @payslipBasicSalary.
  ///
  /// In en, this message translates to:
  /// **'Basic Salary'**
  String get payslipBasicSalary;

  /// No description provided for @payslipOvertime.
  ///
  /// In en, this message translates to:
  /// **'Overtime'**
  String get payslipOvertime;

  /// No description provided for @payslipEarnings.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get payslipEarnings;

  /// No description provided for @payslipDeductions.
  ///
  /// In en, this message translates to:
  /// **'Deductions'**
  String get payslipDeductions;

  /// No description provided for @payslipTakeHomePay.
  ///
  /// In en, this message translates to:
  /// **'Take Home Pay'**
  String get payslipTakeHomePay;

  /// No description provided for @payslipNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get payslipNotes;

  /// No description provided for @payslipNotesDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'THIS IS COMPUTER GENERATED PRINTOUT AND NO SIGNATURE IS REQUIRED\n\nPLEASE NOTE THAT THE CONTENTS OF THIS STATEMENT SHOULD BE TREATED WITH ABSOLUTE CONFIDENTIALITY EXCEPT TO THE EXTENT YOU ARE REQUIRED TO MAKE DISCLOSURE FOR ANY TAX, LEGAL, OR REGULATORY PURPOSES. ANY BREACH OF THIS CONFIDENTIALITY OBLIGATION WILL BE DEALT WITH SERIOUSLY, WHICH MAY INVOLVE DISCIPLINARY ACTION BEING TAKEN.'**
  String get payslipNotesDisclaimer;

  /// No description provided for @payslipBenefits.
  ///
  /// In en, this message translates to:
  /// **'Benefits'**
  String get payslipBenefits;

  /// No description provided for @payslipBenefitsDescription.
  ///
  /// In en, this message translates to:
  /// **'These are the benefits you\'ll get from the company, but not included in your take-home pay (THP).'**
  String get payslipBenefitsDescription;

  /// No description provided for @payslipBenefitWorkAccident.
  ///
  /// In en, this message translates to:
  /// **'Work Accident Insurance'**
  String get payslipBenefitWorkAccident;

  /// No description provided for @payslipBenefitDeath.
  ///
  /// In en, this message translates to:
  /// **'Death Insurance'**
  String get payslipBenefitDeath;

  /// No description provided for @payslipBenefitOldAge.
  ///
  /// In en, this message translates to:
  /// **'Old Age Insurance'**
  String get payslipBenefitOldAge;

  /// No description provided for @payslipBenefitPension.
  ///
  /// In en, this message translates to:
  /// **'Pension Insurance'**
  String get payslipBenefitPension;

  /// No description provided for @payslipBenefitHealth.
  ///
  /// In en, this message translates to:
  /// **'BPJS Health'**
  String get payslipBenefitHealth;

  /// No description provided for @payslipTotalBenefits.
  ///
  /// In en, this message translates to:
  /// **'Total Benefits'**
  String get payslipTotalBenefits;

  /// No description provided for @payslipStatusLocked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get payslipStatusLocked;

  /// No description provided for @payslipStatusRequestSent.
  ///
  /// In en, this message translates to:
  /// **'Request has been sent'**
  String get payslipStatusRequestSent;

  /// No description provided for @payslipStatusDaysLeft.
  ///
  /// In en, this message translates to:
  /// **'{days} Days Left'**
  String payslipStatusDaysLeft(int days);

  /// No description provided for @payslipStatusUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get payslipStatusUnknown;

  /// No description provided for @payslipPrintStatusProcessed.
  ///
  /// In en, this message translates to:
  /// **'Processed'**
  String get payslipPrintStatusProcessed;

  /// No description provided for @payslipPrintStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get payslipPrintStatusPending;

  /// No description provided for @payslipPrintStatusReady.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get payslipPrintStatusReady;

  /// No description provided for @coreSelect.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get coreSelect;

  /// No description provided for @coreSelectOption.
  ///
  /// In en, this message translates to:
  /// **'Select an option'**
  String get coreSelectOption;

  /// No description provided for @coreSelectItems.
  ///
  /// In en, this message translates to:
  /// **'Select Items'**
  String get coreSelectItems;

  /// No description provided for @coreSearch.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get coreSearch;

  /// No description provided for @coreDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get coreDone;

  /// No description provided for @coreConfirmOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get coreConfirmOk;

  /// No description provided for @coreSelectImage.
  ///
  /// In en, this message translates to:
  /// **'Select Image'**
  String get coreSelectImage;

  /// No description provided for @coreUploadFile.
  ///
  /// In en, this message translates to:
  /// **'Upload File'**
  String get coreUploadFile;

  /// No description provided for @coreAttachments.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get coreAttachments;

  /// No description provided for @coreSocialMedia.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get coreSocialMedia;

  /// No description provided for @coreSocialMediaHint.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get coreSocialMediaHint;

  /// No description provided for @coreCountries.
  ///
  /// In en, this message translates to:
  /// **'Countries'**
  String get coreCountries;

  /// No description provided for @coreCountryCode.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get coreCountryCode;

  /// No description provided for @coreUnknownFieldType.
  ///
  /// In en, this message translates to:
  /// **'Unknown field type: {type}'**
  String coreUnknownFieldType(String type);

  /// No description provided for @coreNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'-'**
  String get coreNotAvailable;

  /// No description provided for @coreErrorWithDetail.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String coreErrorWithDetail(String error);

  /// No description provided for @coreUpdatedJustNow.
  ///
  /// In en, this message translates to:
  /// **'Updated just now'**
  String get coreUpdatedJustNow;

  /// No description provided for @coreUpdatedDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'updated {days}d ago'**
  String coreUpdatedDaysAgo(int days);

  /// No description provided for @coreUpdatedHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'updated {hours}h ago'**
  String coreUpdatedHoursAgo(int hours);

  /// No description provided for @coreUpdatedMinutesAgo.
  ///
  /// In en, this message translates to:
  /// **'updated {minutes}m ago'**
  String coreUpdatedMinutesAgo(int minutes);

  /// No description provided for @attendanceLocationServicesDisabled.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get attendanceLocationServicesDisabled;

  /// No description provided for @attendanceLocationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied.'**
  String get attendanceLocationPermissionDenied;

  /// No description provided for @attendanceLocationPermissionDeniedForever.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied. We cannot request permissions.'**
  String get attendanceLocationPermissionDeniedForever;

  /// No description provided for @attendanceManualCaptureBypass.
  ///
  /// In en, this message translates to:
  /// **'Manual capture (location bypass)'**
  String get attendanceManualCaptureBypass;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'id': return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
