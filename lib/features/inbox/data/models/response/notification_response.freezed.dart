// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emailVerification':
      return EmailVerificationPayload.fromJson(json);
    case 'resetPasswordRequested':
      return ResetPasswordRequestedPayload.fromJson(json);
    case 'passwordUpdated':
      return PasswordUpdatedPayload.fromJson(json);
    case 'loginDevice':
      return LoginDevicePayload.fromJson(json);
    case 'profileUpdated':
      return ProfileUpdatedPayload.fromJson(json);
    case 'departmentChanged':
      return DepartmentChangedPayload.fromJson(json);
    case 'managerChanged':
      return ManagerChangedPayload.fromJson(json);
    case 'offboardingStarted':
      return OffboardingStartedPayload.fromJson(json);
    case 'exitInterviewSchedule':
      return ExitInterviewSchedulePayload.fromJson(json);
    case 'attendanceReminder':
      return AttendanceReminderPayload.fromJson(json);
    case 'attendanceNotPresent':
      return AttendanceNotPresentPayload.fromJson(json);
    case 'overtimeSubmitted':
      return OvertimeSubmittedPayload.fromJson(json);
    case 'overtimeUpdated':
      return OvertimeUpdatedPayload.fromJson(json);
    case 'leaveSubmitted':
      return LeaveSubmittedPayload.fromJson(json);
    case 'leaveUpdated':
      return LeaveUpdatedPayload.fromJson(json);
    case 'leaveReminder':
      return LeaveReminderPayload.fromJson(json);
    case 'leaveExpiring':
      return LeaveExpiringPayload.fromJson(json);
    case 'payslipAvailable':
      return PayslipAvailablePayload.fromJson(json);
    case 'payslipRequestUpdated':
      return PayslipRequestUpdatedPayload.fromJson(json);
    case 'performanceFormOpen':
      return PerformanceFormOpenPayload.fromJson(json);
    case 'performanceReminder':
      return PerformanceReminderPayload.fromJson(json);
    case 'performanceSubmitted':
      return PerformanceSubmittedPayload.fromJson(json);
    case 'validateHandover':
      return ValidateHandoverPayload.fromJson(json);
    case 'performancePublished':
      return PerformancePublishedPayload.fromJson(json);
    case 'supervisorAssessmentSchedule':
      return SupervisorAssessmentSchedulePayload.fromJson(json);
    case 'offboardingValidateHandover':
      return OffboardingValidateHandoverPayload.fromJson(json);
    case 'businessTripStatusUpdated':
      return BusinessTripStatusUpdatedPayload.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NotificationPayload',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$NotificationPayload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPayloadCopyWith<$Res> {
  factory $NotificationPayloadCopyWith(
          NotificationPayload value, $Res Function(NotificationPayload) then) =
      _$NotificationPayloadCopyWithImpl<$Res, NotificationPayload>;
}

/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res, $Val extends NotificationPayload>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailVerificationPayloadImplCopyWith<$Res> {
  factory _$$EmailVerificationPayloadImplCopyWith(
          _$EmailVerificationPayloadImpl value,
          $Res Function(_$EmailVerificationPayloadImpl) then) =
      __$$EmailVerificationPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? result});
}

/// @nodoc
class __$$EmailVerificationPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$EmailVerificationPayloadImpl>
    implements _$$EmailVerificationPayloadImplCopyWith<$Res> {
  __$$EmailVerificationPayloadImplCopyWithImpl(
      _$EmailVerificationPayloadImpl _value,
      $Res Function(_$EmailVerificationPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? result = freezed,
  }) {
    return _then(_$EmailVerificationPayloadImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailVerificationPayloadImpl
    with DiagnosticableTreeMixin
    implements EmailVerificationPayload {
  const _$EmailVerificationPayloadImpl(
      {this.email, this.result, final String? $type})
      : $type = $type ?? 'emailVerification';

  factory _$EmailVerificationPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailVerificationPayloadImplFromJson(json);

  @override
  final String? email;
  @override
  final String? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.emailVerification(email: $email, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.emailVerification'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationPayloadImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, result);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationPayloadImplCopyWith<_$EmailVerificationPayloadImpl>
      get copyWith => __$$EmailVerificationPayloadImplCopyWithImpl<
          _$EmailVerificationPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return emailVerification(email, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return emailVerification?.call(email, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (emailVerification != null) {
      return emailVerification(email, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return emailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return emailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (emailVerification != null) {
      return emailVerification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailVerificationPayloadImplToJson(
      this,
    );
  }
}

abstract class EmailVerificationPayload implements NotificationPayload {
  const factory EmailVerificationPayload(
      {final String? email,
      final String? result}) = _$EmailVerificationPayloadImpl;

  factory EmailVerificationPayload.fromJson(Map<String, dynamic> json) =
      _$EmailVerificationPayloadImpl.fromJson;

  String? get email;
  String? get result;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailVerificationPayloadImplCopyWith<_$EmailVerificationPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordRequestedPayloadImplCopyWith<$Res> {
  factory _$$ResetPasswordRequestedPayloadImplCopyWith(
          _$ResetPasswordRequestedPayloadImpl value,
          $Res Function(_$ResetPasswordRequestedPayloadImpl) then) =
      __$$ResetPasswordRequestedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$ResetPasswordRequestedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$ResetPasswordRequestedPayloadImpl>
    implements _$$ResetPasswordRequestedPayloadImplCopyWith<$Res> {
  __$$ResetPasswordRequestedPayloadImplCopyWithImpl(
      _$ResetPasswordRequestedPayloadImpl _value,
      $Res Function(_$ResetPasswordRequestedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$ResetPasswordRequestedPayloadImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestedPayloadImpl
    with DiagnosticableTreeMixin
    implements ResetPasswordRequestedPayload {
  const _$ResetPasswordRequestedPayloadImpl({this.email, final String? $type})
      : $type = $type ?? 'resetPasswordRequested';

  factory _$ResetPasswordRequestedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResetPasswordRequestedPayloadImplFromJson(json);

  @override
  final String? email;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.resetPasswordRequested(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.resetPasswordRequested'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequestedPayloadImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequestedPayloadImplCopyWith<
          _$ResetPasswordRequestedPayloadImpl>
      get copyWith => __$$ResetPasswordRequestedPayloadImplCopyWithImpl<
          _$ResetPasswordRequestedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return resetPasswordRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return resetPasswordRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (resetPasswordRequested != null) {
      return resetPasswordRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return resetPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return resetPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (resetPasswordRequested != null) {
      return resetPasswordRequested(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordRequestedPayloadImplToJson(
      this,
    );
  }
}

abstract class ResetPasswordRequestedPayload implements NotificationPayload {
  const factory ResetPasswordRequestedPayload({final String? email}) =
      _$ResetPasswordRequestedPayloadImpl;

  factory ResetPasswordRequestedPayload.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestedPayloadImpl.fromJson;

  String? get email;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordRequestedPayloadImplCopyWith<
          _$ResetPasswordRequestedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordUpdatedPayloadImplCopyWith<$Res> {
  factory _$$PasswordUpdatedPayloadImplCopyWith(
          _$PasswordUpdatedPayloadImpl value,
          $Res Function(_$PasswordUpdatedPayloadImpl) then) =
      __$$PasswordUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? time});
}

/// @nodoc
class __$$PasswordUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PasswordUpdatedPayloadImpl>
    implements _$$PasswordUpdatedPayloadImplCopyWith<$Res> {
  __$$PasswordUpdatedPayloadImplCopyWithImpl(
      _$PasswordUpdatedPayloadImpl _value,
      $Res Function(_$PasswordUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$PasswordUpdatedPayloadImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements PasswordUpdatedPayload {
  const _$PasswordUpdatedPayloadImpl({this.time, final String? $type})
      : $type = $type ?? 'passwordUpdated';

  factory _$PasswordUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdatedPayloadImplFromJson(json);

  @override
  final String? time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.passwordUpdated(time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.passwordUpdated'))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdatedPayloadImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdatedPayloadImplCopyWith<_$PasswordUpdatedPayloadImpl>
      get copyWith => __$$PasswordUpdatedPayloadImplCopyWithImpl<
          _$PasswordUpdatedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return passwordUpdated(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return passwordUpdated?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (passwordUpdated != null) {
      return passwordUpdated(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return passwordUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return passwordUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (passwordUpdated != null) {
      return passwordUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class PasswordUpdatedPayload implements NotificationPayload {
  const factory PasswordUpdatedPayload({final String? time}) =
      _$PasswordUpdatedPayloadImpl;

  factory PasswordUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdatedPayloadImpl.fromJson;

  String? get time;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordUpdatedPayloadImplCopyWith<_$PasswordUpdatedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginDevicePayloadImplCopyWith<$Res> {
  factory _$$LoginDevicePayloadImplCopyWith(_$LoginDevicePayloadImpl value,
          $Res Function(_$LoginDevicePayloadImpl) then) =
      __$$LoginDevicePayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? device, String? location, String? time});
}

/// @nodoc
class __$$LoginDevicePayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$LoginDevicePayloadImpl>
    implements _$$LoginDevicePayloadImplCopyWith<$Res> {
  __$$LoginDevicePayloadImplCopyWithImpl(_$LoginDevicePayloadImpl _value,
      $Res Function(_$LoginDevicePayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? location = freezed,
    Object? time = freezed,
  }) {
    return _then(_$LoginDevicePayloadImpl(
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDevicePayloadImpl
    with DiagnosticableTreeMixin
    implements LoginDevicePayload {
  const _$LoginDevicePayloadImpl(
      {this.device, this.location, this.time, final String? $type})
      : $type = $type ?? 'loginDevice';

  factory _$LoginDevicePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDevicePayloadImplFromJson(json);

  @override
  final String? device;
  @override
  final String? location;
  @override
  final String? time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.loginDevice(device: $device, location: $location, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.loginDevice'))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDevicePayloadImpl &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, device, location, time);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDevicePayloadImplCopyWith<_$LoginDevicePayloadImpl> get copyWith =>
      __$$LoginDevicePayloadImplCopyWithImpl<_$LoginDevicePayloadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return loginDevice(device, location, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return loginDevice?.call(device, location, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (loginDevice != null) {
      return loginDevice(device, location, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return loginDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return loginDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (loginDevice != null) {
      return loginDevice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDevicePayloadImplToJson(
      this,
    );
  }
}

abstract class LoginDevicePayload implements NotificationPayload {
  const factory LoginDevicePayload(
      {final String? device,
      final String? location,
      final String? time}) = _$LoginDevicePayloadImpl;

  factory LoginDevicePayload.fromJson(Map<String, dynamic> json) =
      _$LoginDevicePayloadImpl.fromJson;

  String? get device;
  String? get location;
  String? get time;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDevicePayloadImplCopyWith<_$LoginDevicePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileUpdatedPayloadImplCopyWith<$Res> {
  factory _$$ProfileUpdatedPayloadImplCopyWith(
          _$ProfileUpdatedPayloadImpl value,
          $Res Function(_$ProfileUpdatedPayloadImpl) then) =
      __$$ProfileUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? actor,
      String? fields,
      String? status,
      String? time,
      @JsonKey(name: "user_id") String? userId,
      String? email});
}

/// @nodoc
class __$$ProfileUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$ProfileUpdatedPayloadImpl>
    implements _$$ProfileUpdatedPayloadImplCopyWith<$Res> {
  __$$ProfileUpdatedPayloadImplCopyWithImpl(_$ProfileUpdatedPayloadImpl _value,
      $Res Function(_$ProfileUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = freezed,
    Object? fields = freezed,
    Object? status = freezed,
    Object? time = freezed,
    Object? userId = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ProfileUpdatedPayloadImpl(
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements ProfileUpdatedPayload {
  const _$ProfileUpdatedPayloadImpl(
      {this.actor,
      this.fields,
      this.status,
      this.time,
      @JsonKey(name: "user_id") this.userId,
      this.email,
      final String? $type})
      : $type = $type ?? 'profileUpdated';

  factory _$ProfileUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdatedPayloadImplFromJson(json);

  @override
  final String? actor;
  @override
  final String? fields;
  @override
  final String? status;
  @override
  final String? time;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  final String? email;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.profileUpdated(actor: $actor, fields: $fields, status: $status, time: $time, userId: $userId, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.profileUpdated'))
      ..add(DiagnosticsProperty('actor', actor))
      ..add(DiagnosticsProperty('fields', fields))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdatedPayloadImpl &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actor, fields, status, time, userId, email);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdatedPayloadImplCopyWith<_$ProfileUpdatedPayloadImpl>
      get copyWith => __$$ProfileUpdatedPayloadImplCopyWithImpl<
          _$ProfileUpdatedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return profileUpdated(actor, fields, status, time, userId, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return profileUpdated?.call(actor, fields, status, time, userId, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(actor, fields, status, time, userId, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return profileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return profileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class ProfileUpdatedPayload implements NotificationPayload {
  const factory ProfileUpdatedPayload(
      {final String? actor,
      final String? fields,
      final String? status,
      final String? time,
      @JsonKey(name: "user_id") final String? userId,
      final String? email}) = _$ProfileUpdatedPayloadImpl;

  factory ProfileUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdatedPayloadImpl.fromJson;

  String? get actor;
  String? get fields;
  String? get status;
  String? get time;
  @JsonKey(name: "user_id")
  String? get userId;
  String? get email;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdatedPayloadImplCopyWith<_$ProfileUpdatedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentChangedPayloadImplCopyWith<$Res> {
  factory _$$DepartmentChangedPayloadImplCopyWith(
          _$DepartmentChangedPayloadImpl value,
          $Res Function(_$DepartmentChangedPayloadImpl) then) =
      __$$DepartmentChangedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? department,
      String? team,
      @JsonKey(name: "effective_date") String? effectiveDate});
}

/// @nodoc
class __$$DepartmentChangedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$DepartmentChangedPayloadImpl>
    implements _$$DepartmentChangedPayloadImplCopyWith<$Res> {
  __$$DepartmentChangedPayloadImplCopyWithImpl(
      _$DepartmentChangedPayloadImpl _value,
      $Res Function(_$DepartmentChangedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = freezed,
    Object? team = freezed,
    Object? effectiveDate = freezed,
  }) {
    return _then(_$DepartmentChangedPayloadImpl(
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentChangedPayloadImpl
    with DiagnosticableTreeMixin
    implements DepartmentChangedPayload {
  const _$DepartmentChangedPayloadImpl(
      {this.department,
      this.team,
      @JsonKey(name: "effective_date") this.effectiveDate,
      final String? $type})
      : $type = $type ?? 'departmentChanged';

  factory _$DepartmentChangedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentChangedPayloadImplFromJson(json);

  @override
  final String? department;
  @override
  final String? team;
  @override
  @JsonKey(name: "effective_date")
  final String? effectiveDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.departmentChanged(department: $department, team: $team, effectiveDate: $effectiveDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.departmentChanged'))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('team', team))
      ..add(DiagnosticsProperty('effectiveDate', effectiveDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentChangedPayloadImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, department, team, effectiveDate);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentChangedPayloadImplCopyWith<_$DepartmentChangedPayloadImpl>
      get copyWith => __$$DepartmentChangedPayloadImplCopyWithImpl<
          _$DepartmentChangedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return departmentChanged(department, team, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return departmentChanged?.call(department, team, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (departmentChanged != null) {
      return departmentChanged(department, team, effectiveDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return departmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return departmentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (departmentChanged != null) {
      return departmentChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentChangedPayloadImplToJson(
      this,
    );
  }
}

abstract class DepartmentChangedPayload implements NotificationPayload {
  const factory DepartmentChangedPayload(
          {final String? department,
          final String? team,
          @JsonKey(name: "effective_date") final String? effectiveDate}) =
      _$DepartmentChangedPayloadImpl;

  factory DepartmentChangedPayload.fromJson(Map<String, dynamic> json) =
      _$DepartmentChangedPayloadImpl.fromJson;

  String? get department;
  String? get team;
  @JsonKey(name: "effective_date")
  String? get effectiveDate;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentChangedPayloadImplCopyWith<_$DepartmentChangedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ManagerChangedPayloadImplCopyWith<$Res> {
  factory _$$ManagerChangedPayloadImplCopyWith(
          _$ManagerChangedPayloadImpl value,
          $Res Function(_$ManagerChangedPayloadImpl) then) =
      __$$ManagerChangedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "manager_name") String? managerName,
      @JsonKey(name: "effective_date") String? effectiveDate});
}

/// @nodoc
class __$$ManagerChangedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$ManagerChangedPayloadImpl>
    implements _$$ManagerChangedPayloadImplCopyWith<$Res> {
  __$$ManagerChangedPayloadImplCopyWithImpl(_$ManagerChangedPayloadImpl _value,
      $Res Function(_$ManagerChangedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? managerName = freezed,
    Object? effectiveDate = freezed,
  }) {
    return _then(_$ManagerChangedPayloadImpl(
      managerName: freezed == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerChangedPayloadImpl
    with DiagnosticableTreeMixin
    implements ManagerChangedPayload {
  const _$ManagerChangedPayloadImpl(
      {@JsonKey(name: "manager_name") this.managerName,
      @JsonKey(name: "effective_date") this.effectiveDate,
      final String? $type})
      : $type = $type ?? 'managerChanged';

  factory _$ManagerChangedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerChangedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "manager_name")
  final String? managerName;
  @override
  @JsonKey(name: "effective_date")
  final String? effectiveDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.managerChanged(managerName: $managerName, effectiveDate: $effectiveDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.managerChanged'))
      ..add(DiagnosticsProperty('managerName', managerName))
      ..add(DiagnosticsProperty('effectiveDate', effectiveDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerChangedPayloadImpl &&
            (identical(other.managerName, managerName) ||
                other.managerName == managerName) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, managerName, effectiveDate);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerChangedPayloadImplCopyWith<_$ManagerChangedPayloadImpl>
      get copyWith => __$$ManagerChangedPayloadImplCopyWithImpl<
          _$ManagerChangedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return managerChanged(managerName, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return managerChanged?.call(managerName, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (managerChanged != null) {
      return managerChanged(managerName, effectiveDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return managerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return managerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (managerChanged != null) {
      return managerChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerChangedPayloadImplToJson(
      this,
    );
  }
}

abstract class ManagerChangedPayload implements NotificationPayload {
  const factory ManagerChangedPayload(
          {@JsonKey(name: "manager_name") final String? managerName,
          @JsonKey(name: "effective_date") final String? effectiveDate}) =
      _$ManagerChangedPayloadImpl;

  factory ManagerChangedPayload.fromJson(Map<String, dynamic> json) =
      _$ManagerChangedPayloadImpl.fromJson;

  @JsonKey(name: "manager_name")
  String? get managerName;
  @JsonKey(name: "effective_date")
  String? get effectiveDate;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerChangedPayloadImplCopyWith<_$ManagerChangedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OffboardingStartedPayloadImplCopyWith<$Res> {
  factory _$$OffboardingStartedPayloadImplCopyWith(
          _$OffboardingStartedPayloadImpl value,
          $Res Function(_$OffboardingStartedPayloadImpl) then) =
      __$$OffboardingStartedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? status, String? deadline});
}

/// @nodoc
class __$$OffboardingStartedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$OffboardingStartedPayloadImpl>
    implements _$$OffboardingStartedPayloadImplCopyWith<$Res> {
  __$$OffboardingStartedPayloadImplCopyWithImpl(
      _$OffboardingStartedPayloadImpl _value,
      $Res Function(_$OffboardingStartedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$OffboardingStartedPayloadImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffboardingStartedPayloadImpl
    with DiagnosticableTreeMixin
    implements OffboardingStartedPayload {
  const _$OffboardingStartedPayloadImpl(
      {this.status, this.deadline, final String? $type})
      : $type = $type ?? 'offboardingStarted';

  factory _$OffboardingStartedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffboardingStartedPayloadImplFromJson(json);

  @override
  final String? status;
  @override
  final String? deadline;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.offboardingStarted(status: $status, deadline: $deadline)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.offboardingStarted'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('deadline', deadline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffboardingStartedPayloadImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, deadline);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffboardingStartedPayloadImplCopyWith<_$OffboardingStartedPayloadImpl>
      get copyWith => __$$OffboardingStartedPayloadImplCopyWithImpl<
          _$OffboardingStartedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return offboardingStarted(status, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return offboardingStarted?.call(status, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (offboardingStarted != null) {
      return offboardingStarted(status, deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return offboardingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return offboardingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (offboardingStarted != null) {
      return offboardingStarted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OffboardingStartedPayloadImplToJson(
      this,
    );
  }
}

abstract class OffboardingStartedPayload implements NotificationPayload {
  const factory OffboardingStartedPayload(
      {final String? status,
      final String? deadline}) = _$OffboardingStartedPayloadImpl;

  factory OffboardingStartedPayload.fromJson(Map<String, dynamic> json) =
      _$OffboardingStartedPayloadImpl.fromJson;

  String? get status;
  String? get deadline;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffboardingStartedPayloadImplCopyWith<_$OffboardingStartedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitInterviewSchedulePayloadImplCopyWith<$Res> {
  factory _$$ExitInterviewSchedulePayloadImplCopyWith(
          _$ExitInterviewSchedulePayloadImpl value,
          $Res Function(_$ExitInterviewSchedulePayloadImpl) then) =
      __$$ExitInterviewSchedulePayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? time,
      String? interviewer,
      @JsonKey(name: "start_time") String? startTime,
      @JsonKey(name: "end_time") String? endTime});
}

/// @nodoc
class __$$ExitInterviewSchedulePayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$ExitInterviewSchedulePayloadImpl>
    implements _$$ExitInterviewSchedulePayloadImplCopyWith<$Res> {
  __$$ExitInterviewSchedulePayloadImplCopyWithImpl(
      _$ExitInterviewSchedulePayloadImpl _value,
      $Res Function(_$ExitInterviewSchedulePayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? interviewer = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$ExitInterviewSchedulePayloadImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interviewer: freezed == interviewer
          ? _value.interviewer
          : interviewer // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExitInterviewSchedulePayloadImpl
    with DiagnosticableTreeMixin
    implements ExitInterviewSchedulePayload {
  const _$ExitInterviewSchedulePayloadImpl(
      {this.id,
      this.date,
      this.time,
      this.interviewer,
      @JsonKey(name: "start_time") this.startTime,
      @JsonKey(name: "end_time") this.endTime,
      final String? $type})
      : $type = $type ?? 'exitInterviewSchedule';

  factory _$ExitInterviewSchedulePayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExitInterviewSchedulePayloadImplFromJson(json);

  @override
  final String? id;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? interviewer;
  @override
  @JsonKey(name: "start_time")
  final String? startTime;
  @override
  @JsonKey(name: "end_time")
  final String? endTime;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.exitInterviewSchedule(id: $id, date: $date, time: $time, interviewer: $interviewer, startTime: $startTime, endTime: $endTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.exitInterviewSchedule'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('interviewer', interviewer))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitInterviewSchedulePayloadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interviewer, interviewer) ||
                other.interviewer == interviewer) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, time, interviewer, startTime, endTime);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitInterviewSchedulePayloadImplCopyWith<
          _$ExitInterviewSchedulePayloadImpl>
      get copyWith => __$$ExitInterviewSchedulePayloadImplCopyWithImpl<
          _$ExitInterviewSchedulePayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return exitInterviewSchedule(
        id, date, time, interviewer, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return exitInterviewSchedule?.call(
        id, date, time, interviewer, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (exitInterviewSchedule != null) {
      return exitInterviewSchedule(
          id, date, time, interviewer, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return exitInterviewSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return exitInterviewSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (exitInterviewSchedule != null) {
      return exitInterviewSchedule(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExitInterviewSchedulePayloadImplToJson(
      this,
    );
  }
}

abstract class ExitInterviewSchedulePayload implements NotificationPayload {
  const factory ExitInterviewSchedulePayload(
          {final String? id,
          final String? date,
          final String? time,
          final String? interviewer,
          @JsonKey(name: "start_time") final String? startTime,
          @JsonKey(name: "end_time") final String? endTime}) =
      _$ExitInterviewSchedulePayloadImpl;

  factory ExitInterviewSchedulePayload.fromJson(Map<String, dynamic> json) =
      _$ExitInterviewSchedulePayloadImpl.fromJson;

  String? get id;
  String? get date;
  String? get time;
  String? get interviewer;
  @JsonKey(name: "start_time")
  String? get startTime;
  @JsonKey(name: "end_time")
  String? get endTime;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExitInterviewSchedulePayloadImplCopyWith<
          _$ExitInterviewSchedulePayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceReminderPayloadImplCopyWith<$Res> {
  factory _$$AttendanceReminderPayloadImplCopyWith(
          _$AttendanceReminderPayloadImpl value,
          $Res Function(_$AttendanceReminderPayloadImpl) then) =
      __$$AttendanceReminderPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: "start_time") String? startTime, int? minutes});
}

/// @nodoc
class __$$AttendanceReminderPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$AttendanceReminderPayloadImpl>
    implements _$$AttendanceReminderPayloadImplCopyWith<$Res> {
  __$$AttendanceReminderPayloadImplCopyWithImpl(
      _$AttendanceReminderPayloadImpl _value,
      $Res Function(_$AttendanceReminderPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_$AttendanceReminderPayloadImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceReminderPayloadImpl
    with DiagnosticableTreeMixin
    implements AttendanceReminderPayload {
  const _$AttendanceReminderPayloadImpl(
      {@JsonKey(name: "start_time") this.startTime,
      this.minutes,
      final String? $type})
      : $type = $type ?? 'attendanceReminder';

  factory _$AttendanceReminderPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceReminderPayloadImplFromJson(json);

  @override
  @JsonKey(name: "start_time")
  final String? startTime;
  @override
  final int? minutes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.attendanceReminder(startTime: $startTime, minutes: $minutes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.attendanceReminder'))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('minutes', minutes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceReminderPayloadImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, minutes);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceReminderPayloadImplCopyWith<_$AttendanceReminderPayloadImpl>
      get copyWith => __$$AttendanceReminderPayloadImplCopyWithImpl<
          _$AttendanceReminderPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return attendanceReminder(startTime, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return attendanceReminder?.call(startTime, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (attendanceReminder != null) {
      return attendanceReminder(startTime, minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return attendanceReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return attendanceReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (attendanceReminder != null) {
      return attendanceReminder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceReminderPayloadImplToJson(
      this,
    );
  }
}

abstract class AttendanceReminderPayload implements NotificationPayload {
  const factory AttendanceReminderPayload(
      {@JsonKey(name: "start_time") final String? startTime,
      final int? minutes}) = _$AttendanceReminderPayloadImpl;

  factory AttendanceReminderPayload.fromJson(Map<String, dynamic> json) =
      _$AttendanceReminderPayloadImpl.fromJson;

  @JsonKey(name: "start_time")
  String? get startTime;
  int? get minutes;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceReminderPayloadImplCopyWith<_$AttendanceReminderPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceNotPresentPayloadImplCopyWith<$Res> {
  factory _$$AttendanceNotPresentPayloadImplCopyWith(
          _$AttendanceNotPresentPayloadImpl value,
          $Res Function(_$AttendanceNotPresentPayloadImpl) then) =
      __$$AttendanceNotPresentPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? grace});
}

/// @nodoc
class __$$AttendanceNotPresentPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$AttendanceNotPresentPayloadImpl>
    implements _$$AttendanceNotPresentPayloadImplCopyWith<$Res> {
  __$$AttendanceNotPresentPayloadImplCopyWithImpl(
      _$AttendanceNotPresentPayloadImpl _value,
      $Res Function(_$AttendanceNotPresentPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grace = freezed,
  }) {
    return _then(_$AttendanceNotPresentPayloadImpl(
      grace: freezed == grace
          ? _value.grace
          : grace // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceNotPresentPayloadImpl
    with DiagnosticableTreeMixin
    implements AttendanceNotPresentPayload {
  const _$AttendanceNotPresentPayloadImpl({this.grace, final String? $type})
      : $type = $type ?? 'attendanceNotPresent';

  factory _$AttendanceNotPresentPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceNotPresentPayloadImplFromJson(json);

  @override
  final int? grace;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.attendanceNotPresent(grace: $grace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.attendanceNotPresent'))
      ..add(DiagnosticsProperty('grace', grace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceNotPresentPayloadImpl &&
            (identical(other.grace, grace) || other.grace == grace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grace);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceNotPresentPayloadImplCopyWith<_$AttendanceNotPresentPayloadImpl>
      get copyWith => __$$AttendanceNotPresentPayloadImplCopyWithImpl<
          _$AttendanceNotPresentPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return attendanceNotPresent(grace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return attendanceNotPresent?.call(grace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (attendanceNotPresent != null) {
      return attendanceNotPresent(grace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return attendanceNotPresent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return attendanceNotPresent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (attendanceNotPresent != null) {
      return attendanceNotPresent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceNotPresentPayloadImplToJson(
      this,
    );
  }
}

abstract class AttendanceNotPresentPayload implements NotificationPayload {
  const factory AttendanceNotPresentPayload({final int? grace}) =
      _$AttendanceNotPresentPayloadImpl;

  factory AttendanceNotPresentPayload.fromJson(Map<String, dynamic> json) =
      _$AttendanceNotPresentPayloadImpl.fromJson;

  int? get grace;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceNotPresentPayloadImplCopyWith<_$AttendanceNotPresentPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OvertimeSubmittedPayloadImplCopyWith<$Res> {
  factory _$$OvertimeSubmittedPayloadImplCopyWith(
          _$OvertimeSubmittedPayloadImpl value,
          $Res Function(_$OvertimeSubmittedPayloadImpl) then) =
      __$$OvertimeSubmittedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? date, String? start, String? end, String? approver});
}

/// @nodoc
class __$$OvertimeSubmittedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$OvertimeSubmittedPayloadImpl>
    implements _$$OvertimeSubmittedPayloadImplCopyWith<$Res> {
  __$$OvertimeSubmittedPayloadImplCopyWithImpl(
      _$OvertimeSubmittedPayloadImpl _value,
      $Res Function(_$OvertimeSubmittedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? approver = freezed,
  }) {
    return _then(_$OvertimeSubmittedPayloadImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeSubmittedPayloadImpl
    with DiagnosticableTreeMixin
    implements OvertimeSubmittedPayload {
  const _$OvertimeSubmittedPayloadImpl(
      {this.date, this.start, this.end, this.approver, final String? $type})
      : $type = $type ?? 'overtimeSubmitted';

  factory _$OvertimeSubmittedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeSubmittedPayloadImplFromJson(json);

  @override
  final String? date;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? approver;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.overtimeSubmitted(date: $date, start: $start, end: $end, approver: $approver)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.overtimeSubmitted'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('approver', approver));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeSubmittedPayloadImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.approver, approver) ||
                other.approver == approver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, start, end, approver);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeSubmittedPayloadImplCopyWith<_$OvertimeSubmittedPayloadImpl>
      get copyWith => __$$OvertimeSubmittedPayloadImplCopyWithImpl<
          _$OvertimeSubmittedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return overtimeSubmitted(date, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return overtimeSubmitted?.call(date, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (overtimeSubmitted != null) {
      return overtimeSubmitted(date, start, end, approver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return overtimeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return overtimeSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (overtimeSubmitted != null) {
      return overtimeSubmitted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeSubmittedPayloadImplToJson(
      this,
    );
  }
}

abstract class OvertimeSubmittedPayload implements NotificationPayload {
  const factory OvertimeSubmittedPayload(
      {final String? date,
      final String? start,
      final String? end,
      final String? approver}) = _$OvertimeSubmittedPayloadImpl;

  factory OvertimeSubmittedPayload.fromJson(Map<String, dynamic> json) =
      _$OvertimeSubmittedPayloadImpl.fromJson;

  String? get date;
  String? get start;
  String? get end;
  String? get approver;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeSubmittedPayloadImplCopyWith<_$OvertimeSubmittedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OvertimeUpdatedPayloadImplCopyWith<$Res> {
  factory _$$OvertimeUpdatedPayloadImplCopyWith(
          _$OvertimeUpdatedPayloadImpl value,
          $Res Function(_$OvertimeUpdatedPayloadImpl) then) =
      __$$OvertimeUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? date, String? status, String? actor});
}

/// @nodoc
class __$$OvertimeUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$OvertimeUpdatedPayloadImpl>
    implements _$$OvertimeUpdatedPayloadImplCopyWith<$Res> {
  __$$OvertimeUpdatedPayloadImplCopyWithImpl(
      _$OvertimeUpdatedPayloadImpl _value,
      $Res Function(_$OvertimeUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? actor = freezed,
  }) {
    return _then(_$OvertimeUpdatedPayloadImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements OvertimeUpdatedPayload {
  const _$OvertimeUpdatedPayloadImpl(
      {this.date, this.status, this.actor, final String? $type})
      : $type = $type ?? 'overtimeUpdated';

  factory _$OvertimeUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeUpdatedPayloadImplFromJson(json);

  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? actor;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.overtimeUpdated(date: $date, status: $status, actor: $actor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.overtimeUpdated'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('actor', actor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeUpdatedPayloadImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.actor, actor) || other.actor == actor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, status, actor);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeUpdatedPayloadImplCopyWith<_$OvertimeUpdatedPayloadImpl>
      get copyWith => __$$OvertimeUpdatedPayloadImplCopyWithImpl<
          _$OvertimeUpdatedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return overtimeUpdated(date, status, actor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return overtimeUpdated?.call(date, status, actor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (overtimeUpdated != null) {
      return overtimeUpdated(date, status, actor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return overtimeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return overtimeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (overtimeUpdated != null) {
      return overtimeUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class OvertimeUpdatedPayload implements NotificationPayload {
  const factory OvertimeUpdatedPayload(
      {final String? date,
      final String? status,
      final String? actor}) = _$OvertimeUpdatedPayloadImpl;

  factory OvertimeUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$OvertimeUpdatedPayloadImpl.fromJson;

  String? get date;
  String? get status;
  String? get actor;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeUpdatedPayloadImplCopyWith<_$OvertimeUpdatedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveSubmittedPayloadImplCopyWith<$Res> {
  factory _$$LeaveSubmittedPayloadImplCopyWith(
          _$LeaveSubmittedPayloadImpl value,
          $Res Function(_$LeaveSubmittedPayloadImpl) then) =
      __$$LeaveSubmittedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_type") String? leaveType,
      String? start,
      String? end,
      String? approver});
}

/// @nodoc
class __$$LeaveSubmittedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$LeaveSubmittedPayloadImpl>
    implements _$$LeaveSubmittedPayloadImplCopyWith<$Res> {
  __$$LeaveSubmittedPayloadImplCopyWithImpl(_$LeaveSubmittedPayloadImpl _value,
      $Res Function(_$LeaveSubmittedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveType = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? approver = freezed,
  }) {
    return _then(_$LeaveSubmittedPayloadImpl(
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      approver: freezed == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveSubmittedPayloadImpl
    with DiagnosticableTreeMixin
    implements LeaveSubmittedPayload {
  const _$LeaveSubmittedPayloadImpl(
      {@JsonKey(name: "leave_type") this.leaveType,
      this.start,
      this.end,
      this.approver,
      final String? $type})
      : $type = $type ?? 'leaveSubmitted';

  factory _$LeaveSubmittedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveSubmittedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String? leaveType;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? approver;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.leaveSubmitted(leaveType: $leaveType, start: $start, end: $end, approver: $approver)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.leaveSubmitted'))
      ..add(DiagnosticsProperty('leaveType', leaveType))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('approver', approver));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveSubmittedPayloadImpl &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.approver, approver) ||
                other.approver == approver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, leaveType, start, end, approver);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveSubmittedPayloadImplCopyWith<_$LeaveSubmittedPayloadImpl>
      get copyWith => __$$LeaveSubmittedPayloadImplCopyWithImpl<
          _$LeaveSubmittedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return leaveSubmitted(leaveType, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return leaveSubmitted?.call(leaveType, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveSubmitted != null) {
      return leaveSubmitted(leaveType, start, end, approver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return leaveSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return leaveSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveSubmitted != null) {
      return leaveSubmitted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveSubmittedPayloadImplToJson(
      this,
    );
  }
}

abstract class LeaveSubmittedPayload implements NotificationPayload {
  const factory LeaveSubmittedPayload(
      {@JsonKey(name: "leave_type") final String? leaveType,
      final String? start,
      final String? end,
      final String? approver}) = _$LeaveSubmittedPayloadImpl;

  factory LeaveSubmittedPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveSubmittedPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String? get leaveType;
  String? get start;
  String? get end;
  String? get approver;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveSubmittedPayloadImplCopyWith<_$LeaveSubmittedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveUpdatedPayloadImplCopyWith<$Res> {
  factory _$$LeaveUpdatedPayloadImplCopyWith(_$LeaveUpdatedPayloadImpl value,
          $Res Function(_$LeaveUpdatedPayloadImpl) then) =
      __$$LeaveUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_type") String? leaveType,
      String? start,
      String? end,
      String? status});
}

/// @nodoc
class __$$LeaveUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$LeaveUpdatedPayloadImpl>
    implements _$$LeaveUpdatedPayloadImplCopyWith<$Res> {
  __$$LeaveUpdatedPayloadImplCopyWithImpl(_$LeaveUpdatedPayloadImpl _value,
      $Res Function(_$LeaveUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveType = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LeaveUpdatedPayloadImpl(
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements LeaveUpdatedPayload {
  const _$LeaveUpdatedPayloadImpl(
      {@JsonKey(name: "leave_type") this.leaveType,
      this.start,
      this.end,
      this.status,
      final String? $type})
      : $type = $type ?? 'leaveUpdated';

  factory _$LeaveUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveUpdatedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String? leaveType;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.leaveUpdated(leaveType: $leaveType, start: $start, end: $end, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.leaveUpdated'))
      ..add(DiagnosticsProperty('leaveType', leaveType))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveUpdatedPayloadImpl &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, leaveType, start, end, status);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveUpdatedPayloadImplCopyWith<_$LeaveUpdatedPayloadImpl> get copyWith =>
      __$$LeaveUpdatedPayloadImplCopyWithImpl<_$LeaveUpdatedPayloadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return leaveUpdated(leaveType, start, end, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return leaveUpdated?.call(leaveType, start, end, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveUpdated != null) {
      return leaveUpdated(leaveType, start, end, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return leaveUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return leaveUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveUpdated != null) {
      return leaveUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class LeaveUpdatedPayload implements NotificationPayload {
  const factory LeaveUpdatedPayload(
      {@JsonKey(name: "leave_type") final String? leaveType,
      final String? start,
      final String? end,
      final String? status}) = _$LeaveUpdatedPayloadImpl;

  factory LeaveUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveUpdatedPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String? get leaveType;
  String? get start;
  String? get end;
  String? get status;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveUpdatedPayloadImplCopyWith<_$LeaveUpdatedPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveReminderPayloadImplCopyWith<$Res> {
  factory _$$LeaveReminderPayloadImplCopyWith(_$LeaveReminderPayloadImpl value,
          $Res Function(_$LeaveReminderPayloadImpl) then) =
      __$$LeaveReminderPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_type") String? leaveType,
      String? relativeDay,
      String? date});
}

/// @nodoc
class __$$LeaveReminderPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$LeaveReminderPayloadImpl>
    implements _$$LeaveReminderPayloadImplCopyWith<$Res> {
  __$$LeaveReminderPayloadImplCopyWithImpl(_$LeaveReminderPayloadImpl _value,
      $Res Function(_$LeaveReminderPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveType = freezed,
    Object? relativeDay = freezed,
    Object? date = freezed,
  }) {
    return _then(_$LeaveReminderPayloadImpl(
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      relativeDay: freezed == relativeDay
          ? _value.relativeDay
          : relativeDay // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveReminderPayloadImpl
    with DiagnosticableTreeMixin
    implements LeaveReminderPayload {
  const _$LeaveReminderPayloadImpl(
      {@JsonKey(name: "leave_type") this.leaveType,
      this.relativeDay,
      this.date,
      final String? $type})
      : $type = $type ?? 'leaveReminder';

  factory _$LeaveReminderPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveReminderPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String? leaveType;
  @override
  final String? relativeDay;
  @override
  final String? date;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.leaveReminder(leaveType: $leaveType, relativeDay: $relativeDay, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.leaveReminder'))
      ..add(DiagnosticsProperty('leaveType', leaveType))
      ..add(DiagnosticsProperty('relativeDay', relativeDay))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveReminderPayloadImpl &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.relativeDay, relativeDay) ||
                other.relativeDay == relativeDay) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, leaveType, relativeDay, date);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveReminderPayloadImplCopyWith<_$LeaveReminderPayloadImpl>
      get copyWith =>
          __$$LeaveReminderPayloadImplCopyWithImpl<_$LeaveReminderPayloadImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return leaveReminder(leaveType, relativeDay, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return leaveReminder?.call(leaveType, relativeDay, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveReminder != null) {
      return leaveReminder(leaveType, relativeDay, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return leaveReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return leaveReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveReminder != null) {
      return leaveReminder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveReminderPayloadImplToJson(
      this,
    );
  }
}

abstract class LeaveReminderPayload implements NotificationPayload {
  const factory LeaveReminderPayload(
      {@JsonKey(name: "leave_type") final String? leaveType,
      final String? relativeDay,
      final String? date}) = _$LeaveReminderPayloadImpl;

  factory LeaveReminderPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveReminderPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String? get leaveType;
  String? get relativeDay;
  String? get date;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveReminderPayloadImplCopyWith<_$LeaveReminderPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveExpiringPayloadImplCopyWith<$Res> {
  factory _$$LeaveExpiringPayloadImplCopyWith(_$LeaveExpiringPayloadImpl value,
          $Res Function(_$LeaveExpiringPayloadImpl) then) =
      __$$LeaveExpiringPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "days_left") int? daysLeft,
      int? balance,
      String? deadline});
}

/// @nodoc
class __$$LeaveExpiringPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$LeaveExpiringPayloadImpl>
    implements _$$LeaveExpiringPayloadImplCopyWith<$Res> {
  __$$LeaveExpiringPayloadImplCopyWithImpl(_$LeaveExpiringPayloadImpl _value,
      $Res Function(_$LeaveExpiringPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysLeft = freezed,
    Object? balance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$LeaveExpiringPayloadImpl(
      daysLeft: freezed == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveExpiringPayloadImpl
    with DiagnosticableTreeMixin
    implements LeaveExpiringPayload {
  const _$LeaveExpiringPayloadImpl(
      {@JsonKey(name: "days_left") this.daysLeft,
      this.balance,
      this.deadline,
      final String? $type})
      : $type = $type ?? 'leaveExpiring';

  factory _$LeaveExpiringPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveExpiringPayloadImplFromJson(json);

  @override
  @JsonKey(name: "days_left")
  final int? daysLeft;
  @override
  final int? balance;
  @override
  final String? deadline;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.leaveExpiring(daysLeft: $daysLeft, balance: $balance, deadline: $deadline)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.leaveExpiring'))
      ..add(DiagnosticsProperty('daysLeft', daysLeft))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('deadline', deadline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveExpiringPayloadImpl &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, daysLeft, balance, deadline);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveExpiringPayloadImplCopyWith<_$LeaveExpiringPayloadImpl>
      get copyWith =>
          __$$LeaveExpiringPayloadImplCopyWithImpl<_$LeaveExpiringPayloadImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return leaveExpiring(daysLeft, balance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return leaveExpiring?.call(daysLeft, balance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveExpiring != null) {
      return leaveExpiring(daysLeft, balance, deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return leaveExpiring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return leaveExpiring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (leaveExpiring != null) {
      return leaveExpiring(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveExpiringPayloadImplToJson(
      this,
    );
  }
}

abstract class LeaveExpiringPayload implements NotificationPayload {
  const factory LeaveExpiringPayload(
      {@JsonKey(name: "days_left") final int? daysLeft,
      final int? balance,
      final String? deadline}) = _$LeaveExpiringPayloadImpl;

  factory LeaveExpiringPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveExpiringPayloadImpl.fromJson;

  @JsonKey(name: "days_left")
  int? get daysLeft;
  int? get balance;
  String? get deadline;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveExpiringPayloadImplCopyWith<_$LeaveExpiringPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayslipAvailablePayloadImplCopyWith<$Res> {
  factory _$$PayslipAvailablePayloadImplCopyWith(
          _$PayslipAvailablePayloadImpl value,
          $Res Function(_$PayslipAvailablePayloadImpl) then) =
      __$$PayslipAvailablePayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? period});
}

/// @nodoc
class __$$PayslipAvailablePayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PayslipAvailablePayloadImpl>
    implements _$$PayslipAvailablePayloadImplCopyWith<$Res> {
  __$$PayslipAvailablePayloadImplCopyWithImpl(
      _$PayslipAvailablePayloadImpl _value,
      $Res Function(_$PayslipAvailablePayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
  }) {
    return _then(_$PayslipAvailablePayloadImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipAvailablePayloadImpl
    with DiagnosticableTreeMixin
    implements PayslipAvailablePayload {
  const _$PayslipAvailablePayloadImpl({this.period, final String? $type})
      : $type = $type ?? 'payslipAvailable';

  factory _$PayslipAvailablePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipAvailablePayloadImplFromJson(json);

  @override
  final String? period;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.payslipAvailable(period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationPayload.payslipAvailable'))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipAvailablePayloadImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, period);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipAvailablePayloadImplCopyWith<_$PayslipAvailablePayloadImpl>
      get copyWith => __$$PayslipAvailablePayloadImplCopyWithImpl<
          _$PayslipAvailablePayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return payslipAvailable(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return payslipAvailable?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (payslipAvailable != null) {
      return payslipAvailable(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return payslipAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return payslipAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (payslipAvailable != null) {
      return payslipAvailable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipAvailablePayloadImplToJson(
      this,
    );
  }
}

abstract class PayslipAvailablePayload implements NotificationPayload {
  const factory PayslipAvailablePayload({final String? period}) =
      _$PayslipAvailablePayloadImpl;

  factory PayslipAvailablePayload.fromJson(Map<String, dynamic> json) =
      _$PayslipAvailablePayloadImpl.fromJson;

  String? get period;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipAvailablePayloadImplCopyWith<_$PayslipAvailablePayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayslipRequestUpdatedPayloadImplCopyWith<$Res> {
  factory _$$PayslipRequestUpdatedPayloadImplCopyWith(
          _$PayslipRequestUpdatedPayloadImpl value,
          $Res Function(_$PayslipRequestUpdatedPayloadImpl) then) =
      __$$PayslipRequestUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "request_type") String? requestType,
      String? period,
      String? status});
}

/// @nodoc
class __$$PayslipRequestUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PayslipRequestUpdatedPayloadImpl>
    implements _$$PayslipRequestUpdatedPayloadImplCopyWith<$Res> {
  __$$PayslipRequestUpdatedPayloadImplCopyWithImpl(
      _$PayslipRequestUpdatedPayloadImpl _value,
      $Res Function(_$PayslipRequestUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestType = freezed,
    Object? period = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PayslipRequestUpdatedPayloadImpl(
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipRequestUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements PayslipRequestUpdatedPayload {
  const _$PayslipRequestUpdatedPayloadImpl(
      {@JsonKey(name: "request_type") this.requestType,
      this.period,
      this.status,
      final String? $type})
      : $type = $type ?? 'payslipRequestUpdated';

  factory _$PayslipRequestUpdatedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayslipRequestUpdatedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "request_type")
  final String? requestType;
  @override
  final String? period;
  @override
  final String? status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.payslipRequestUpdated(requestType: $requestType, period: $period, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.payslipRequestUpdated'))
      ..add(DiagnosticsProperty('requestType', requestType))
      ..add(DiagnosticsProperty('period', period))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipRequestUpdatedPayloadImpl &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestType, period, status);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipRequestUpdatedPayloadImplCopyWith<
          _$PayslipRequestUpdatedPayloadImpl>
      get copyWith => __$$PayslipRequestUpdatedPayloadImplCopyWithImpl<
          _$PayslipRequestUpdatedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return payslipRequestUpdated(requestType, period, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return payslipRequestUpdated?.call(requestType, period, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (payslipRequestUpdated != null) {
      return payslipRequestUpdated(requestType, period, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return payslipRequestUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return payslipRequestUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (payslipRequestUpdated != null) {
      return payslipRequestUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipRequestUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class PayslipRequestUpdatedPayload implements NotificationPayload {
  const factory PayslipRequestUpdatedPayload(
      {@JsonKey(name: "request_type") final String? requestType,
      final String? period,
      final String? status}) = _$PayslipRequestUpdatedPayloadImpl;

  factory PayslipRequestUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$PayslipRequestUpdatedPayloadImpl.fromJson;

  @JsonKey(name: "request_type")
  String? get requestType;
  String? get period;
  String? get status;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipRequestUpdatedPayloadImplCopyWith<
          _$PayslipRequestUpdatedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformanceFormOpenPayloadImplCopyWith<$Res> {
  factory _$$PerformanceFormOpenPayloadImplCopyWith(
          _$PerformanceFormOpenPayloadImpl value,
          $Res Function(_$PerformanceFormOpenPayloadImpl) then) =
      __$$PerformanceFormOpenPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? period, @JsonKey(name: "due_date") String? dueDate});
}

/// @nodoc
class __$$PerformanceFormOpenPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PerformanceFormOpenPayloadImpl>
    implements _$$PerformanceFormOpenPayloadImplCopyWith<$Res> {
  __$$PerformanceFormOpenPayloadImplCopyWithImpl(
      _$PerformanceFormOpenPayloadImpl _value,
      $Res Function(_$PerformanceFormOpenPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$PerformanceFormOpenPayloadImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceFormOpenPayloadImpl
    with DiagnosticableTreeMixin
    implements PerformanceFormOpenPayload {
  const _$PerformanceFormOpenPayloadImpl(
      {this.period,
      @JsonKey(name: "due_date") this.dueDate,
      final String? $type})
      : $type = $type ?? 'performanceFormOpen';

  factory _$PerformanceFormOpenPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceFormOpenPayloadImplFromJson(json);

  @override
  final String? period;
  @override
  @JsonKey(name: "due_date")
  final String? dueDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.performanceFormOpen(period: $period, dueDate: $dueDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.performanceFormOpen'))
      ..add(DiagnosticsProperty('period', period))
      ..add(DiagnosticsProperty('dueDate', dueDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceFormOpenPayloadImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, period, dueDate);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceFormOpenPayloadImplCopyWith<_$PerformanceFormOpenPayloadImpl>
      get copyWith => __$$PerformanceFormOpenPayloadImplCopyWithImpl<
          _$PerformanceFormOpenPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return performanceFormOpen(period, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return performanceFormOpen?.call(period, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceFormOpen != null) {
      return performanceFormOpen(period, dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return performanceFormOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return performanceFormOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceFormOpen != null) {
      return performanceFormOpen(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceFormOpenPayloadImplToJson(
      this,
    );
  }
}

abstract class PerformanceFormOpenPayload implements NotificationPayload {
  const factory PerformanceFormOpenPayload(
          {final String? period,
          @JsonKey(name: "due_date") final String? dueDate}) =
      _$PerformanceFormOpenPayloadImpl;

  factory PerformanceFormOpenPayload.fromJson(Map<String, dynamic> json) =
      _$PerformanceFormOpenPayloadImpl.fromJson;

  String? get period;
  @JsonKey(name: "due_date")
  String? get dueDate;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceFormOpenPayloadImplCopyWith<_$PerformanceFormOpenPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformanceReminderPayloadImplCopyWith<$Res> {
  factory _$$PerformanceReminderPayloadImplCopyWith(
          _$PerformanceReminderPayloadImpl value,
          $Res Function(_$PerformanceReminderPayloadImpl) then) =
      __$$PerformanceReminderPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? daysLeft,
      int? daysOverdue,
      @JsonKey(name: "due_date") String? dueDate});
}

/// @nodoc
class __$$PerformanceReminderPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PerformanceReminderPayloadImpl>
    implements _$$PerformanceReminderPayloadImplCopyWith<$Res> {
  __$$PerformanceReminderPayloadImplCopyWithImpl(
      _$PerformanceReminderPayloadImpl _value,
      $Res Function(_$PerformanceReminderPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysLeft = freezed,
    Object? daysOverdue = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$PerformanceReminderPayloadImpl(
      daysLeft: freezed == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      daysOverdue: freezed == daysOverdue
          ? _value.daysOverdue
          : daysOverdue // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceReminderPayloadImpl
    with DiagnosticableTreeMixin
    implements PerformanceReminderPayload {
  const _$PerformanceReminderPayloadImpl(
      {this.daysLeft,
      this.daysOverdue,
      @JsonKey(name: "due_date") this.dueDate,
      final String? $type})
      : $type = $type ?? 'performanceReminder';

  factory _$PerformanceReminderPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceReminderPayloadImplFromJson(json);

  @override
  final int? daysLeft;
  @override
  final int? daysOverdue;
  @override
  @JsonKey(name: "due_date")
  final String? dueDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.performanceReminder(daysLeft: $daysLeft, daysOverdue: $daysOverdue, dueDate: $dueDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.performanceReminder'))
      ..add(DiagnosticsProperty('daysLeft', daysLeft))
      ..add(DiagnosticsProperty('daysOverdue', daysOverdue))
      ..add(DiagnosticsProperty('dueDate', dueDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceReminderPayloadImpl &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft) &&
            (identical(other.daysOverdue, daysOverdue) ||
                other.daysOverdue == daysOverdue) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, daysLeft, daysOverdue, dueDate);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceReminderPayloadImplCopyWith<_$PerformanceReminderPayloadImpl>
      get copyWith => __$$PerformanceReminderPayloadImplCopyWithImpl<
          _$PerformanceReminderPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return performanceReminder(daysLeft, daysOverdue, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return performanceReminder?.call(daysLeft, daysOverdue, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceReminder != null) {
      return performanceReminder(daysLeft, daysOverdue, dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return performanceReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return performanceReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceReminder != null) {
      return performanceReminder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceReminderPayloadImplToJson(
      this,
    );
  }
}

abstract class PerformanceReminderPayload implements NotificationPayload {
  const factory PerformanceReminderPayload(
          {final int? daysLeft,
          final int? daysOverdue,
          @JsonKey(name: "due_date") final String? dueDate}) =
      _$PerformanceReminderPayloadImpl;

  factory PerformanceReminderPayload.fromJson(Map<String, dynamic> json) =
      _$PerformanceReminderPayloadImpl.fromJson;

  int? get daysLeft;
  int? get daysOverdue;
  @JsonKey(name: "due_date")
  String? get dueDate;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceReminderPayloadImplCopyWith<_$PerformanceReminderPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformanceSubmittedPayloadImplCopyWith<$Res> {
  factory _$$PerformanceSubmittedPayloadImplCopyWith(
          _$PerformanceSubmittedPayloadImpl value,
          $Res Function(_$PerformanceSubmittedPayloadImpl) then) =
      __$$PerformanceSubmittedPayloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformanceSubmittedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PerformanceSubmittedPayloadImpl>
    implements _$$PerformanceSubmittedPayloadImplCopyWith<$Res> {
  __$$PerformanceSubmittedPayloadImplCopyWithImpl(
      _$PerformanceSubmittedPayloadImpl _value,
      $Res Function(_$PerformanceSubmittedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PerformanceSubmittedPayloadImpl
    with DiagnosticableTreeMixin
    implements PerformanceSubmittedPayload {
  const _$PerformanceSubmittedPayloadImpl({final String? $type})
      : $type = $type ?? 'performanceSubmitted';

  factory _$PerformanceSubmittedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceSubmittedPayloadImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.performanceSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.performanceSubmitted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceSubmittedPayloadImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return performanceSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return performanceSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceSubmitted != null) {
      return performanceSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return performanceSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return performanceSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performanceSubmitted != null) {
      return performanceSubmitted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceSubmittedPayloadImplToJson(
      this,
    );
  }
}

abstract class PerformanceSubmittedPayload implements NotificationPayload {
  const factory PerformanceSubmittedPayload() =
      _$PerformanceSubmittedPayloadImpl;

  factory PerformanceSubmittedPayload.fromJson(Map<String, dynamic> json) =
      _$PerformanceSubmittedPayloadImpl.fromJson;
}

/// @nodoc
abstract class _$$ValidateHandoverPayloadImplCopyWith<$Res> {
  factory _$$ValidateHandoverPayloadImplCopyWith(
          _$ValidateHandoverPayloadImpl value,
          $Res Function(_$ValidateHandoverPayloadImpl) then) =
      __$$ValidateHandoverPayloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateHandoverPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$ValidateHandoverPayloadImpl>
    implements _$$ValidateHandoverPayloadImplCopyWith<$Res> {
  __$$ValidateHandoverPayloadImplCopyWithImpl(
      _$ValidateHandoverPayloadImpl _value,
      $Res Function(_$ValidateHandoverPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ValidateHandoverPayloadImpl
    with DiagnosticableTreeMixin
    implements ValidateHandoverPayload {
  const _$ValidateHandoverPayloadImpl({final String? $type})
      : $type = $type ?? 'validateHandover';

  factory _$ValidateHandoverPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateHandoverPayloadImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.validateHandover()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotificationPayload.validateHandover'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateHandoverPayloadImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return validateHandover();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return validateHandover?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (validateHandover != null) {
      return validateHandover();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return validateHandover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return validateHandover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (validateHandover != null) {
      return validateHandover(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateHandoverPayloadImplToJson(
      this,
    );
  }
}

abstract class ValidateHandoverPayload implements NotificationPayload {
  const factory ValidateHandoverPayload() = _$ValidateHandoverPayloadImpl;

  factory ValidateHandoverPayload.fromJson(Map<String, dynamic> json) =
      _$ValidateHandoverPayloadImpl.fromJson;
}

/// @nodoc
abstract class _$$PerformancePublishedPayloadImplCopyWith<$Res> {
  factory _$$PerformancePublishedPayloadImplCopyWith(
          _$PerformancePublishedPayloadImpl value,
          $Res Function(_$PerformancePublishedPayloadImpl) then) =
      __$$PerformancePublishedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? period});
}

/// @nodoc
class __$$PerformancePublishedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$PerformancePublishedPayloadImpl>
    implements _$$PerformancePublishedPayloadImplCopyWith<$Res> {
  __$$PerformancePublishedPayloadImplCopyWithImpl(
      _$PerformancePublishedPayloadImpl _value,
      $Res Function(_$PerformancePublishedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
  }) {
    return _then(_$PerformancePublishedPayloadImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformancePublishedPayloadImpl
    with DiagnosticableTreeMixin
    implements PerformancePublishedPayload {
  const _$PerformancePublishedPayloadImpl({this.period, final String? $type})
      : $type = $type ?? 'performancePublished';

  factory _$PerformancePublishedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformancePublishedPayloadImplFromJson(json);

  @override
  final String? period;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.performancePublished(period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.performancePublished'))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformancePublishedPayloadImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, period);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformancePublishedPayloadImplCopyWith<_$PerformancePublishedPayloadImpl>
      get copyWith => __$$PerformancePublishedPayloadImplCopyWithImpl<
          _$PerformancePublishedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return performancePublished(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return performancePublished?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performancePublished != null) {
      return performancePublished(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return performancePublished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return performancePublished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (performancePublished != null) {
      return performancePublished(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformancePublishedPayloadImplToJson(
      this,
    );
  }
}

abstract class PerformancePublishedPayload implements NotificationPayload {
  const factory PerformancePublishedPayload({final String? period}) =
      _$PerformancePublishedPayloadImpl;

  factory PerformancePublishedPayload.fromJson(Map<String, dynamic> json) =
      _$PerformancePublishedPayloadImpl.fromJson;

  String? get period;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformancePublishedPayloadImplCopyWith<_$PerformancePublishedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupervisorAssessmentSchedulePayloadImplCopyWith<$Res> {
  factory _$$SupervisorAssessmentSchedulePayloadImplCopyWith(
          _$SupervisorAssessmentSchedulePayloadImpl value,
          $Res Function(_$SupervisorAssessmentSchedulePayloadImpl) then) =
      __$$SupervisorAssessmentSchedulePayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "schedule_id") String? scheduleId,
      String? date,
      @JsonKey(name: "start_time") String? startTime,
      @JsonKey(name: "end_time") String? endTime});
}

/// @nodoc
class __$$SupervisorAssessmentSchedulePayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$SupervisorAssessmentSchedulePayloadImpl>
    implements _$$SupervisorAssessmentSchedulePayloadImplCopyWith<$Res> {
  __$$SupervisorAssessmentSchedulePayloadImplCopyWithImpl(
      _$SupervisorAssessmentSchedulePayloadImpl _value,
      $Res Function(_$SupervisorAssessmentSchedulePayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$SupervisorAssessmentSchedulePayloadImpl(
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupervisorAssessmentSchedulePayloadImpl
    with DiagnosticableTreeMixin
    implements SupervisorAssessmentSchedulePayload {
  const _$SupervisorAssessmentSchedulePayloadImpl(
      {@JsonKey(name: "schedule_id") this.scheduleId,
      this.date,
      @JsonKey(name: "start_time") this.startTime,
      @JsonKey(name: "end_time") this.endTime,
      final String? $type})
      : $type = $type ?? 'supervisorAssessmentSchedule';

  factory _$SupervisorAssessmentSchedulePayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupervisorAssessmentSchedulePayloadImplFromJson(json);

  @override
  @JsonKey(name: "schedule_id")
  final String? scheduleId;
  @override
  final String? date;
  @override
  @JsonKey(name: "start_time")
  final String? startTime;
  @override
  @JsonKey(name: "end_time")
  final String? endTime;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.supervisorAssessmentSchedule(scheduleId: $scheduleId, date: $date, startTime: $startTime, endTime: $endTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.supervisorAssessmentSchedule'))
      ..add(DiagnosticsProperty('scheduleId', scheduleId))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupervisorAssessmentSchedulePayloadImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, scheduleId, date, startTime, endTime);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupervisorAssessmentSchedulePayloadImplCopyWith<
          _$SupervisorAssessmentSchedulePayloadImpl>
      get copyWith => __$$SupervisorAssessmentSchedulePayloadImplCopyWithImpl<
          _$SupervisorAssessmentSchedulePayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return supervisorAssessmentSchedule(scheduleId, date, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return supervisorAssessmentSchedule?.call(
        scheduleId, date, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (supervisorAssessmentSchedule != null) {
      return supervisorAssessmentSchedule(scheduleId, date, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return supervisorAssessmentSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return supervisorAssessmentSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (supervisorAssessmentSchedule != null) {
      return supervisorAssessmentSchedule(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupervisorAssessmentSchedulePayloadImplToJson(
      this,
    );
  }
}

abstract class SupervisorAssessmentSchedulePayload
    implements NotificationPayload {
  const factory SupervisorAssessmentSchedulePayload(
          {@JsonKey(name: "schedule_id") final String? scheduleId,
          final String? date,
          @JsonKey(name: "start_time") final String? startTime,
          @JsonKey(name: "end_time") final String? endTime}) =
      _$SupervisorAssessmentSchedulePayloadImpl;

  factory SupervisorAssessmentSchedulePayload.fromJson(
          Map<String, dynamic> json) =
      _$SupervisorAssessmentSchedulePayloadImpl.fromJson;

  @JsonKey(name: "schedule_id")
  String? get scheduleId;
  String? get date;
  @JsonKey(name: "start_time")
  String? get startTime;
  @JsonKey(name: "end_time")
  String? get endTime;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupervisorAssessmentSchedulePayloadImplCopyWith<
          _$SupervisorAssessmentSchedulePayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OffboardingValidateHandoverPayloadImplCopyWith<$Res> {
  factory _$$OffboardingValidateHandoverPayloadImplCopyWith(
          _$OffboardingValidateHandoverPayloadImpl value,
          $Res Function(_$OffboardingValidateHandoverPayloadImpl) then) =
      __$$OffboardingValidateHandoverPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "offboarding_id") String? offboardingId,
      @JsonKey(name: "employee_name") String? employeeName});
}

/// @nodoc
class __$$OffboardingValidateHandoverPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$OffboardingValidateHandoverPayloadImpl>
    implements _$$OffboardingValidateHandoverPayloadImplCopyWith<$Res> {
  __$$OffboardingValidateHandoverPayloadImplCopyWithImpl(
      _$OffboardingValidateHandoverPayloadImpl _value,
      $Res Function(_$OffboardingValidateHandoverPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offboardingId = freezed,
    Object? employeeName = freezed,
  }) {
    return _then(_$OffboardingValidateHandoverPayloadImpl(
      offboardingId: freezed == offboardingId
          ? _value.offboardingId
          : offboardingId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffboardingValidateHandoverPayloadImpl
    with DiagnosticableTreeMixin
    implements OffboardingValidateHandoverPayload {
  const _$OffboardingValidateHandoverPayloadImpl(
      {@JsonKey(name: "offboarding_id") this.offboardingId,
      @JsonKey(name: "employee_name") this.employeeName,
      final String? $type})
      : $type = $type ?? 'offboardingValidateHandover';

  factory _$OffboardingValidateHandoverPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OffboardingValidateHandoverPayloadImplFromJson(json);

  @override
  @JsonKey(name: "offboarding_id")
  final String? offboardingId;
  @override
  @JsonKey(name: "employee_name")
  final String? employeeName;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.offboardingValidateHandover(offboardingId: $offboardingId, employeeName: $employeeName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.offboardingValidateHandover'))
      ..add(DiagnosticsProperty('offboardingId', offboardingId))
      ..add(DiagnosticsProperty('employeeName', employeeName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffboardingValidateHandoverPayloadImpl &&
            (identical(other.offboardingId, offboardingId) ||
                other.offboardingId == offboardingId) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offboardingId, employeeName);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffboardingValidateHandoverPayloadImplCopyWith<
          _$OffboardingValidateHandoverPayloadImpl>
      get copyWith => __$$OffboardingValidateHandoverPayloadImplCopyWithImpl<
          _$OffboardingValidateHandoverPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return offboardingValidateHandover(offboardingId, employeeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return offboardingValidateHandover?.call(offboardingId, employeeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (offboardingValidateHandover != null) {
      return offboardingValidateHandover(offboardingId, employeeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return offboardingValidateHandover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return offboardingValidateHandover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (offboardingValidateHandover != null) {
      return offboardingValidateHandover(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OffboardingValidateHandoverPayloadImplToJson(
      this,
    );
  }
}

abstract class OffboardingValidateHandoverPayload
    implements NotificationPayload {
  const factory OffboardingValidateHandoverPayload(
          {@JsonKey(name: "offboarding_id") final String? offboardingId,
          @JsonKey(name: "employee_name") final String? employeeName}) =
      _$OffboardingValidateHandoverPayloadImpl;

  factory OffboardingValidateHandoverPayload.fromJson(
          Map<String, dynamic> json) =
      _$OffboardingValidateHandoverPayloadImpl.fromJson;

  @JsonKey(name: "offboarding_id")
  String? get offboardingId;
  @JsonKey(name: "employee_name")
  String? get employeeName;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffboardingValidateHandoverPayloadImplCopyWith<
          _$OffboardingValidateHandoverPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessTripStatusUpdatedPayloadImplCopyWith<$Res> {
  factory _$$BusinessTripStatusUpdatedPayloadImplCopyWith(
          _$BusinessTripStatusUpdatedPayloadImpl value,
          $Res Function(_$BusinessTripStatusUpdatedPayloadImpl) then) =
      __$$BusinessTripStatusUpdatedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: "business_trip_id") String? businessTripId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$BusinessTripStatusUpdatedPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res,
        _$BusinessTripStatusUpdatedPayloadImpl>
    implements _$$BusinessTripStatusUpdatedPayloadImplCopyWith<$Res> {
  __$$BusinessTripStatusUpdatedPayloadImplCopyWithImpl(
      _$BusinessTripStatusUpdatedPayloadImpl _value,
      $Res Function(_$BusinessTripStatusUpdatedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessTripId = freezed,
    Object? userId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BusinessTripStatusUpdatedPayloadImpl(
      businessTripId: freezed == businessTripId
          ? _value.businessTripId
          : businessTripId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTripStatusUpdatedPayloadImpl
    with DiagnosticableTreeMixin
    implements BusinessTripStatusUpdatedPayload {
  const _$BusinessTripStatusUpdatedPayloadImpl(
      {@JsonKey(name: "business_trip_id") this.businessTripId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "status") this.status,
      final String? $type})
      : $type = $type ?? 'businessTripStatusUpdated';

  factory _$BusinessTripStatusUpdatedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessTripStatusUpdatedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "business_trip_id")
  final String? businessTripId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "status")
  final String? status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationPayload.businessTripStatusUpdated(businessTripId: $businessTripId, userId: $userId, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationPayload.businessTripStatusUpdated'))
      ..add(DiagnosticsProperty('businessTripId', businessTripId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTripStatusUpdatedPayloadImpl &&
            (identical(other.businessTripId, businessTripId) ||
                other.businessTripId == businessTripId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, businessTripId, userId, status);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTripStatusUpdatedPayloadImplCopyWith<
          _$BusinessTripStatusUpdatedPayloadImpl>
      get copyWith => __$$BusinessTripStatusUpdatedPayloadImplCopyWithImpl<
          _$BusinessTripStatusUpdatedPayloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? result) emailVerification,
    required TResult Function(String? email) resetPasswordRequested,
    required TResult Function(String? time) passwordUpdated,
    required TResult Function(String? device, String? location, String? time)
        loginDevice,
    required TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)
        profileUpdated,
    required TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)
        departmentChanged,
    required TResult Function(
            @JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)
        managerChanged,
    required TResult Function(String? status, String? deadline)
        offboardingStarted,
    required TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)
        attendanceReminder,
    required TResult Function(int? grace) attendanceNotPresent,
    required TResult Function(
            String? date, String? start, String? end, String? approver)
        overtimeSubmitted,
    required TResult Function(String? date, String? status, String? actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int? daysLeft,
            int? balance, String? deadline)
        leaveExpiring,
    required TResult Function(String? period) payslipAvailable,
    required TResult Function(
            @JsonKey(name: "request_type") String? requestType,
            String? period,
            String? status)
        payslipRequestUpdated,
    required TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function() validateHandover,
    required TResult Function(String? period) performancePublished,
    required TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)
        supervisorAssessmentSchedule,
    required TResult Function(
            @JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)
        offboardingValidateHandover,
    required TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)
        businessTripStatusUpdated,
  }) {
    return businessTripStatusUpdated(businessTripId, userId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? result)? emailVerification,
    TResult? Function(String? email)? resetPasswordRequested,
    TResult? Function(String? time)? passwordUpdated,
    TResult? Function(String? device, String? location, String? time)?
        loginDevice,
    TResult? Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult? Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult? Function(String? status, String? deadline)? offboardingStarted,
    TResult? Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult? Function(int? grace)? attendanceNotPresent,
    TResult? Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult? Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult? Function(String? period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult? Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function()? validateHandover,
    TResult? Function(String? period)? performancePublished,
    TResult? Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult? Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult? Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
  }) {
    return businessTripStatusUpdated?.call(businessTripId, userId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? result)? emailVerification,
    TResult Function(String? email)? resetPasswordRequested,
    TResult Function(String? time)? passwordUpdated,
    TResult Function(String? device, String? location, String? time)?
        loginDevice,
    TResult Function(
            String? actor,
            String? fields,
            String? status,
            String? time,
            @JsonKey(name: "user_id") String? userId,
            String? email)?
        profileUpdated,
    TResult Function(String? department, String? team,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String? managerName,
            @JsonKey(name: "effective_date") String? effectiveDate)?
        managerChanged,
    TResult Function(String? status, String? deadline)? offboardingStarted,
    TResult Function(
            String? id,
            String? date,
            String? time,
            String? interviewer,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String? startTime, int? minutes)?
        attendanceReminder,
    TResult Function(int? grace)? attendanceNotPresent,
    TResult Function(
            String? date, String? start, String? end, String? approver)?
        overtimeSubmitted,
    TResult Function(String? date, String? status, String? actor)?
        overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? start, String? end, String? status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String? leaveType,
            String? relativeDay, String? date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int? daysLeft, int? balance,
            String? deadline)?
        leaveExpiring,
    TResult Function(String? period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String? requestType,
            String? period, String? status)?
        payslipRequestUpdated,
    TResult Function(
            String? period, @JsonKey(name: "due_date") String? dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String? dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function()? validateHandover,
    TResult Function(String? period)? performancePublished,
    TResult Function(
            @JsonKey(name: "schedule_id") String? scheduleId,
            String? date,
            @JsonKey(name: "start_time") String? startTime,
            @JsonKey(name: "end_time") String? endTime)?
        supervisorAssessmentSchedule,
    TResult Function(@JsonKey(name: "offboarding_id") String? offboardingId,
            @JsonKey(name: "employee_name") String? employeeName)?
        offboardingValidateHandover,
    TResult Function(
            @JsonKey(name: "business_trip_id") String? businessTripId,
            @JsonKey(name: "user_id") String? userId,
            @JsonKey(name: "status") String? status)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (businessTripStatusUpdated != null) {
      return businessTripStatusUpdated(businessTripId, userId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationPayload value) emailVerification,
    required TResult Function(ResetPasswordRequestedPayload value)
        resetPasswordRequested,
    required TResult Function(PasswordUpdatedPayload value) passwordUpdated,
    required TResult Function(LoginDevicePayload value) loginDevice,
    required TResult Function(ProfileUpdatedPayload value) profileUpdated,
    required TResult Function(DepartmentChangedPayload value) departmentChanged,
    required TResult Function(ManagerChangedPayload value) managerChanged,
    required TResult Function(OffboardingStartedPayload value)
        offboardingStarted,
    required TResult Function(ExitInterviewSchedulePayload value)
        exitInterviewSchedule,
    required TResult Function(AttendanceReminderPayload value)
        attendanceReminder,
    required TResult Function(AttendanceNotPresentPayload value)
        attendanceNotPresent,
    required TResult Function(OvertimeSubmittedPayload value) overtimeSubmitted,
    required TResult Function(OvertimeUpdatedPayload value) overtimeUpdated,
    required TResult Function(LeaveSubmittedPayload value) leaveSubmitted,
    required TResult Function(LeaveUpdatedPayload value) leaveUpdated,
    required TResult Function(LeaveReminderPayload value) leaveReminder,
    required TResult Function(LeaveExpiringPayload value) leaveExpiring,
    required TResult Function(PayslipAvailablePayload value) payslipAvailable,
    required TResult Function(PayslipRequestUpdatedPayload value)
        payslipRequestUpdated,
    required TResult Function(PerformanceFormOpenPayload value)
        performanceFormOpen,
    required TResult Function(PerformanceReminderPayload value)
        performanceReminder,
    required TResult Function(PerformanceSubmittedPayload value)
        performanceSubmitted,
    required TResult Function(ValidateHandoverPayload value) validateHandover,
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
    required TResult Function(SupervisorAssessmentSchedulePayload value)
        supervisorAssessmentSchedule,
    required TResult Function(OffboardingValidateHandoverPayload value)
        offboardingValidateHandover,
    required TResult Function(BusinessTripStatusUpdatedPayload value)
        businessTripStatusUpdated,
  }) {
    return businessTripStatusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationPayload value)? emailVerification,
    TResult? Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult? Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult? Function(LoginDevicePayload value)? loginDevice,
    TResult? Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult? Function(DepartmentChangedPayload value)? departmentChanged,
    TResult? Function(ManagerChangedPayload value)? managerChanged,
    TResult? Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult? Function(ExitInterviewSchedulePayload value)?
        exitInterviewSchedule,
    TResult? Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult? Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult? Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult? Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult? Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult? Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult? Function(LeaveReminderPayload value)? leaveReminder,
    TResult? Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult? Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult? Function(PayslipRequestUpdatedPayload value)?
        payslipRequestUpdated,
    TResult? Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult? Function(PerformanceReminderPayload value)? performanceReminder,
    TResult? Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult? Function(ValidateHandoverPayload value)? validateHandover,
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
    TResult? Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult? Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult? Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
  }) {
    return businessTripStatusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationPayload value)? emailVerification,
    TResult Function(ResetPasswordRequestedPayload value)?
        resetPasswordRequested,
    TResult Function(PasswordUpdatedPayload value)? passwordUpdated,
    TResult Function(LoginDevicePayload value)? loginDevice,
    TResult Function(ProfileUpdatedPayload value)? profileUpdated,
    TResult Function(DepartmentChangedPayload value)? departmentChanged,
    TResult Function(ManagerChangedPayload value)? managerChanged,
    TResult Function(OffboardingStartedPayload value)? offboardingStarted,
    TResult Function(ExitInterviewSchedulePayload value)? exitInterviewSchedule,
    TResult Function(AttendanceReminderPayload value)? attendanceReminder,
    TResult Function(AttendanceNotPresentPayload value)? attendanceNotPresent,
    TResult Function(OvertimeSubmittedPayload value)? overtimeSubmitted,
    TResult Function(OvertimeUpdatedPayload value)? overtimeUpdated,
    TResult Function(LeaveSubmittedPayload value)? leaveSubmitted,
    TResult Function(LeaveUpdatedPayload value)? leaveUpdated,
    TResult Function(LeaveReminderPayload value)? leaveReminder,
    TResult Function(LeaveExpiringPayload value)? leaveExpiring,
    TResult Function(PayslipAvailablePayload value)? payslipAvailable,
    TResult Function(PayslipRequestUpdatedPayload value)? payslipRequestUpdated,
    TResult Function(PerformanceFormOpenPayload value)? performanceFormOpen,
    TResult Function(PerformanceReminderPayload value)? performanceReminder,
    TResult Function(PerformanceSubmittedPayload value)? performanceSubmitted,
    TResult Function(ValidateHandoverPayload value)? validateHandover,
    TResult Function(PerformancePublishedPayload value)? performancePublished,
    TResult Function(SupervisorAssessmentSchedulePayload value)?
        supervisorAssessmentSchedule,
    TResult Function(OffboardingValidateHandoverPayload value)?
        offboardingValidateHandover,
    TResult Function(BusinessTripStatusUpdatedPayload value)?
        businessTripStatusUpdated,
    required TResult orElse(),
  }) {
    if (businessTripStatusUpdated != null) {
      return businessTripStatusUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTripStatusUpdatedPayloadImplToJson(
      this,
    );
  }
}

abstract class BusinessTripStatusUpdatedPayload implements NotificationPayload {
  const factory BusinessTripStatusUpdatedPayload(
          {@JsonKey(name: "business_trip_id") final String? businessTripId,
          @JsonKey(name: "user_id") final String? userId,
          @JsonKey(name: "status") final String? status}) =
      _$BusinessTripStatusUpdatedPayloadImpl;

  factory BusinessTripStatusUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$BusinessTripStatusUpdatedPayloadImpl.fromJson;

  @JsonKey(name: "business_trip_id")
  String? get businessTripId;
  @JsonKey(name: "user_id")
  String? get userId;
  @JsonKey(name: "status")
  String? get status;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTripStatusUpdatedPayloadImplCopyWith<
          _$BusinessTripStatusUpdatedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call({String? title, String? message, String code, dynamic data});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? code = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? message, String code, dynamic data});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? code = null,
    Object? data = freezed,
  }) {
    return _then(_$NotificationDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl
    with DiagnosticableTreeMixin
    implements _NotificationData {
  const _$NotificationDataImpl(
      {this.title, this.message, required this.code, required this.data});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  final String? title;
  @override
  final String? message;
  @override
  final String code;
  @override
  final dynamic data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationData(title: $title, message: $message, code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationData'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, message, code,
      const DeepCollectionEquality().hash(data));

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {final String? title,
      final String? message,
      required final String code,
      required final dynamic data}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  String? get title;
  @override
  String? get message;
  @override
  String get code;
  @override
  dynamic get data;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponse {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "notifiable_id")
  int? get notifiableId => throw _privateConstructorUsedError;
  NotificationData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "read_at")
  String? get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res, NotificationResponse>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "notifiable_id") int? notifiableId,
      NotificationData? data,
      @JsonKey(name: "read_at") String? readAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  $NotificationDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res,
        $Val extends NotificationResponse>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notifiableId = freezed,
    Object? data = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      notifiableId: freezed == notifiableId
          ? _value.notifiableId
          : notifiableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotificationDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationResponseImplCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$$NotificationResponseImplCopyWith(_$NotificationResponseImpl value,
          $Res Function(_$NotificationResponseImpl) then) =
      __$$NotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "notifiable_id") int? notifiableId,
      NotificationData? data,
      @JsonKey(name: "read_at") String? readAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  @override
  $NotificationDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NotificationResponseImplCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res, _$NotificationResponseImpl>
    implements _$$NotificationResponseImplCopyWith<$Res> {
  __$$NotificationResponseImplCopyWithImpl(_$NotificationResponseImpl _value,
      $Res Function(_$NotificationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notifiableId = freezed,
    Object? data = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NotificationResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      notifiableId: freezed == notifiableId
          ? _value.notifiableId
          : notifiableId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseImpl
    with DiagnosticableTreeMixin
    implements _NotificationResponse {
  const _$NotificationResponseImpl(
      {this.id,
      @JsonKey(name: "notifiable_id") this.notifiableId,
      this.data,
      @JsonKey(name: "read_at") this.readAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$NotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "notifiable_id")
  final int? notifiableId;
  @override
  final NotificationData? data;
  @override
  @JsonKey(name: "read_at")
  final String? readAt;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationResponse(id: $id, notifiableId: $notifiableId, data: $data, readAt: $readAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('notifiableId', notifiableId))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('readAt', readAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notifiableId, notifiableId) ||
                other.notifiableId == notifiableId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, notifiableId, data, readAt, createdAt, updatedAt);

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseImplCopyWith<_$NotificationResponseImpl>
      get copyWith =>
          __$$NotificationResponseImplCopyWithImpl<_$NotificationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
          {final String? id,
          @JsonKey(name: "notifiable_id") final int? notifiableId,
          final NotificationData? data,
          @JsonKey(name: "read_at") final String? readAt,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$NotificationResponseImpl;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "notifiable_id")
  int? get notifiableId;
  @override
  NotificationData? get data;
  @override
  @JsonKey(name: "read_at")
  String? get readAt;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationResponseImplCopyWith<_$NotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
