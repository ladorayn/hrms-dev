import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

enum NotificationCode {
  UNKNOWN,
  EMAIL_VERIFICATION,
  RESET_PASSWORD_REQUESTED,
  PASSWORD_UPDATED,
  LOGIN_DEVICE,
  PROFILE_UPDATED,
  DEPARTMENT_CHANGED,
  MANAGER_CHANGED,
  OFFBOARDING_STARTED,
  EXIT_INTERVIEW_SCHEDULE,
  ATTENDANCE_REMINDER,
  ATTENDANCE_NOT_PRESENT,
  OVERTIME_SUBMITTED,
  OVERTIME_UPDATED,
  LEAVE_SUBMITTED,
  LEAVE_UPDATED,
  LEAVE_REMINDER,
  LEAVE_EXPIRING,
  PAYSLIP_AVAILABLE,
  PAYSLIP_REQUEST_UPDATED,
  PERFORMANCE_FORM_OPEN,
  PERFORMANCE_REMINDER,
  PERFORMANCE_SUBMITTED,
  PERFORMANCE_PUBLISHED
}

@Freezed(unionKey: 'type')
class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload.emailVerification({
    required String email,
    required String result,
  }) = EmailVerificationPayload;

  const factory NotificationPayload.resetPasswordRequested({
    required String email,
  }) = ResetPasswordRequestedPayload;

  const factory NotificationPayload.passwordUpdated({
    required String time,
  }) = PasswordUpdatedPayload;

  const factory NotificationPayload.loginDevice({
    required String device,
    required String location,
    required String time,
  }) = LoginDevicePayload;

  // PROFILE
  const factory NotificationPayload.profileUpdated({
    required String actor,
    required String fields,
    required String status,
    required String time,
  }) = ProfileUpdatedPayload;

  const factory NotificationPayload.departmentChanged({
    required String department,
    required String team,
    @JsonKey(name: "effective_date") required String effectiveDate,
  }) = DepartmentChangedPayload;

  const factory NotificationPayload.managerChanged({
    @JsonKey(name: "manager_name") required String managerName,
    @JsonKey(name: "effective_date") required String effectiveDate,
  }) = ManagerChangedPayload;

  // OFFBOARDING
  const factory NotificationPayload.offboardingStarted({
    required String status,
    required String deadline,
  }) = OffboardingStartedPayload;

  const factory NotificationPayload.exitInterviewSchedule({
    required String date,
    required String time,
    required String interviewer,
  }) = ExitInterviewSchedulePayload;

  // ATTENDANCE
  const factory NotificationPayload.attendanceReminder({
    @JsonKey(name: "start_time") required String startTime,
    required int minutes,
  }) = AttendanceReminderPayload;

  const factory NotificationPayload.attendanceNotPresent({
    required int grace,
  }) = AttendanceNotPresentPayload;

  // OVERTIME
  const factory NotificationPayload.overtimeSubmitted({
    required String date,
    required String start,
    required String end,
    required String approver,
  }) = OvertimeSubmittedPayload;

  const factory NotificationPayload.overtimeUpdated({
    required String date,
    required String status,
    required String actor,
  }) = OvertimeUpdatedPayload;

  // LEAVE
  const factory NotificationPayload.leaveSubmitted({
    @JsonKey(name: "leave_type") required String leaveType,
    required String start,
    required String end,
    required String approver,
  }) = LeaveSubmittedPayload;

  const factory NotificationPayload.leaveUpdated({
    @JsonKey(name: "leave_type") required String leaveType,
    required String start,
    required String end,
    required String status,
  }) = LeaveUpdatedPayload;

  const factory NotificationPayload.leaveReminder({
    @JsonKey(name: "leave_type") required String leaveType,
    required String relativeDay,
    required String date,
  }) = LeaveReminderPayload;

  const factory NotificationPayload.leaveExpiring({
    @JsonKey(name: "days_left") required int daysLeft,
    required int balance,
    required String deadline,
  }) = LeaveExpiringPayload;

  // PAYROLL
  const factory NotificationPayload.payslipAvailable({
    required String period,
  }) = PayslipAvailablePayload;

  const factory NotificationPayload.payslipRequestUpdated({
    @JsonKey(name: "request_type") required String requestType,
    required String period,
    required String status,
  }) = PayslipRequestUpdatedPayload;

  // PERFORMANCE
  const factory NotificationPayload.performanceFormOpen({
    required String period,
    @JsonKey(name: "due_date") required String dueDate,
  }) = PerformanceFormOpenPayload;

  const factory NotificationPayload.performanceReminder({
    int? daysLeft,
    int? daysOverdue,
    @JsonKey(name: "due_date") required String dueDate,
  }) = PerformanceReminderPayload;

  const factory NotificationPayload.performanceSubmitted() =
      PerformanceSubmittedPayload;

  const factory NotificationPayload.performancePublished({
    required String period,
  }) = PerformancePublishedPayload;

  // DEFAULT FREEZED JSON
  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

class NotificationDataConverter
    implements JsonConverter<NotificationData, Map<String, dynamic>> {
  const NotificationDataConverter();

  @override
  NotificationData fromJson(Map<String, dynamic> json) {
    final rawCode = (json["code"] as String?) ?? "";

    final code = NotificationCode.values.firstWhere(
      (c) => c.name == rawCode,
      orElse: () => NotificationCode.UNKNOWN,
    );

    final rawPayload = json["data"];

    if (code == NotificationCode.UNKNOWN) {
      return NotificationData(
        title: json["title"],
        message: json["message"],
        code: rawCode,
        data: rawPayload, // <==== return as-is
      );
    }

    if (rawPayload is Map<String, dynamic>) {
      final payloadJson = {
        ...rawPayload,
        "type": code.name,
      };

      return NotificationData(
        title: json["title"],
        message: json["message"],
        code: rawCode,
        data: NotificationPayload.fromJson(payloadJson),
      );
    }

    return NotificationData(
      title: json["title"],
      message: json["message"],
      code: rawCode,
      data: rawPayload,
    );
  }

  @override
  Map<String, dynamic> toJson(NotificationData data) => {};
}

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    String? title,
    String? message,
    required String code,
    required dynamic data,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      const NotificationDataConverter().fromJson(json);
}

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    String? id,
    @JsonKey(name: "notifiable_id") int? notifiableId,
    NotificationData? data,
    @JsonKey(name: "read_at") String? readAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
