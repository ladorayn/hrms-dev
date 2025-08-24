// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get btnYa => 'Ya';

  @override
  String get btnOke => 'Oke';

  @override
  String get btnLanjut => 'Lanjut';

  @override
  String get btnMasuk => 'Masuk';

  @override
  String get btnBatalkan => 'Batalkan';

  @override
  String get btnBatal => 'Batal';

  @override
  String get btnLupaPassword => 'Lupa Password?';

  @override
  String get btnLewati => 'Lewati';

  @override
  String get btnAktifkanSekarang => 'Aktifkan Sekarang';

  @override
  String get btnUlangi => 'Ulangi';

  @override
  String get btnLogin => 'Login';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get btnUpdate => 'Update';

  @override
  String get btnNantiSaja => 'Nanti Saja';

  @override
  String get formIdPerusahaan => 'ID Perusahaan';

  @override
  String get formIdPengguna => 'ID Pengguna';

  @override
  String get formPassword => 'Password';

  @override
  String get formPasswordLama => 'Password Lama';

  @override
  String get formPasswordBaru => 'Password Baru';

  @override
  String get formMasukkanPasswordLama => 'Masukan Password Lama';

  @override
  String get formMasukkanPasswordBaru => 'Masukan Password Baru';

  @override
  String get formKonfirmasiPasswordBaru => 'Konfirmasi Password Baru';

  @override
  String get formKonfirmasiPassword => 'Konfirmasi Password';

  @override
  String get formNoKtpKitias => 'No. KTP/KITAS';

  @override
  String get formEmail => 'Email';

  @override
  String get formPhone => 'Nomor Handphone';

  @override
  String get formHintIdPerusahaan => 'Masukkan ID Perusahaan';

  @override
  String get formHintIdPengguna => 'Masukkan ID Pengguna';

  @override
  String get formHintPassword => 'Masukkan Password';

  @override
  String get formHintPasswordKamu => 'Masukkan Password Kamu';

  @override
  String get formHintPasswordLama => 'Masukkan Password Lama';

  @override
  String get formHintPasswordBaru => 'Masukan 12 karakter atau lebih';

  @override
  String get formHintKonfirmasiPasswordBaru => 'Masukan ulang password';

  @override
  String get formHintNoKtpKitias => 'Masukkan nomor KTP';

  @override
  String get formHintEmail => 'Masukkan Email';

  @override
  String get formHintPhone => 'Contoh: 81234567xxx';

  @override
  String formValidationRequired(Object fieldName) {
    return '$fieldName wajib diisi';
  }

  @override
  String formValidationMinLength(Object fieldName, Object minLength) {
    return '$fieldName kurang dari $minLength digit';
  }

  @override
  String formValidationMaxLength(Object fieldName, Object maxLength) {
    return '$fieldName tidak boleh lebih dari $maxLength digit';
  }

  @override
  String get formValidationEmailInvalid => 'Email tidak valid';

  @override
  String get formValidationOnlyAlphanumeric => 'Hanya boleh huruf dan angka';

  @override
  String get formValidationPasswordInvalid => 'Password yang Anda masukkan tidak sesuai';

  @override
  String get formValidationPasswordCriteriaInvalid => 'Password belum memenuhi kriteria';

  @override
  String get splashScreenDisclaimer => 'Bank berizin dan diawasi oleh Otoritas Jasa Keuangan (OJK) dan merupakan bank peserta penjamin Lembaga Penjamin Simpanan (LPS)';

  @override
  String get onboardScreenTitleSlide1 => 'Satu Solusi Untuk\nSemua Transaksi';

  @override
  String get onboardScreenMessageSlide1 => 'Transaksi sehari-hari menjadi lebih mudah, baik untuk kebutuhan personal maupun bisnis.';

  @override
  String get onboardScreenTitleSlide2 => 'Gratis Transfer\nAntar Bank';

  @override
  String get onboardScreenMessageSlide2 => 'Makin hemat transfer antar bank menggunakan hi Nabung. Dapatkan 100 kali gratis transfer per bulan. Buka hi Nabung sekarang!';

  @override
  String get loginBeforeBindingTitle => 'Masuk';

  @override
  String get loginBeforeBindingDescription => 'Silakan masuk dengan ID perusahaan & ID pengguna yang sudah di informasikan';

  @override
  String get forgotPasswordChangePasswordPasswordBerhasilDisimpan => 'Password Berhasil Disimpan';

  @override
  String get forgotPasswordChangePasswordSilahkanLoginKembali => 'Silakan login kembali untuk melanjutkan.';
}
