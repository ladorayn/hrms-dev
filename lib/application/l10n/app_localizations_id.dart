// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get signIn => 'Masuk';

  @override
  String get continueButton => 'Lanjutkan';

  @override
  String get resetPassword => 'Atur Ulang Kata Sandi';

  @override
  String get forgotPassword => 'Lupa Kata Sandi?';

  @override
  String get formEmail => 'Email';

  @override
  String get formHintEmail => 'Masukkan email Anda';

  @override
  String get formPassword => 'Kata Sandi';

  @override
  String get formHintPassword => 'Masukkan kata sandi Anda';

  @override
  String get formPasswordConfirmation => 'Konfirmasi Kata Sandi';

  @override
  String loginFailed(String error) {
    return 'Gagal masuk: $error';
  }

  @override
  String get resetPasswordEmail_title => 'Atur Ulang Kata Sandi';

  @override
  String get resetPasswordEmail_body => 'Masukkan email terdaftar Anda untuk mengatur ulang kata sandi';

  @override
  String get resetPasswordEmail_linkSentSnackbar => 'Tautan terkirim! Periksa email Anda.';

  @override
  String get resetPasswordCheckEmail_title => 'Silakan Periksa Email Anda';

  @override
  String get resetPasswordCheckEmail_body => 'Tautan atur ulang kata sandi telah dikirim ke email Anda yang terdaftar.';

  @override
  String get resetPasswordCheckEmail_didNotReceive => 'Tidak menerima email? ';

  @override
  String get resetPasswordCheckEmail_resend => 'Kirim Ulang Email';

  @override
  String get resetPasswordCheckEmail_resendingSnackbar => 'Mengirim ulang tautan...';

  @override
  String get resetPasswordCreate_title => 'Buat Kata Sandi Baru';

  @override
  String get resetPasswordCreate_subtitle => 'Buat kata sandi baru untuk akun Anda';

  @override
  String get resetPasswordSuccess_title => 'Kata Sandi Berhasil Diatur Ulang';

  @override
  String get resetPasswordSuccess_body => 'Silakan masuk menggunakan kata sandi baru Anda.';

  @override
  String get errorUnknown => 'Terjadi kesalahan yang tidak diketahui';

  @override
  String formValidationRequired(String fieldName) {
    return '$fieldName wajib diisi';
  }

  @override
  String formValidationMinLength(String fieldName, int minLength) {
    return '$fieldName harus terdiri dari minimal $minLength karakter';
  }

  @override
  String formValidationMaxLength(String fieldName, int maxLength) {
    return '$fieldName tidak boleh lebih dari $maxLength karakter';
  }

  @override
  String get formValidationEmailInvalid => 'Harap masukkan email yang valid';

  @override
  String get formValidationOnlyAlphanumeric => 'Hanya huruf dan angka yang diperbolehkan';

  @override
  String get formValidationPasswordInvalid => 'Kata sandi yang Anda masukkan salah';

  @override
  String get formValidationPasswordCriteriaInvalid => 'Kata sandi tidak memenuhi kriteria yang disyaratkan';

  @override
  String get formPhone => 'Nomor Telepon';
}
