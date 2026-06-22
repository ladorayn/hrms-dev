import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

String toCamelCase(String snakeCase) {
  final parts = snakeCase.toLowerCase().split('_');
  if (parts.isEmpty) return '';
  return [
    parts.first,
    ...parts.skip(1).map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1);
    })
  ].join();
}

enum NotificationCode {
  // Security
  @JsonValue('EMAIL_VERIFICATION')
  emailVerification,
  @JsonValue('RESET_PASSWORD_REQUESTED')
  resetPasswordRequested,
  @JsonValue('PASSWORD_UPDATED')
  passwordUpdated,
  @JsonValue('LOGIN_DEVICE')
  loginDevice,

  // Employee Profile & Dokumen
  @JsonValue('PROFILE_UPDATED')
  profileUpdated,
  @JsonValue('DEPARTMENT_CHANGED')
  departmentChanged,
  @JsonValue('MANAGER_CHANGED')
  managerChanged,

  // Offboarding
  @JsonValue('OFFBOARDING_STARTED')
  offboardingStarted,
  @JsonValue('EXIT_INTERVIEW_SCHEDULE')
  exitInterviewSchedule,
  @JsonValue('OFFBOARDING_VALIDATE_HANDOVER')
  offboardingValidateHandover,

  // Attendance, Timesheet, Overtime
  @JsonValue('ATTENDANCE_REMINDER')
  attendanceReminder,
  @JsonValue('ATTENDANCE_NOT_PRESENT')
  attendanceNotPresent,
  @JsonValue('OVERTIME_SUBMITTED')
  overtimeSubmitted,
  @JsonValue('OVERTIME_UPDATED')
  overtimeUpdated,

  // Leave
  @JsonValue('LEAVE_SUBMITTED')
  leaveSubmitted,
  @JsonValue('LEAVE_UPDATED')
  leaveUpdated,
  @JsonValue('LEAVE_REMINDER')
  leaveReminder,
  @JsonValue('LEAVE_EXPIRING')
  leaveExpiring,

  // Payroll
  @JsonValue('PAYSLIP_AVAILABLE')
  payslipAvailable,
  @JsonValue('PAYSLIP_REQUEST_UPDATED')
  payslipRequestUpdated,

  // Performance
  @JsonValue('PERFORMANCE_FORM_OPEN')
  performanceFormOpen,
  @JsonValue('PERFORMANCE_REMINDER')
  performanceReminder,
  @JsonValue('PERFORMANCE_SUBMITTED')
  performanceSubmitted,
  @JsonValue('PERFORMANCE_PUBLISHED')
  performancePublished,
  @JsonValue('SUPERVISOR_ASSESSMENT_SCHEDULE')
  supervisorAssessmentSchedule,

  @JsonValue('BUSINESS_TRIP_STATUS_UPDATED')
  businessTripStatusUpdated,

  // Default fallback
  @JsonValue('UNKNOWN')
  unknown,
}

@Freezed(unionKey: 'type')
class NotificationPayload with _$NotificationPayload {
  // Security
  const factory NotificationPayload.emailVerification({
    String? email,
    String? result,
  }) = EmailVerificationPayload;

  const factory NotificationPayload.resetPasswordRequested({
    String? email,
  }) = ResetPasswordRequestedPayload;

  const factory NotificationPayload.passwordUpdated({
    String? time,
  }) = PasswordUpdatedPayload;

  const factory NotificationPayload.loginDevice({
    String? device,
    String? location,
    String? time,
  }) = LoginDevicePayload;

  // PROFILE & STRUCTURE
  const factory NotificationPayload.profileUpdated({
    String? actor,
    String? fields,
    String? status,
    String? time,
    @JsonKey(name: "user_id") String? userId,
    String? email,
  }) = ProfileUpdatedPayload;

  const factory NotificationPayload.departmentChanged({
    String? department,
    String? team,
    @JsonKey(name: "effective_date") String? effectiveDate,
  }) = DepartmentChangedPayload;

  const factory NotificationPayload.managerChanged({
    @JsonKey(name: "manager_name") String? managerName,
    @JsonKey(name: "effective_date") String? effectiveDate,
  }) = ManagerChangedPayload;

  // OFFBOARDING
  const factory NotificationPayload.offboardingStarted({
    String? status,
    String? deadline,
  }) = OffboardingStartedPayload;

  const factory NotificationPayload.exitInterviewSchedule({
    String? id,
    String? date,
    String? time,
    String? interviewer,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
  }) = ExitInterviewSchedulePayload;

  // ATTENDANCE & OVERTIME
  const factory NotificationPayload.attendanceReminder({
    @JsonKey(name: "start_time") String? startTime,
    int? minutes,
  }) = AttendanceReminderPayload;

  const factory NotificationPayload.attendanceNotPresent({
    int? grace,
  }) = AttendanceNotPresentPayload;

  const factory NotificationPayload.overtimeSubmitted({
    String? date,
    String? start,
    String? end,
    String? approver,
  }) = OvertimeSubmittedPayload;

  const factory NotificationPayload.overtimeUpdated({
    String? date,
    String? status,
    String? actor,
  }) = OvertimeUpdatedPayload;

  // LEAVE
  const factory NotificationPayload.leaveSubmitted({
    @JsonKey(name: "leave_type") String? leaveType,
    String? start,
    String? end,
    String? approver,
  }) = LeaveSubmittedPayload;

  const factory NotificationPayload.leaveUpdated({
    @JsonKey(name: "leave_type") String? leaveType,
    String? start,
    String? end,
    String? status,
  }) = LeaveUpdatedPayload;

  const factory NotificationPayload.leaveReminder({
    @JsonKey(name: "leave_type") String? leaveType,
    String? relativeDay,
    String? date,
  }) = LeaveReminderPayload;

  const factory NotificationPayload.leaveExpiring({
    @JsonKey(name: "days_left") int? daysLeft,
    int? balance,
    String? deadline,
  }) = LeaveExpiringPayload;

  // PAYROLL
  const factory NotificationPayload.payslipAvailable({
    String? period,
  }) = PayslipAvailablePayload;

  const factory NotificationPayload.payslipRequestUpdated({
    @JsonKey(name: "request_type") String? requestType,
    String? period,
    String? status,
  }) = PayslipRequestUpdatedPayload;

  // PERFORMANCE
  const factory NotificationPayload.performanceFormOpen({
    String? period,
    @JsonKey(name: "due_date") String? dueDate,
  }) = PerformanceFormOpenPayload;

  const factory NotificationPayload.performanceReminder({
    int? daysLeft,
    int? daysOverdue,
    @JsonKey(name: "due_date") String? dueDate,
  }) = PerformanceReminderPayload;

  const factory NotificationPayload.performanceSubmitted() =
      PerformanceSubmittedPayload;

  const factory NotificationPayload.validateHandover() =
      ValidateHandoverPayload;

  const factory NotificationPayload.performancePublished({
    String? period,
  }) = PerformancePublishedPayload;

  const factory NotificationPayload.supervisorAssessmentSchedule({
    @JsonKey(name: "schedule_id") String? scheduleId,
    String? date,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
  }) = SupervisorAssessmentSchedulePayload;

  const factory NotificationPayload.offboardingValidateHandover({
    @JsonKey(name: "offboarding_id") String? offboardingId,
    @JsonKey(name: "employee_name") String? employeeName,
  }) = OffboardingValidateHandoverPayload;

  const factory NotificationPayload.businessTripStatusUpdated({
    @JsonKey(name: "business_trip_id") String? businessTripId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "status") String? status,
  }) = BusinessTripStatusUpdatedPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

class NotificationDataConverter
    implements JsonConverter<NotificationData, Map<String, dynamic>> {
  const NotificationDataConverter();

  @override
  NotificationData fromJson(Map<String, dynamic> json) {
    final rawCode = (json["code"] as String?) ?? "";
    final rawPayload = json["data"];

    if (rawCode.isEmpty ||
        rawPayload == null ||
        rawPayload is! Map<String, dynamic>) {
      return NotificationData(
        title: json["title"],
        message: json["message"],
        code: rawCode,
        data: rawPayload,
      );
    }

    final discriminatorValue = toCamelCase(rawCode);

    final payloadJson = {
      ...rawPayload,
      "type": discriminatorValue,
    };

    NotificationPayload? payload;
    try {
      payload = NotificationPayload.fromJson(payloadJson);
    } catch (e, stack) {
      debugPrint(
          "ERROR: Could not create NotificationPayload using code '$rawCode'.");
      debugPrint("Parsing Error: $e");
    }

    return NotificationData(
      title: json["title"],
      message: json["message"],
      code: rawCode,
      data: payload ?? rawPayload,
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
