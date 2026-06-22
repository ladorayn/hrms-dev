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
  String get resetPasswordEmail_body =>
      'Masukkan email terdaftar Anda untuk mengatur ulang kata sandi';

  @override
  String get resetPasswordEmail_linkSentSnackbar =>
      'Tautan terkirim! Periksa email Anda.';

  @override
  String get resetPasswordCheckEmail_title => 'Silakan Periksa Email Anda';

  @override
  String get resetPasswordCheckEmail_body =>
      'Tautan atur ulang kata sandi telah dikirim ke email Anda yang terdaftar.';

  @override
  String get resetPasswordCheckEmail_didNotReceive => 'Tidak menerima email? ';

  @override
  String get resetPasswordCheckEmail_resend => 'Kirim Ulang Email';

  @override
  String get resetPasswordCheckEmail_resendingSnackbar =>
      'Mengirim ulang tautan...';

  @override
  String get resetPasswordCreate_title => 'Buat Kata Sandi Baru';

  @override
  String get resetPasswordCreate_subtitle =>
      'Buat kata sandi baru untuk akun Anda';

  @override
  String get resetPasswordSuccess_title => 'Kata Sandi Berhasil Diatur Ulang';

  @override
  String get resetPasswordSuccess_body =>
      'Silakan masuk menggunakan kata sandi baru Anda.';

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
  String get formValidationOnlyAlphanumeric =>
      'Hanya huruf dan angka yang diperbolehkan';

  @override
  String get formValidationPasswordInvalid =>
      'Kata sandi yang Anda masukkan salah';

  @override
  String get formValidationPasswordCriteriaInvalid =>
      'Kata sandi tidak memenuhi kriteria yang disyaratkan';

  @override
  String get formPhone => 'Nomor Telepon';

  @override
  String get navHome => 'Beranda';

  @override
  String get navPerformance => 'Kinerja';

  @override
  String get navLeaveRequest => 'Pengajuan Cuti';

  @override
  String get navInbox => 'Kotak Masuk';

  @override
  String get navProfile => 'Profil';

  @override
  String get profileMyProfile => 'Profil Saya';

  @override
  String get profileAttendanceAndOvertime => 'Kehadiran dan Lembur';

  @override
  String get profileMyPayslip => 'Slip Gaji Saya';

  @override
  String get profileChangeLanguage => 'Ubah Bahasa';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageIndonesian => 'Bahasa Indonesia';

  @override
  String get dashboardClockIn => 'Masuk';

  @override
  String get dashboardClockOut => 'Keluar';

  @override
  String get dashboardWorkingTimeDuration => 'Durasi Waktu Kerja';

  @override
  String get dashboardOvertimeDuration => 'Durasi Lembur';

  @override
  String get dashboardOvertimeRequest => 'Permintaan Lembur';

  @override
  String get dashboardNewLeaveRequest => 'Permintaan Cuti Baru';

  @override
  String dashboardOffboardingStatusError(String error) {
    return 'Gagal memuat status offboarding $error';
  }

  @override
  String get dashboardRecentActivity => 'Aktivitas Terbaru';

  @override
  String get dashboardCouldNotLoadActivities => 'Tidak dapat memuat aktivitas';

  @override
  String get dashboardNoRecentActivity => 'Tidak ada aktivitas terbaru.';

  @override
  String get dashboardOffboardingTitle =>
      '🔔 Selesaikan Proses Offboarding Anda!';

  @override
  String get dashboardOffboardingSubtitle =>
      'Mari selesaikan semuanya dengan lancar sebelum Anda pergi';

  @override
  String get dashboardOffboardingStartButton => 'Mulai Proses Offboarding';

  @override
  String splashError(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get profileLogOut => 'Keluar';

  @override
  String profileEmployeeId(String employeeId) {
    return 'ID Karyawan: $employeeId';
  }

  @override
  String get profileStatDays => 'Hari';

  @override
  String get profileStatHours => 'Jam';

  @override
  String get profileStatAttendance => 'Kehadiran';

  @override
  String get profileStatTimeOff => 'Cuti';

  @override
  String get profileStatOvertime => 'Lembur';

  @override
  String get profileErrorLoadingStats => 'Gagal memuat statistik';

  @override
  String profileFailedToLoad(String error) {
    return 'Gagal memuat profil: $error';
  }

  @override
  String get profilePersonalInformation => 'Informasi Pribadi';

  @override
  String get profileEmployeeInformation => 'Informasi Karyawan';

  @override
  String get profileEditProfile => 'Ubah Profil';

  @override
  String get profilePhoto => 'Foto';

  @override
  String get profileName => 'Nama';

  @override
  String get profileGender => 'Jenis Kelamin';

  @override
  String get profileGenderMale => 'Laki-laki';

  @override
  String get profileGenderFemale => 'Perempuan';

  @override
  String get profilePlaceOfBirth => 'Tempat Lahir';

  @override
  String get profileBornDate => 'Tanggal Lahir';

  @override
  String get profileMaritalStatus => 'Status Pernikahan';

  @override
  String get profileMaritalStatusSingle => 'Belum Menikah';

  @override
  String get profileMaritalStatusMarried => 'Menikah';

  @override
  String get profileMaritalStatusDivorced => 'Cerai';

  @override
  String get profileMaritalStatusWidowed => 'Janda/Duda';

  @override
  String get profileBloodType => 'Golongan Darah';

  @override
  String get profileHeight => 'Tinggi Badan';

  @override
  String get profileWeight => 'Berat Badan';

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
  String get profileIdNumber => 'Nomor Identitas';

  @override
  String get profileNpwp => 'Nomor NPWP';

  @override
  String get profileBpjs => 'Nomor BPJS Kesehatan';

  @override
  String get profileCitizenIdAddress => 'Alamat KTP';

  @override
  String get profileResidentialAddress => 'Alamat Domisili';

  @override
  String get profileHobby => 'Hobi';

  @override
  String get profileSocialMedia => 'Media Sosial';

  @override
  String get profileNoSocialMedia =>
      'Tidak ada akun media sosial yang terhubung.';

  @override
  String get profileAddMore => 'Tambah lagi';

  @override
  String get profileUpdating => 'Memperbarui...';

  @override
  String get profileUpdateProfile => 'Perbarui Profil';

  @override
  String profileAttachmentUploadFailed(String error) {
    return 'Gagal mengunggah lampiran: $error';
  }

  @override
  String get profileUpdatedSuccessfully => 'Profil berhasil diperbarui!';

  @override
  String get profileSubmissionFailed => 'Pengiriman Gagal';

  @override
  String profileUpdateFailed(String error) {
    return 'Pembaruan Gagal: $error';
  }

  @override
  String get profilePosition => 'Jabatan';

  @override
  String get profileDepartment => 'Departemen';

  @override
  String get profileJobLevel => 'Level Jabatan';

  @override
  String get profilePrimaryDirectReport => 'Atasan Langsung Utama';

  @override
  String get profileAdditionalDirectReport => 'Atasan Langsung Tambahan';

  @override
  String get profileTeam => 'Tim';

  @override
  String get profileNoTeamAssigned => 'Belum ada tim yang ditugaskan';

  @override
  String get profileEmploymentStartDate => 'Tanggal Mulai Bekerja';

  @override
  String get profileEmploymentEndDate => 'Tanggal Berakhir Bekerja';

  @override
  String get profileUnknown => 'Tidak Diketahui';

  @override
  String get attendanceTab => 'Kehadiran';

  @override
  String get overtimeTab => 'Lembur';

  @override
  String get attendanceClockInLabel => 'Masuk';

  @override
  String get attendanceClockOutLabel => 'Keluar';

  @override
  String get attendanceClockInTitle => 'Masuk';

  @override
  String get attendanceClockOutTitle => 'Keluar';

  @override
  String get attendanceClockInSentence => 'masuk';

  @override
  String get attendanceClockOutSentence => 'keluar';

  @override
  String get attendanceClockInCapitalize => 'Masuk';

  @override
  String get attendanceClockOutCapitalize => 'Keluar';

  @override
  String get attendanceShift => 'Shift';

  @override
  String get attendanceNotes => 'Catatan';

  @override
  String get attendanceLocation => 'Lokasi';

  @override
  String get attendanceDuration => 'Durasi';

  @override
  String get attendanceOvertime => 'Lembur';

  @override
  String get attendanceFilterByStatus => 'Filter berdasarkan Status';

  @override
  String get attendanceStatusAll => 'Semua';

  @override
  String get attendanceStatusWaiting => 'Menunggu';

  @override
  String get attendanceStatusApproved => 'Disetujui';

  @override
  String get attendanceStatusRejected => 'Ditolak';

  @override
  String get attendanceStatLateClockIn => 'Terlambat Masuk';

  @override
  String get attendanceStatEarlyClockOut => 'Pulang Lebih Awal';

  @override
  String get attendanceStatAbsent => 'Tidak Hadir';

  @override
  String get attendanceStatDayOff => 'Hari Libur';

  @override
  String get attendancePendingRequest => 'Permintaan Tertunda';

  @override
  String get attendanceApprovedRequest => 'Permintaan Disetujui';

  @override
  String get attendanceRejectedRequest => 'Permintaan Ditolak';

  @override
  String get attendanceOvertimeRequestTitle => 'Permintaan Lembur';

  @override
  String get attendanceOvertimeDuration => 'Durasi Lembur';

  @override
  String get attendanceNoDataForPeriod =>
      'Tidak ada data kehadiran untuk periode ini.';

  @override
  String get attendanceNoOvertimeDataForPeriod =>
      'Tidak ada data lembur untuk periode ini.';

  @override
  String get attendanceErrorTryAgainLater =>
      'Kesalahan: Silakan coba lagi nanti!';

  @override
  String get attendanceNetworkError => 'Terjadi kesalahan jaringan.';

  @override
  String attendanceUnexpectedError(String error) {
    return 'Terjadi kesalahan yang tidak terduga: $error';
  }

  @override
  String attendanceTodayWithDay(String day) {
    return 'Hari ini, $day';
  }

  @override
  String attendanceTodayWithDate(String date) {
    return 'Hari ini, $date';
  }

  @override
  String get attendanceToday => 'Hari ini';

  @override
  String get attendanceYesterday => 'Kemarin';

  @override
  String attendanceDaysAgo(int count) {
    return '$count hari yang lalu';
  }

  @override
  String get attendanceLocationConfirmed => 'Lokasi Terkonfirmasi';

  @override
  String attendanceLocationConfirmedBody(String activity) {
    return 'Silakan selesaikan verifikasi wajah untuk melanjutkan $activity. Langkah ini membantu memastikan pelacakan kehadiran yang aman dan akurat.';
  }

  @override
  String get attendanceStartVerification => 'Mulai Verifikasi';

  @override
  String get attendanceRegisterYourFace => 'Daftarkan Wajah Anda';

  @override
  String attendanceVerificationInProgress(String activity) {
    return 'Verifikasi $activity Sedang Berlangsung';
  }

  @override
  String attendanceLocationVerificationBody(String activity) {
    return 'Kami sedang memverifikasi lokasi Anda saat ini sebelum menyelesaikan proses $activity. Pastikan akses lokasi diaktifkan dan Anda berada dalam area kerja yang diizinkan.';
  }

  @override
  String attendanceLocationNotValid(String distance, String maxRadius) {
    return 'Lokasi tidak valid. Anda berjarak ~${distance}m. Radius maksimum adalah ${maxRadius}m.';
  }

  @override
  String attendanceCouldNotGetLocation(String error) {
    return 'Kesalahan: Tidak dapat mendapatkan lokasi. $error';
  }

  @override
  String get attendancePleaseFillRequiredFields =>
      'Harap isi semua kolom yang wajib diisi.';

  @override
  String get attendanceNoActiveAttendance =>
      'Tidak ada kehadiran aktif yang ditemukan.';

  @override
  String attendanceSaveActivity(String activity) {
    return 'Simpan $activity';
  }

  @override
  String get attendanceEditRequest => 'Ubah Permintaan Kehadiran';

  @override
  String get attendanceSubmittedRecord => 'Catatan yang Diajukan';

  @override
  String get attendanceAdjustment => 'Penyesuaian Kehadiran';

  @override
  String get attendanceClockInField => 'Jam Masuk';

  @override
  String get attendanceClockOutField => 'Jam Keluar';

  @override
  String get attendanceAdjustmentNotes => 'Catatan Penyesuaian';

  @override
  String get attendanceSendAdjustmentRequest => 'Kirim Permintaan Penyesuaian';

  @override
  String get attendanceUpdateSuccess => 'Pembaruan Berhasil!';

  @override
  String get attendanceUpdateFailed => 'Pembaruan Gagal!';

  @override
  String attendanceUpdateFailedWithError(String error) {
    return 'Pembaruan Gagal: $error';
  }

  @override
  String get attendanceFaceRegistration => 'Pendaftaran Wajah';

  @override
  String get attendanceFaceVerification => 'Verifikasi Wajah';

  @override
  String get attendanceFaceStepFrontInstruction =>
      'Hadapkan wajah Anda langsung ke kamera dan pastikan wajah terlihat jelas';

  @override
  String get attendanceFaceStepRightInstruction =>
      'Putar kepala Anda perlahan ke kanan dan tetap dalam bingkai';

  @override
  String get attendanceFaceStepLeftInstruction =>
      'Putar kepala Anda perlahan ke kiri dan tetap dalam bingkai';

  @override
  String get attendanceFaceStepUploadingInstruction =>
      'Mengunggah foto dan memverifikasi wajah...';

  @override
  String get attendanceFaceStepFailedInstruction => 'Pendaftaran Wajah Gagal!';

  @override
  String get attendanceFaceStepSuccessInstruction =>
      'Pendaftaran Wajah Berhasil!';

  @override
  String get attendanceFaceStepTakeFrontPhoto => 'Ambil Foto Depan';

  @override
  String get attendanceFaceStepTakeRightPhoto => 'Ambil Foto Kanan';

  @override
  String get attendanceFaceStepTakeLeftPhoto => 'Ambil Foto Kiri';

  @override
  String get attendanceFaceStepUploading => 'Mengunggah...';

  @override
  String get attendanceFaceStepTryAgain => 'Coba Lagi';

  @override
  String get attendanceFaceStepDone => 'Selesai';

  @override
  String get attendanceVerificationInitialInstruction =>
      'Hadapkan wajah Anda langsung ke kamera dan pastikan wajah terlihat jelas';

  @override
  String get attendanceVerificationLoadingInstruction => 'Memverifikasi...';

  @override
  String get attendanceVerificationSuccessInstruction =>
      'Verifikasi Wajah Berhasil!';

  @override
  String get attendanceVerificationFailedInstruction =>
      'Verifikasi Wajah Gagal!';

  @override
  String get attendanceVerificationTakePhoto => 'Ambil Foto';

  @override
  String get activityLogClockIn => 'Masuk';

  @override
  String get activityLogClockOut => 'Keluar';

  @override
  String get activityLogOvertimeCreated => 'Lembur Dibuat';

  @override
  String get activityLogOvertimeApproved => 'Lembur Disetujui';

  @override
  String get activityLogOvertimeRejected => 'Lembur Ditolak';

  @override
  String get activityLogOvertimeUpdated => 'Lembur Diperbarui';

  @override
  String get activityLogUnknown => 'Aktivitas Tidak Diketahui';

  @override
  String get overtimeRequestTitle => 'Permintaan Lembur';

  @override
  String get overtimeRequestDate => 'Tanggal Permintaan';

  @override
  String get overtimeStartTime => 'Waktu Mulai';

  @override
  String get overtimeEndTime => 'Waktu Selesai';

  @override
  String get overtimeNotes => 'Catatan Lembur';

  @override
  String get overtimeRequestButton => 'Ajukan Lembur';

  @override
  String get overtimeSubmittedSuccess => 'Permintaan lembur berhasil diajukan!';

  @override
  String get overtimeEditRequest => 'Ubah Permintaan Lembur';

  @override
  String get overtimeAdjustment => 'Penyesuaian Lembur';

  @override
  String get overtimeAdjustmentNotes => 'Catatan Penyesuaian';

  @override
  String get overtimeSendAdjustmentRequest => 'Kirim Permintaan Penyesuaian';

  @override
  String get overtimeAdjustmentSentSuccess =>
      'Permintaan penyesuaian berhasil dikirim!';

  @override
  String get overtimeNoAttendanceLog =>
      'Tidak ada catatan kehadiran untuk tanggal ini.';

  @override
  String get leaveBalance => 'Saldo Cuti';

  @override
  String get leaveTimeOffUsed => 'Cuti Terpakai';

  @override
  String get leaveTimeOff => 'Sisa Cuti';

  @override
  String get leaveDays => 'Hari';

  @override
  String get leaveYourRequests => 'Pengajuan Cuti Anda';

  @override
  String get leaveNoHistoryFound => 'Riwayat cuti tidak ditemukan.';

  @override
  String leaveFailedToLoadHistory(String error) {
    return 'Gagal memuat riwayat: $error';
  }

  @override
  String get leaveRequestDetail => 'Detail Pengajuan Cuti';

  @override
  String get leaveRequestDetailSection => 'Detail Pengajuan';

  @override
  String get leaveType => 'Jenis Cuti';

  @override
  String get leaveDuration => 'Durasi';

  @override
  String get leaveReason => 'Alasan';

  @override
  String get leaveAttachment => 'Lampiran';

  @override
  String get leaveApproval => 'Persetujuan';

  @override
  String get leaveNoApproversAssigned => 'Belum ada penyetuju yang ditugaskan.';

  @override
  String leaveDaysCount(int count) {
    return '($count Hari)';
  }

  @override
  String get leaveNewRequest => 'Pengajuan Cuti Baru';

  @override
  String get leaveStartDate => 'Tanggal Mulai';

  @override
  String get leaveEndDate => 'Tanggal Selesai';

  @override
  String get leaveSendRequest => 'Kirim Permintaan';

  @override
  String get leaveSubmitting => 'Mengirim...';

  @override
  String get leaveSubmittedSuccess => 'Pengajuan cuti berhasil dikirim!';

  @override
  String get leaveSubmittedFailed => 'Pengajuan cuti gagal dikirim!';

  @override
  String get leaveFailedToLoadTypes => 'Gagal memuat jenis cuti';

  @override
  String get leaveCouldNotLoadBalance => 'Tidak dapat memuat saldo cuti:';

  @override
  String get leaveSubmissionFailedPrefix => 'Pengiriman Gagal:';

  @override
  String get leaveTypeAnnualLeave => 'Cuti Tahunan';

  @override
  String get leaveTypeSickLeave => 'Cuti Sakit';

  @override
  String get leaveTypeMaternityLeave => 'Cuti Melahirkan';

  @override
  String get leaveTypeMenstrualLeave => 'Cuti Haid';

  @override
  String get leaveTypeMarriageLeave => 'Cuti Menikah';

  @override
  String get leaveTypeChildsMarriageLeave => 'Cuti Menikahkan Anak';

  @override
  String get leaveTypePaternityLeave => 'Cuti Ayah';

  @override
  String get leaveTypeBereavementLeave => 'Cuti Duka';

  @override
  String get leaveTypeNaturalDisasterLeave => 'Cuti Bencana Alam';

  @override
  String get leaveTypeUnpaidLeave => 'Cuti Tanpa Bayar';

  @override
  String get leaveTypeExtendedLeave => 'Cuti Perpanjangan';

  @override
  String get leaveTypeStudyLeave => 'Cuti Belajar';

  @override
  String get leaveTypeReligiousLeave => 'Cuti Keagamaan';

  @override
  String get leaveTypeUnknown => 'Tidak Diketahui';

  @override
  String get offboardingProcess => 'Proses Offboarding';

  @override
  String get offboardingCompleteTasksTitle =>
      'Selesaikan Tugas Offboarding Anda';

  @override
  String get offboardingCompleteTasksSubtitle =>
      'Selesaikan tugas offboarding Anda untuk memastikan proses keluar berjalan lancar';

  @override
  String offboardingError(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get offboardingStart => 'Mulai';

  @override
  String get offboardingEdit => 'Ubah';

  @override
  String get offboardingExitInterviewSchedule => 'Jadwal Wawancara Keluar';

  @override
  String get offboardingExitInterviewForm => 'Formulir Wawancara Keluar';

  @override
  String get offboardingWorkHandover =>
      'Serah Terima Pekerjaan & Tanggung Jawab';

  @override
  String get offboardingDocumentHandover => 'Serah Terima Dokumen';

  @override
  String get offboardingResponsibilityHandover => 'Serah Terima Tanggung Jawab';

  @override
  String get offboardingDate => 'Tanggal';

  @override
  String get offboardingTime => 'Waktu';

  @override
  String get offboardingInterviewer => 'Pewawancara';

  @override
  String get offboardingHandoverSubmitted => 'Serah terima berhasil dikirim!';

  @override
  String get offboardingFillWorksFields =>
      'Harap isi semua kolom \"Pekerjaan\".';

  @override
  String get offboardingFillDocumentNameFields =>
      'Harap isi semua kolom \"Nama Dokumen\".';

  @override
  String get offboardingSelectRecipient =>
      'Harap pilih setidaknya satu penerima untuk semua item.';

  @override
  String get offboardingIdNotFound =>
      'ID offboarding tidak ditemukan. Silakan coba lagi.';

  @override
  String offboardingErrorLoadingData(String error) {
    return 'Gagal memuat data: $error';
  }

  @override
  String get offboardingFailedToLoadData => 'Gagal memuat data';

  @override
  String get offboardingAdd => 'Tambah';

  @override
  String get offboardingSubmitting => 'Mengirim...';

  @override
  String get offboardingSubmit => 'Kirim';

  @override
  String get offboardingWorks => 'Pekerjaan';

  @override
  String get offboardingDocumentName => 'Nama Dokumen';

  @override
  String get offboardingHandedOverTo => 'Diserahkan Kepada';

  @override
  String get offboardingEmployees => 'Karyawan';

  @override
  String get offboardingSearchEmployee => 'Cari Karyawan';

  @override
  String get offboardingDone => 'Selesai';

  @override
  String get offboardingWork => 'Pekerjaan';

  @override
  String get offboardingValidating => 'Memvalidasi...';

  @override
  String get offboardingValidateNow => 'Validasi Sekarang';

  @override
  String get offboardingWorkValidated => 'Pekerjaan berhasil divalidasi!';

  @override
  String get offboardingHandoverValidated =>
      'Serah terima berhasil divalidasi!';

  @override
  String get offboardingNoItemsFound => 'Tidak ada item yang ditemukan';

  @override
  String get offboardingNoDocumentsFound => 'Tidak ada dokumen yang ditemukan';

  @override
  String get offboardingFormSubmitted => 'Formulir berhasil dikirim!';

  @override
  String get offboardingSubmissionFailed => 'Pengiriman Gagal';

  @override
  String get offboardingSubmitForm => 'Kirim Formulir';

  @override
  String get offboardingNotes => 'Catatan';

  @override
  String get offboardingSelectOption => 'Pilih salah satu opsi';

  @override
  String offboardingUnknownFieldType(String type) {
    return 'Jenis kolom tidak dikenal: $type';
  }

  @override
  String get offboardingConfirmSubmit =>
      'Apakah Anda yakin ingin mengirim formulir wawancara keluar ini?';

  @override
  String get offboardingConfirmNoChanges =>
      'Setelah dikirim, Anda tidak dapat melakukan perubahan.';

  @override
  String get offboardingCancel => 'Batal';

  @override
  String get performanceTitle => 'Kinerja';

  @override
  String get performanceMyOkr => 'OKR Saya';

  @override
  String get performanceSupervisorAssessment => 'Penilaian Atasan';

  @override
  String get performanceSelfAssessment => 'Penilaian Diri';

  @override
  String get performanceDueDate => 'Batas Waktu ';

  @override
  String get performanceNotAvailable => 'Tidak Tersedia';

  @override
  String performanceErrorLoadingSelfAssessments(String error) {
    return 'Gagal memuat Penilaian Diri: $error';
  }

  @override
  String performanceErrorLoadingOkr(String error) {
    return 'Gagal memuat OKR: $error';
  }

  @override
  String get performanceLoadingSupervisorAssessments =>
      'Memuat penilaian atasan...';

  @override
  String performanceErrorLoadingSupervisorAssessments(String error) {
    return 'Gagal memuat penilaian atasan: $error';
  }

  @override
  String get performanceSupervisorDataNotAvailable =>
      'Data penilaian atasan tidak tersedia.';

  @override
  String performanceSelfAssessmentWithPeriod(String period) {
    return 'Penilaian Diri - $period';
  }

  @override
  String performanceMyOkrWithPeriod(String period) {
    return 'OKR Saya - $period';
  }

  @override
  String get performanceOkrTab => 'OKR';

  @override
  String get performanceDashboardTab => 'Dasbor';

  @override
  String get performanceObjective => 'TUJUAN';

  @override
  String get performanceKeyResult => 'HASIL KUNCI';

  @override
  String get performanceNoObjectivesFound => 'Tidak ada tujuan yang ditemukan';

  @override
  String get performanceNoGraphData => 'Tidak ada data grafik yang tersedia';

  @override
  String get performanceNoTitle => 'Tanpa Judul';

  @override
  String get performanceObjectiveFallback => 'Tujuan';

  @override
  String get performanceMetricFallback => 'Metrik';

  @override
  String get performanceSelectRange => 'Pilih Rentang';

  @override
  String performanceErrorLoadingGraph(String error) {
    return 'Gagal memuat grafik: $error';
  }

  @override
  String get performanceAvgActual => 'Rata-rata Aktual';

  @override
  String get performanceAvgTarget => 'Rata-rata Target';

  @override
  String get performanceApplyFilter => 'Terapkan Filter';

  @override
  String get performanceStartDate => 'Tanggal Mulai';

  @override
  String get performanceEndDate => 'Tanggal Selesai';

  @override
  String get performanceTo => 'HINGGA';

  @override
  String get performanceWeek => 'Minggu';

  @override
  String get performanceMonth => 'Bulan';

  @override
  String get performanceQuarter => 'Kuartal';

  @override
  String get performanceYear => 'Tahun';

  @override
  String performanceWeekLabel(int number) {
    return 'Minggu $number';
  }

  @override
  String get performanceYearRequired => 'Tahun*';

  @override
  String get performanceKeyResultData => 'Data Hasil Kunci';

  @override
  String get performanceFillRequiredFields =>
      'Harap isi semua kolom wajib dengan benar.';

  @override
  String get performanceProgressSaved => 'Progres berhasil disimpan!';

  @override
  String get performanceNetworkError => 'Terjadi kesalahan jaringan.';

  @override
  String performanceUnexpectedError(String error) {
    return 'Terjadi kesalahan yang tidak terduga: $error';
  }

  @override
  String get performanceRequired => 'Wajib diisi';

  @override
  String get performanceTargetForPeriod => 'Target untuk periode ini';

  @override
  String get performanceSaving => 'Menyimpan...';

  @override
  String get performanceSave => 'Simpan';

  @override
  String performanceError(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get performanceTeamMemberInformation => 'Informasi Anggota Tim';

  @override
  String get performanceEmployeeName => 'Nama Karyawan';

  @override
  String get performancePosition => 'Jabatan';

  @override
  String get performanceJobLevel => 'Tingkat Jabatan';

  @override
  String get performanceDepartment => 'Departemen';

  @override
  String get performanceSubmittedOn => 'Dikirim pada';

  @override
  String get performanceValidatedOn => 'Divalidasi pada';

  @override
  String get performanceEmployeeInformation => 'Informasi Karyawan';

  @override
  String get performanceCurrentPosition => 'Jabatan Saat Ini';

  @override
  String get performanceCurrentJobLevel => 'Tingkat Jabatan Saat Ini';

  @override
  String get performanceTargetPosition => 'Jabatan Target';

  @override
  String get performanceTargetJobLevel => 'Tingkat Jabatan Target';

  @override
  String get performanceEmployeeStartDate => 'Tanggal Mulai Karyawan';

  @override
  String get performanceAssessmentSchedule => 'Jadwal Penilaian';

  @override
  String get performanceDate => 'Tanggal';

  @override
  String get performanceTime => 'Waktu';

  @override
  String get performanceNotes => 'Catatan';

  @override
  String get performanceAssessmentForm => 'Formulir Penilaian';

  @override
  String get performanceSupervisorAssessmentSchedule =>
      'Jadwal Penilaian Atasan';

  @override
  String get performanceSupervisorAssessmentList => 'Daftar Penilaian Atasan';

  @override
  String performanceErrorLoadingAssessments(String error) {
    return 'Gagal memuat penilaian: $error\nTarik ke bawah untuk mencoba lagi.';
  }

  @override
  String get performanceNoSupervisorAssessments =>
      'Tidak ada penilaian atasan yang ditemukan.';

  @override
  String performanceErrorLoadingDetails(String error) {
    return 'Gagal memuat detail: $error';
  }

  @override
  String get performanceFormSubmitted => 'Formulir berhasil dikirim!';

  @override
  String performanceSubmissionFailed(String error) {
    return 'Pengiriman gagal: $error';
  }

  @override
  String get performanceAssessmentReadOnly =>
      'Penilaian ini hanya dapat dibaca.';

  @override
  String get performanceSubmitSelfAssessment => 'Kirim Penilaian Diri';

  @override
  String get performanceSaveAsDraft => 'Simpan sebagai Draf';

  @override
  String get performanceConfirmSubmitSelfAssessment =>
      'Apakah Anda yakin ingin mengirim formulir penilaian diri ini?';

  @override
  String get performanceConfirmNoChanges =>
      'Setelah dikirim, Anda tidak dapat melakukan perubahan.';

  @override
  String get performanceCancel => 'Batal';

  @override
  String get performanceSubmitForm => 'Kirim Formulir';

  @override
  String performanceUnknownType(String type) {
    return 'Jenis tidak dikenal: $type';
  }

  @override
  String get performanceEmployeeSubmittedReadOnly =>
      'Ini adalah penilaian yang dikirim karyawan (Hanya Baca).';

  @override
  String get performanceAddComments => 'Tambahkan komentar Anda di sini...';

  @override
  String get performanceEnterComment => 'Masukkan komentar...';

  @override
  String get performanceValidationSuccessful => 'Validasi Berhasil';

  @override
  String performanceFailed(String error) {
    return 'Gagal: $error';
  }

  @override
  String get performanceValidationCompleteReadOnly =>
      'Validasi selesai dan hanya dapat dibaca.';

  @override
  String get performanceValidateSelfAssessment => 'Validasi Penilaian Diri';

  @override
  String get performanceMySelfAssessment => 'Penilaian Diri Saya';

  @override
  String get performanceTeamMemberSelfAssessment =>
      'Penilaian Diri Anggota Tim';

  @override
  String get performanceAssessmentValidationTab => 'Validasi Penilaian';

  @override
  String get performanceSupervisorSubmitted =>
      'Penilaian Atasan berhasil dikirim!';

  @override
  String get performanceAssessmentReadOnlyShort =>
      'Penilaian hanya dapat dibaca.';

  @override
  String get performanceSaveDraft => 'Simpan Draf';

  @override
  String get performanceSubmit => 'Kirim';

  @override
  String get performanceConfirmSubmitSupervisor =>
      'Apakah Anda yakin ingin mengirim formulir penilaian atasan ini?';

  @override
  String get performanceConfirmSaveDraft =>
      'Apakah Anda yakin ingin menyimpan draf ini?';

  @override
  String get performanceCanEditDraftLater =>
      'Anda dapat melanjutkan pengeditan draf nanti.';

  @override
  String get inboxTitle => 'Kotak Masuk';

  @override
  String get inboxEmpty => 'Tidak ada notifikasi di kotak masuk Anda.';

  @override
  String get inboxError => 'Terjadi kesalahan';

  @override
  String get inboxNoTitle => 'Tanpa Judul';

  @override
  String get inboxNoContent => 'Tidak ada konten';

  @override
  String get inboxNotAvailable => 'Tidak Tersedia';

  @override
  String get payslipMyPayslip => 'Slip Gaji Saya';

  @override
  String get payslipPeriodFallback => 'Periode Slip Gaji';

  @override
  String get payslipViewPayslip => 'Lihat Slip Gaji';

  @override
  String get payslipRequestAccess => 'Minta Akses';

  @override
  String get payslipPrintRequest => 'Permintaan Cetak';

  @override
  String payslipLastMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Bulan Terakhir',
      one: '1 Bulan Terakhir',
    );
    return '$_temp0';
  }

  @override
  String payslipListError(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get payslipNotAvailable => 'Tidak Tersedia';

  @override
  String payslipTitleWithPeriod(String period) {
    return 'Slip Gaji $period';
  }

  @override
  String get payslipLoading => 'Memuat';

  @override
  String payslipDetailLoadFailed(String error) {
    return 'Gagal memuat detail slip gaji: $error';
  }

  @override
  String get payslipEnterPassword => 'Silakan masukkan kata sandi Anda.';

  @override
  String get payslipIdMissing => 'Kesalahan: ID slip gaji tidak ditemukan.';

  @override
  String payslipAccessFailed(String error) {
    return 'Akses Gagal: $error';
  }

  @override
  String get payslipEnterPasswordToContinue =>
      'Masukkan Kata Sandi Anda untuk Melanjutkan';

  @override
  String get payslipPasswordSecurityMessage =>
      'Untuk alasan keamanan, silakan masukkan kata sandi akun Anda untuk mengakses slip gaji yang dipilih.';

  @override
  String get payslipAccessPayslip => 'Akses Slip Gaji';

  @override
  String get payslipFallbackLabel => 'Slip Gaji';

  @override
  String get payslipPrintPayslipRequest => 'Permintaan Cetak Slip Gaji';

  @override
  String get payslipSendPrintRequest => 'Kirim Permintaan Cetak';

  @override
  String get payslipPrintRequestSubmitted =>
      'Permintaan Cetak Slip Gaji Telah Dikirim';

  @override
  String get payslipPrintRequestSubmittedBody =>
      'Kami telah menerima permintaan Anda untuk mencetak slip gaji. Mohon tunggu sementara kami memprosesnya; Anda akan diberitahu ketika slip siap diambil.';

  @override
  String get payslipPayrollDetails => 'Detail Penggajian';

  @override
  String get payslipConfidential => '*RAHASIA';

  @override
  String get payslipPayrollPeriod => 'Periode Penggajian';

  @override
  String get payslipEmployeeId => 'ID Karyawan';

  @override
  String get payslipJobLevel => 'Tingkat Jabatan';

  @override
  String get payslipTaxpayerId => 'Nomor Pokok Wajib Pajak (NPWP)';

  @override
  String get payslipEmployeeName => 'Nama Karyawan';

  @override
  String get payslipPosition => 'Jabatan';

  @override
  String get payslipDepartment => 'Departemen';

  @override
  String get payslipBasicSalary => 'Gaji Pokok';

  @override
  String get payslipOvertime => 'Lembur';

  @override
  String get payslipEarnings => 'Pendapatan';

  @override
  String get payslipDeductions => 'Potongan';

  @override
  String get payslipTakeHomePay => 'Gaji Bersih';

  @override
  String get payslipNotes => 'Catatan';

  @override
  String get payslipNotesDisclaimer =>
      'INI ADALAH CETAKAN YANG DIHASILKAN KOMPUTER DAN TIDAK MEMERLUKAN TANDA TANGAN\n\nHARAP DIPERHATIKAN, ISI PERNYATAAN INI ADALAH RAHASIA KECUALI ANDA DIMINTA UNTUK MENGUNGKAPKANNYA UNTUK KEPERLUAN PAJAK, HUKUM, ATAU KEPENTINGAN PEMERINTAH. SETIAP PELANGGARAN ATAS KEWAJIBAN MENJAGA KERAHASIAAN INI AKAN DIKENAKAN SANKSI, YANG MUNGKIN BERUPA TINDAKAN KEDISIPLINAN.';

  @override
  String get payslipBenefits => 'Tunjangan';

  @override
  String get payslipBenefitsDescription =>
      'Berikut tunjangan yang Anda terima dari perusahaan, namun tidak termasuk dalam gaji bersih (THP).';

  @override
  String get payslipBenefitWorkAccident => 'Jaminan Kecelakaan Kerja';

  @override
  String get payslipBenefitDeath => 'Jaminan Kematian';

  @override
  String get payslipBenefitOldAge => 'Jaminan Hari Tua';

  @override
  String get payslipBenefitPension => 'Jaminan Pensiun';

  @override
  String get payslipBenefitHealth => 'BPJS Kesehatan';

  @override
  String get payslipTotalBenefits => 'Total Tunjangan';

  @override
  String get payslipStatusLocked => 'Terkunci';

  @override
  String get payslipStatusRequestSent => 'Permintaan telah dikirim';

  @override
  String payslipStatusDaysLeft(int days) {
    return 'Sisa $days Hari';
  }

  @override
  String get payslipStatusUnknown => 'Tidak Diketahui';

  @override
  String get payslipPrintStatusProcessed => 'Diproses';

  @override
  String get payslipPrintStatusPending => 'Menunggu';

  @override
  String get payslipPrintStatusReady => 'Siap';

  @override
  String get coreSelect => 'Pilih';

  @override
  String get coreSelectOption => 'Pilih salah satu opsi';

  @override
  String get coreSelectItems => 'Pilih Item';

  @override
  String get coreSearch => 'Cari...';

  @override
  String get coreDone => 'Selesai';

  @override
  String get coreConfirmOk => 'OK';

  @override
  String get coreSelectImage => 'Pilih Gambar';

  @override
  String get coreUploadFile => 'Unggah Berkas';

  @override
  String get coreAttachments => 'Lampiran';

  @override
  String get coreSocialMedia => 'Media Sosial';

  @override
  String get coreSocialMediaHint => 'Jenis';

  @override
  String get coreCountries => 'Negara';

  @override
  String get coreCountryCode => 'Kode';

  @override
  String coreUnknownFieldType(String type) {
    return 'Jenis bidang tidak dikenal: $type';
  }

  @override
  String get coreNotAvailable => '-';

  @override
  String coreErrorWithDetail(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get coreUpdatedJustNow => 'Diperbarui baru saja';

  @override
  String coreUpdatedDaysAgo(int days) {
    return 'diperbarui ${days}h lalu';
  }

  @override
  String coreUpdatedHoursAgo(int hours) {
    return 'diperbarui ${hours}j lalu';
  }

  @override
  String coreUpdatedMinutesAgo(int minutes) {
    return 'diperbarui ${minutes}m lalu';
  }

  @override
  String get attendanceLocationServicesDisabled =>
      'Layanan lokasi dinonaktifkan.';

  @override
  String get attendanceLocationPermissionDenied => 'Izin lokasi ditolak.';

  @override
  String get attendanceLocationPermissionDeniedForever =>
      'Izin lokasi ditolak secara permanen. Kami tidak dapat meminta izin.';

  @override
  String get attendanceManualCaptureBypass =>
      'Tangkapan manual (lewati lokasi)';
}
