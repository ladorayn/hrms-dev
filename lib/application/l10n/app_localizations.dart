import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

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
    Locale('id')
  ];

  /// No description provided for @btnYa.
  ///
  /// In id, this message translates to:
  /// **'Ya'**
  String get btnYa;

  /// No description provided for @btnOke.
  ///
  /// In id, this message translates to:
  /// **'Oke'**
  String get btnOke;

  /// No description provided for @btnLanjut.
  ///
  /// In id, this message translates to:
  /// **'Lanjut'**
  String get btnLanjut;

  /// No description provided for @btnMasuk.
  ///
  /// In id, this message translates to:
  /// **'Masuk'**
  String get btnMasuk;

  /// No description provided for @btnBatalkan.
  ///
  /// In id, this message translates to:
  /// **'Batalkan'**
  String get btnBatalkan;

  /// No description provided for @btnBatal.
  ///
  /// In id, this message translates to:
  /// **'Batal'**
  String get btnBatal;

  /// No description provided for @btnLupaPassword.
  ///
  /// In id, this message translates to:
  /// **'Lupa Password?'**
  String get btnLupaPassword;

  /// No description provided for @btnLewati.
  ///
  /// In id, this message translates to:
  /// **'Lewati'**
  String get btnLewati;

  /// No description provided for @btnAktifkanSekarang.
  ///
  /// In id, this message translates to:
  /// **'Aktifkan Sekarang'**
  String get btnAktifkanSekarang;

  /// No description provided for @btnUlangi.
  ///
  /// In id, this message translates to:
  /// **'Ulangi'**
  String get btnUlangi;

  /// No description provided for @btnLogin.
  ///
  /// In id, this message translates to:
  /// **'Login'**
  String get btnLogin;

  /// No description provided for @resetPassword.
  ///
  /// In id, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @btnUpdate.
  ///
  /// In id, this message translates to:
  /// **'Update'**
  String get btnUpdate;

  /// No description provided for @btnNantiSaja.
  ///
  /// In id, this message translates to:
  /// **'Nanti Saja'**
  String get btnNantiSaja;

  /// No description provided for @formIdPerusahaan.
  ///
  /// In id, this message translates to:
  /// **'ID Perusahaan'**
  String get formIdPerusahaan;

  /// No description provided for @formIdPengguna.
  ///
  /// In id, this message translates to:
  /// **'ID Pengguna'**
  String get formIdPengguna;

  /// No description provided for @formPassword.
  ///
  /// In id, this message translates to:
  /// **'Password'**
  String get formPassword;

  /// No description provided for @formPasswordLama.
  ///
  /// In id, this message translates to:
  /// **'Password Lama'**
  String get formPasswordLama;

  /// No description provided for @formPasswordBaru.
  ///
  /// In id, this message translates to:
  /// **'Password Baru'**
  String get formPasswordBaru;

  /// No description provided for @formMasukkanPasswordLama.
  ///
  /// In id, this message translates to:
  /// **'Masukan Password Lama'**
  String get formMasukkanPasswordLama;

  /// No description provided for @formMasukkanPasswordBaru.
  ///
  /// In id, this message translates to:
  /// **'Masukan Password Baru'**
  String get formMasukkanPasswordBaru;

  /// No description provided for @formKonfirmasiPasswordBaru.
  ///
  /// In id, this message translates to:
  /// **'Konfirmasi Password Baru'**
  String get formKonfirmasiPasswordBaru;

  /// No description provided for @formKonfirmasiPassword.
  ///
  /// In id, this message translates to:
  /// **'Konfirmasi Password'**
  String get formKonfirmasiPassword;

  /// No description provided for @formNoKtpKitias.
  ///
  /// In id, this message translates to:
  /// **'No. KTP/KITAS'**
  String get formNoKtpKitias;

  /// No description provided for @formEmail.
  ///
  /// In id, this message translates to:
  /// **'Email'**
  String get formEmail;

  /// No description provided for @formPhone.
  ///
  /// In id, this message translates to:
  /// **'Nomor Handphone'**
  String get formPhone;

  /// No description provided for @formHintIdPerusahaan.
  ///
  /// In id, this message translates to:
  /// **'Masukkan ID Perusahaan'**
  String get formHintIdPerusahaan;

  /// No description provided for @formHintIdPengguna.
  ///
  /// In id, this message translates to:
  /// **'Masukkan ID Pengguna'**
  String get formHintIdPengguna;

  /// No description provided for @formHintPassword.
  ///
  /// In id, this message translates to:
  /// **'Masukkan Password'**
  String get formHintPassword;

  /// No description provided for @formHintPasswordKamu.
  ///
  /// In id, this message translates to:
  /// **'Masukkan Password Kamu'**
  String get formHintPasswordKamu;

  /// No description provided for @formHintPasswordLama.
  ///
  /// In id, this message translates to:
  /// **'Masukkan Password Lama'**
  String get formHintPasswordLama;

  /// No description provided for @formHintPasswordBaru.
  ///
  /// In id, this message translates to:
  /// **'Masukan 12 karakter atau lebih'**
  String get formHintPasswordBaru;

  /// No description provided for @formHintKonfirmasiPasswordBaru.
  ///
  /// In id, this message translates to:
  /// **'Masukan ulang password'**
  String get formHintKonfirmasiPasswordBaru;

  /// No description provided for @formHintNoKtpKitias.
  ///
  /// In id, this message translates to:
  /// **'Masukkan nomor KTP'**
  String get formHintNoKtpKitias;

  /// No description provided for @formHintEmail.
  ///
  /// In id, this message translates to:
  /// **'Masukkan Email'**
  String get formHintEmail;

  /// No description provided for @formHintPhone.
  ///
  /// In id, this message translates to:
  /// **'Contoh: 81234567xxx'**
  String get formHintPhone;

  /// No description provided for @formValidationRequired.
  ///
  /// In id, this message translates to:
  /// **'{fieldName} wajib diisi'**
  String formValidationRequired(Object fieldName);

  /// No description provided for @formValidationMinLength.
  ///
  /// In id, this message translates to:
  /// **'{fieldName} kurang dari {minLength} digit'**
  String formValidationMinLength(Object fieldName, Object minLength);

  /// No description provided for @formValidationMaxLength.
  ///
  /// In id, this message translates to:
  /// **'{fieldName} tidak boleh lebih dari {maxLength} digit'**
  String formValidationMaxLength(Object fieldName, Object maxLength);

  /// No description provided for @formValidationEmailInvalid.
  ///
  /// In id, this message translates to:
  /// **'Email tidak valid'**
  String get formValidationEmailInvalid;

  /// No description provided for @formValidationOnlyAlphanumeric.
  ///
  /// In id, this message translates to:
  /// **'Hanya boleh huruf dan angka'**
  String get formValidationOnlyAlphanumeric;

  /// No description provided for @formValidationPasswordInvalid.
  ///
  /// In id, this message translates to:
  /// **'Password yang Anda masukkan tidak sesuai'**
  String get formValidationPasswordInvalid;

  /// No description provided for @formValidationPasswordCriteriaInvalid.
  ///
  /// In id, this message translates to:
  /// **'Password belum memenuhi kriteria'**
  String get formValidationPasswordCriteriaInvalid;

  /// No description provided for @splashScreenDisclaimer.
  ///
  /// In id, this message translates to:
  /// **'Bank berizin dan diawasi oleh Otoritas Jasa Keuangan (OJK) dan merupakan bank peserta penjamin Lembaga Penjamin Simpanan (LPS)'**
  String get splashScreenDisclaimer;

  /// No description provided for @onboardScreenTitleSlide1.
  ///
  /// In id, this message translates to:
  /// **'Satu Solusi Untuk\nSemua Transaksi'**
  String get onboardScreenTitleSlide1;

  /// No description provided for @onboardScreenMessageSlide1.
  ///
  /// In id, this message translates to:
  /// **'Transaksi sehari-hari menjadi lebih mudah, baik untuk kebutuhan personal maupun bisnis.'**
  String get onboardScreenMessageSlide1;

  /// No description provided for @onboardScreenTitleSlide2.
  ///
  /// In id, this message translates to:
  /// **'Gratis Transfer\nAntar Bank'**
  String get onboardScreenTitleSlide2;

  /// No description provided for @onboardScreenMessageSlide2.
  ///
  /// In id, this message translates to:
  /// **'Makin hemat transfer antar bank menggunakan hi Nabung. Dapatkan 100 kali gratis transfer per bulan. Buka hi Nabung sekarang!'**
  String get onboardScreenMessageSlide2;

  /// No description provided for @loginBeforeBindingTitle.
  ///
  /// In id, this message translates to:
  /// **'Masuk'**
  String get loginBeforeBindingTitle;

  /// No description provided for @loginBeforeBindingDescription.
  ///
  /// In id, this message translates to:
  /// **'Silakan masuk dengan ID perusahaan & ID pengguna yang sudah di informasikan'**
  String get loginBeforeBindingDescription;

  /// No description provided for @forgotPasswordChangePasswordPasswordBerhasilDisimpan.
  ///
  /// In id, this message translates to:
  /// **'Password Berhasil Disimpan'**
  String get forgotPasswordChangePasswordPasswordBerhasilDisimpan;

  /// No description provided for @forgotPasswordChangePasswordSilahkanLoginKembali.
  ///
  /// In id, this message translates to:
  /// **'Silakan login kembali untuk melanjutkan.'**
  String get forgotPasswordChangePasswordSilahkanLoginKembali;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'id': return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
