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
