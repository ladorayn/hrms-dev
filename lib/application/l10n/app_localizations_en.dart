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
}
