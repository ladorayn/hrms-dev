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
    case 'performancePublished':
      return PerformancePublishedPayload.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NotificationPayload',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$NotificationPayload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  $Res call({String email, String result});
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
    Object? email = null,
    Object? result = null,
  }) {
    return _then(_$EmailVerificationPayloadImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailVerificationPayloadImpl implements EmailVerificationPayload {
  const _$EmailVerificationPayloadImpl(
      {required this.email, required this.result, final String? $type})
      : $type = $type ?? 'emailVerification';

  factory _$EmailVerificationPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailVerificationPayloadImplFromJson(json);

  @override
  final String email;
  @override
  final String result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.emailVerification(email: $email, result: $result)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return emailVerification(email, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return emailVerification?.call(email, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String email,
      required final String result}) = _$EmailVerificationPayloadImpl;

  factory EmailVerificationPayload.fromJson(Map<String, dynamic> json) =
      _$EmailVerificationPayloadImpl.fromJson;

  String get email;
  String get result;

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
  $Res call({String email});
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
    Object? email = null,
  }) {
    return _then(_$ResetPasswordRequestedPayloadImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestedPayloadImpl
    implements ResetPasswordRequestedPayload {
  const _$ResetPasswordRequestedPayloadImpl(
      {required this.email, final String? $type})
      : $type = $type ?? 'resetPasswordRequested';

  factory _$ResetPasswordRequestedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResetPasswordRequestedPayloadImplFromJson(json);

  @override
  final String email;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.resetPasswordRequested(email: $email)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return resetPasswordRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return resetPasswordRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  const factory ResetPasswordRequestedPayload({required final String email}) =
      _$ResetPasswordRequestedPayloadImpl;

  factory ResetPasswordRequestedPayload.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestedPayloadImpl.fromJson;

  String get email;

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
  $Res call({String time});
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
    Object? time = null,
  }) {
    return _then(_$PasswordUpdatedPayloadImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdatedPayloadImpl implements PasswordUpdatedPayload {
  const _$PasswordUpdatedPayloadImpl({required this.time, final String? $type})
      : $type = $type ?? 'passwordUpdated';

  factory _$PasswordUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdatedPayloadImplFromJson(json);

  @override
  final String time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.passwordUpdated(time: $time)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return passwordUpdated(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return passwordUpdated?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  const factory PasswordUpdatedPayload({required final String time}) =
      _$PasswordUpdatedPayloadImpl;

  factory PasswordUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdatedPayloadImpl.fromJson;

  String get time;

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
  $Res call({String device, String location, String time});
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
    Object? device = null,
    Object? location = null,
    Object? time = null,
  }) {
    return _then(_$LoginDevicePayloadImpl(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDevicePayloadImpl implements LoginDevicePayload {
  const _$LoginDevicePayloadImpl(
      {required this.device,
      required this.location,
      required this.time,
      final String? $type})
      : $type = $type ?? 'loginDevice';

  factory _$LoginDevicePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDevicePayloadImplFromJson(json);

  @override
  final String device;
  @override
  final String location;
  @override
  final String time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.loginDevice(device: $device, location: $location, time: $time)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return loginDevice(device, location, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return loginDevice?.call(device, location, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String device,
      required final String location,
      required final String time}) = _$LoginDevicePayloadImpl;

  factory LoginDevicePayload.fromJson(Map<String, dynamic> json) =
      _$LoginDevicePayloadImpl.fromJson;

  String get device;
  String get location;
  String get time;

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
  $Res call({String actor, String fields, String status, String time});
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
    Object? actor = null,
    Object? fields = null,
    Object? status = null,
    Object? time = null,
  }) {
    return _then(_$ProfileUpdatedPayloadImpl(
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileUpdatedPayloadImpl implements ProfileUpdatedPayload {
  const _$ProfileUpdatedPayloadImpl(
      {required this.actor,
      required this.fields,
      required this.status,
      required this.time,
      final String? $type})
      : $type = $type ?? 'profileUpdated';

  factory _$ProfileUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdatedPayloadImplFromJson(json);

  @override
  final String actor;
  @override
  final String fields;
  @override
  final String status;
  @override
  final String time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.profileUpdated(actor: $actor, fields: $fields, status: $status, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdatedPayloadImpl &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actor, fields, status, time);

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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return profileUpdated(actor, fields, status, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return profileUpdated?.call(actor, fields, status, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(actor, fields, status, time);
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String actor,
      required final String fields,
      required final String status,
      required final String time}) = _$ProfileUpdatedPayloadImpl;

  factory ProfileUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdatedPayloadImpl.fromJson;

  String get actor;
  String get fields;
  String get status;
  String get time;

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
      {String department,
      String team,
      @JsonKey(name: "effective_date") String effectiveDate});
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
    Object? department = null,
    Object? team = null,
    Object? effectiveDate = null,
  }) {
    return _then(_$DepartmentChangedPayloadImpl(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentChangedPayloadImpl implements DepartmentChangedPayload {
  const _$DepartmentChangedPayloadImpl(
      {required this.department,
      required this.team,
      @JsonKey(name: "effective_date") required this.effectiveDate,
      final String? $type})
      : $type = $type ?? 'departmentChanged';

  factory _$DepartmentChangedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentChangedPayloadImplFromJson(json);

  @override
  final String department;
  @override
  final String team;
  @override
  @JsonKey(name: "effective_date")
  final String effectiveDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.departmentChanged(department: $department, team: $team, effectiveDate: $effectiveDate)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return departmentChanged(department, team, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return departmentChanged?.call(department, team, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String department,
      required final String team,
      @JsonKey(name: "effective_date")
      required final String effectiveDate}) = _$DepartmentChangedPayloadImpl;

  factory DepartmentChangedPayload.fromJson(Map<String, dynamic> json) =
      _$DepartmentChangedPayloadImpl.fromJson;

  String get department;
  String get team;
  @JsonKey(name: "effective_date")
  String get effectiveDate;

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
      {@JsonKey(name: "manager_name") String managerName,
      @JsonKey(name: "effective_date") String effectiveDate});
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
    Object? managerName = null,
    Object? effectiveDate = null,
  }) {
    return _then(_$ManagerChangedPayloadImpl(
      managerName: null == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerChangedPayloadImpl implements ManagerChangedPayload {
  const _$ManagerChangedPayloadImpl(
      {@JsonKey(name: "manager_name") required this.managerName,
      @JsonKey(name: "effective_date") required this.effectiveDate,
      final String? $type})
      : $type = $type ?? 'managerChanged';

  factory _$ManagerChangedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerChangedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "manager_name")
  final String managerName;
  @override
  @JsonKey(name: "effective_date")
  final String effectiveDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.managerChanged(managerName: $managerName, effectiveDate: $effectiveDate)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return managerChanged(managerName, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return managerChanged?.call(managerName, effectiveDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "manager_name") required final String managerName,
      @JsonKey(name: "effective_date")
      required final String effectiveDate}) = _$ManagerChangedPayloadImpl;

  factory ManagerChangedPayload.fromJson(Map<String, dynamic> json) =
      _$ManagerChangedPayloadImpl.fromJson;

  @JsonKey(name: "manager_name")
  String get managerName;
  @JsonKey(name: "effective_date")
  String get effectiveDate;

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
  $Res call({String status, String deadline});
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
    Object? status = null,
    Object? deadline = null,
  }) {
    return _then(_$OffboardingStartedPayloadImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffboardingStartedPayloadImpl implements OffboardingStartedPayload {
  const _$OffboardingStartedPayloadImpl(
      {required this.status, required this.deadline, final String? $type})
      : $type = $type ?? 'offboardingStarted';

  factory _$OffboardingStartedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffboardingStartedPayloadImplFromJson(json);

  @override
  final String status;
  @override
  final String deadline;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.offboardingStarted(status: $status, deadline: $deadline)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return offboardingStarted(status, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return offboardingStarted?.call(status, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String status,
      required final String deadline}) = _$OffboardingStartedPayloadImpl;

  factory OffboardingStartedPayload.fromJson(Map<String, dynamic> json) =
      _$OffboardingStartedPayloadImpl.fromJson;

  String get status;
  String get deadline;

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
  $Res call({String date, String time, String interviewer});
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
    Object? date = null,
    Object? time = null,
    Object? interviewer = null,
  }) {
    return _then(_$ExitInterviewSchedulePayloadImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interviewer: null == interviewer
          ? _value.interviewer
          : interviewer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExitInterviewSchedulePayloadImpl
    implements ExitInterviewSchedulePayload {
  const _$ExitInterviewSchedulePayloadImpl(
      {required this.date,
      required this.time,
      required this.interviewer,
      final String? $type})
      : $type = $type ?? 'exitInterviewSchedule';

  factory _$ExitInterviewSchedulePayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExitInterviewSchedulePayloadImplFromJson(json);

  @override
  final String date;
  @override
  final String time;
  @override
  final String interviewer;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.exitInterviewSchedule(date: $date, time: $time, interviewer: $interviewer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitInterviewSchedulePayloadImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interviewer, interviewer) ||
                other.interviewer == interviewer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, time, interviewer);

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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return exitInterviewSchedule(date, time, interviewer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return exitInterviewSchedule?.call(date, time, interviewer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
    required TResult orElse(),
  }) {
    if (exitInterviewSchedule != null) {
      return exitInterviewSchedule(date, time, interviewer);
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String date,
      required final String time,
      required final String interviewer}) = _$ExitInterviewSchedulePayloadImpl;

  factory ExitInterviewSchedulePayload.fromJson(Map<String, dynamic> json) =
      _$ExitInterviewSchedulePayloadImpl.fromJson;

  String get date;
  String get time;
  String get interviewer;

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
  $Res call({@JsonKey(name: "start_time") String startTime, int minutes});
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
    Object? startTime = null,
    Object? minutes = null,
  }) {
    return _then(_$AttendanceReminderPayloadImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceReminderPayloadImpl implements AttendanceReminderPayload {
  const _$AttendanceReminderPayloadImpl(
      {@JsonKey(name: "start_time") required this.startTime,
      required this.minutes,
      final String? $type})
      : $type = $type ?? 'attendanceReminder';

  factory _$AttendanceReminderPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceReminderPayloadImplFromJson(json);

  @override
  @JsonKey(name: "start_time")
  final String startTime;
  @override
  final int minutes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.attendanceReminder(startTime: $startTime, minutes: $minutes)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return attendanceReminder(startTime, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return attendanceReminder?.call(startTime, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "start_time") required final String startTime,
      required final int minutes}) = _$AttendanceReminderPayloadImpl;

  factory AttendanceReminderPayload.fromJson(Map<String, dynamic> json) =
      _$AttendanceReminderPayloadImpl.fromJson;

  @JsonKey(name: "start_time")
  String get startTime;
  int get minutes;

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
  $Res call({int grace});
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
    Object? grace = null,
  }) {
    return _then(_$AttendanceNotPresentPayloadImpl(
      grace: null == grace
          ? _value.grace
          : grace // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceNotPresentPayloadImpl implements AttendanceNotPresentPayload {
  const _$AttendanceNotPresentPayloadImpl(
      {required this.grace, final String? $type})
      : $type = $type ?? 'attendanceNotPresent';

  factory _$AttendanceNotPresentPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceNotPresentPayloadImplFromJson(json);

  @override
  final int grace;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.attendanceNotPresent(grace: $grace)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return attendanceNotPresent(grace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return attendanceNotPresent?.call(grace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  const factory AttendanceNotPresentPayload({required final int grace}) =
      _$AttendanceNotPresentPayloadImpl;

  factory AttendanceNotPresentPayload.fromJson(Map<String, dynamic> json) =
      _$AttendanceNotPresentPayloadImpl.fromJson;

  int get grace;

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
  $Res call({String date, String start, String end, String approver});
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
    Object? date = null,
    Object? start = null,
    Object? end = null,
    Object? approver = null,
  }) {
    return _then(_$OvertimeSubmittedPayloadImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      approver: null == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeSubmittedPayloadImpl implements OvertimeSubmittedPayload {
  const _$OvertimeSubmittedPayloadImpl(
      {required this.date,
      required this.start,
      required this.end,
      required this.approver,
      final String? $type})
      : $type = $type ?? 'overtimeSubmitted';

  factory _$OvertimeSubmittedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeSubmittedPayloadImplFromJson(json);

  @override
  final String date;
  @override
  final String start;
  @override
  final String end;
  @override
  final String approver;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.overtimeSubmitted(date: $date, start: $start, end: $end, approver: $approver)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return overtimeSubmitted(date, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return overtimeSubmitted?.call(date, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String date,
      required final String start,
      required final String end,
      required final String approver}) = _$OvertimeSubmittedPayloadImpl;

  factory OvertimeSubmittedPayload.fromJson(Map<String, dynamic> json) =
      _$OvertimeSubmittedPayloadImpl.fromJson;

  String get date;
  String get start;
  String get end;
  String get approver;

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
  $Res call({String date, String status, String actor});
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
    Object? date = null,
    Object? status = null,
    Object? actor = null,
  }) {
    return _then(_$OvertimeUpdatedPayloadImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeUpdatedPayloadImpl implements OvertimeUpdatedPayload {
  const _$OvertimeUpdatedPayloadImpl(
      {required this.date,
      required this.status,
      required this.actor,
      final String? $type})
      : $type = $type ?? 'overtimeUpdated';

  factory _$OvertimeUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeUpdatedPayloadImplFromJson(json);

  @override
  final String date;
  @override
  final String status;
  @override
  final String actor;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.overtimeUpdated(date: $date, status: $status, actor: $actor)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return overtimeUpdated(date, status, actor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return overtimeUpdated?.call(date, status, actor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {required final String date,
      required final String status,
      required final String actor}) = _$OvertimeUpdatedPayloadImpl;

  factory OvertimeUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$OvertimeUpdatedPayloadImpl.fromJson;

  String get date;
  String get status;
  String get actor;

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
      {@JsonKey(name: "leave_type") String leaveType,
      String start,
      String end,
      String approver});
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
    Object? leaveType = null,
    Object? start = null,
    Object? end = null,
    Object? approver = null,
  }) {
    return _then(_$LeaveSubmittedPayloadImpl(
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      approver: null == approver
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveSubmittedPayloadImpl implements LeaveSubmittedPayload {
  const _$LeaveSubmittedPayloadImpl(
      {@JsonKey(name: "leave_type") required this.leaveType,
      required this.start,
      required this.end,
      required this.approver,
      final String? $type})
      : $type = $type ?? 'leaveSubmitted';

  factory _$LeaveSubmittedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveSubmittedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String leaveType;
  @override
  final String start;
  @override
  final String end;
  @override
  final String approver;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.leaveSubmitted(leaveType: $leaveType, start: $start, end: $end, approver: $approver)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return leaveSubmitted(leaveType, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return leaveSubmitted?.call(leaveType, start, end, approver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "leave_type") required final String leaveType,
      required final String start,
      required final String end,
      required final String approver}) = _$LeaveSubmittedPayloadImpl;

  factory LeaveSubmittedPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveSubmittedPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String get leaveType;
  String get start;
  String get end;
  String get approver;

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
      {@JsonKey(name: "leave_type") String leaveType,
      String start,
      String end,
      String status});
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
    Object? leaveType = null,
    Object? start = null,
    Object? end = null,
    Object? status = null,
  }) {
    return _then(_$LeaveUpdatedPayloadImpl(
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveUpdatedPayloadImpl implements LeaveUpdatedPayload {
  const _$LeaveUpdatedPayloadImpl(
      {@JsonKey(name: "leave_type") required this.leaveType,
      required this.start,
      required this.end,
      required this.status,
      final String? $type})
      : $type = $type ?? 'leaveUpdated';

  factory _$LeaveUpdatedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveUpdatedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String leaveType;
  @override
  final String start;
  @override
  final String end;
  @override
  final String status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.leaveUpdated(leaveType: $leaveType, start: $start, end: $end, status: $status)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return leaveUpdated(leaveType, start, end, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return leaveUpdated?.call(leaveType, start, end, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "leave_type") required final String leaveType,
      required final String start,
      required final String end,
      required final String status}) = _$LeaveUpdatedPayloadImpl;

  factory LeaveUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveUpdatedPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String get leaveType;
  String get start;
  String get end;
  String get status;

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
      {@JsonKey(name: "leave_type") String leaveType,
      String relativeDay,
      String date});
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
    Object? leaveType = null,
    Object? relativeDay = null,
    Object? date = null,
  }) {
    return _then(_$LeaveReminderPayloadImpl(
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      relativeDay: null == relativeDay
          ? _value.relativeDay
          : relativeDay // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveReminderPayloadImpl implements LeaveReminderPayload {
  const _$LeaveReminderPayloadImpl(
      {@JsonKey(name: "leave_type") required this.leaveType,
      required this.relativeDay,
      required this.date,
      final String? $type})
      : $type = $type ?? 'leaveReminder';

  factory _$LeaveReminderPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveReminderPayloadImplFromJson(json);

  @override
  @JsonKey(name: "leave_type")
  final String leaveType;
  @override
  final String relativeDay;
  @override
  final String date;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.leaveReminder(leaveType: $leaveType, relativeDay: $relativeDay, date: $date)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return leaveReminder(leaveType, relativeDay, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return leaveReminder?.call(leaveType, relativeDay, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "leave_type") required final String leaveType,
      required final String relativeDay,
      required final String date}) = _$LeaveReminderPayloadImpl;

  factory LeaveReminderPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveReminderPayloadImpl.fromJson;

  @JsonKey(name: "leave_type")
  String get leaveType;
  String get relativeDay;
  String get date;

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
      {@JsonKey(name: "days_left") int daysLeft, int balance, String deadline});
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
    Object? daysLeft = null,
    Object? balance = null,
    Object? deadline = null,
  }) {
    return _then(_$LeaveExpiringPayloadImpl(
      daysLeft: null == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveExpiringPayloadImpl implements LeaveExpiringPayload {
  const _$LeaveExpiringPayloadImpl(
      {@JsonKey(name: "days_left") required this.daysLeft,
      required this.balance,
      required this.deadline,
      final String? $type})
      : $type = $type ?? 'leaveExpiring';

  factory _$LeaveExpiringPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveExpiringPayloadImplFromJson(json);

  @override
  @JsonKey(name: "days_left")
  final int daysLeft;
  @override
  final int balance;
  @override
  final String deadline;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.leaveExpiring(daysLeft: $daysLeft, balance: $balance, deadline: $deadline)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return leaveExpiring(daysLeft, balance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return leaveExpiring?.call(daysLeft, balance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "days_left") required final int daysLeft,
      required final int balance,
      required final String deadline}) = _$LeaveExpiringPayloadImpl;

  factory LeaveExpiringPayload.fromJson(Map<String, dynamic> json) =
      _$LeaveExpiringPayloadImpl.fromJson;

  @JsonKey(name: "days_left")
  int get daysLeft;
  int get balance;
  String get deadline;

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
  $Res call({String period});
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
    Object? period = null,
  }) {
    return _then(_$PayslipAvailablePayloadImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipAvailablePayloadImpl implements PayslipAvailablePayload {
  const _$PayslipAvailablePayloadImpl(
      {required this.period, final String? $type})
      : $type = $type ?? 'payslipAvailable';

  factory _$PayslipAvailablePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipAvailablePayloadImplFromJson(json);

  @override
  final String period;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.payslipAvailable(period: $period)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return payslipAvailable(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return payslipAvailable?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  const factory PayslipAvailablePayload({required final String period}) =
      _$PayslipAvailablePayloadImpl;

  factory PayslipAvailablePayload.fromJson(Map<String, dynamic> json) =
      _$PayslipAvailablePayloadImpl.fromJson;

  String get period;

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
      {@JsonKey(name: "request_type") String requestType,
      String period,
      String status});
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
    Object? requestType = null,
    Object? period = null,
    Object? status = null,
  }) {
    return _then(_$PayslipRequestUpdatedPayloadImpl(
      requestType: null == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipRequestUpdatedPayloadImpl
    implements PayslipRequestUpdatedPayload {
  const _$PayslipRequestUpdatedPayloadImpl(
      {@JsonKey(name: "request_type") required this.requestType,
      required this.period,
      required this.status,
      final String? $type})
      : $type = $type ?? 'payslipRequestUpdated';

  factory _$PayslipRequestUpdatedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayslipRequestUpdatedPayloadImplFromJson(json);

  @override
  @JsonKey(name: "request_type")
  final String requestType;
  @override
  final String period;
  @override
  final String status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.payslipRequestUpdated(requestType: $requestType, period: $period, status: $status)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return payslipRequestUpdated(requestType, period, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return payslipRequestUpdated?.call(requestType, period, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
      {@JsonKey(name: "request_type") required final String requestType,
      required final String period,
      required final String status}) = _$PayslipRequestUpdatedPayloadImpl;

  factory PayslipRequestUpdatedPayload.fromJson(Map<String, dynamic> json) =
      _$PayslipRequestUpdatedPayloadImpl.fromJson;

  @JsonKey(name: "request_type")
  String get requestType;
  String get period;
  String get status;

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
  $Res call({String period, @JsonKey(name: "due_date") String dueDate});
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
    Object? period = null,
    Object? dueDate = null,
  }) {
    return _then(_$PerformanceFormOpenPayloadImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceFormOpenPayloadImpl implements PerformanceFormOpenPayload {
  const _$PerformanceFormOpenPayloadImpl(
      {required this.period,
      @JsonKey(name: "due_date") required this.dueDate,
      final String? $type})
      : $type = $type ?? 'performanceFormOpen';

  factory _$PerformanceFormOpenPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceFormOpenPayloadImplFromJson(json);

  @override
  final String period;
  @override
  @JsonKey(name: "due_date")
  final String dueDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.performanceFormOpen(period: $period, dueDate: $dueDate)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return performanceFormOpen(period, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return performanceFormOpen?.call(period, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
          {required final String period,
          @JsonKey(name: "due_date") required final String dueDate}) =
      _$PerformanceFormOpenPayloadImpl;

  factory PerformanceFormOpenPayload.fromJson(Map<String, dynamic> json) =
      _$PerformanceFormOpenPayloadImpl.fromJson;

  String get period;
  @JsonKey(name: "due_date")
  String get dueDate;

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
      @JsonKey(name: "due_date") String dueDate});
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
    Object? dueDate = null,
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
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceReminderPayloadImpl implements PerformanceReminderPayload {
  const _$PerformanceReminderPayloadImpl(
      {this.daysLeft,
      this.daysOverdue,
      @JsonKey(name: "due_date") required this.dueDate,
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
  final String dueDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.performanceReminder(daysLeft: $daysLeft, daysOverdue: $daysOverdue, dueDate: $dueDate)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return performanceReminder(daysLeft, daysOverdue, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return performanceReminder?.call(daysLeft, daysOverdue, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
          @JsonKey(name: "due_date") required final String dueDate}) =
      _$PerformanceReminderPayloadImpl;

  factory PerformanceReminderPayload.fromJson(Map<String, dynamic> json) =
      _$PerformanceReminderPayloadImpl.fromJson;

  int? get daysLeft;
  int? get daysOverdue;
  @JsonKey(name: "due_date")
  String get dueDate;

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
class _$PerformanceSubmittedPayloadImpl implements PerformanceSubmittedPayload {
  const _$PerformanceSubmittedPayloadImpl({final String? $type})
      : $type = $type ?? 'performanceSubmitted';

  factory _$PerformanceSubmittedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceSubmittedPayloadImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.performanceSubmitted()';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return performanceSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return performanceSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
abstract class _$$PerformancePublishedPayloadImplCopyWith<$Res> {
  factory _$$PerformancePublishedPayloadImplCopyWith(
          _$PerformancePublishedPayloadImpl value,
          $Res Function(_$PerformancePublishedPayloadImpl) then) =
      __$$PerformancePublishedPayloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String period});
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
    Object? period = null,
  }) {
    return _then(_$PerformancePublishedPayloadImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformancePublishedPayloadImpl implements PerformancePublishedPayload {
  const _$PerformancePublishedPayloadImpl(
      {required this.period, final String? $type})
      : $type = $type ?? 'performancePublished';

  factory _$PerformancePublishedPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformancePublishedPayloadImplFromJson(json);

  @override
  final String period;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NotificationPayload.performancePublished(period: $period)';
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
    required TResult Function(String email, String result) emailVerification,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function(String time) passwordUpdated,
    required TResult Function(String device, String location, String time)
        loginDevice,
    required TResult Function(
            String actor, String fields, String status, String time)
        profileUpdated,
    required TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)
        departmentChanged,
    required TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)
        managerChanged,
    required TResult Function(String status, String deadline)
        offboardingStarted,
    required TResult Function(String date, String time, String interviewer)
        exitInterviewSchedule,
    required TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)
        attendanceReminder,
    required TResult Function(int grace) attendanceNotPresent,
    required TResult Function(
            String date, String start, String end, String approver)
        overtimeSubmitted,
    required TResult Function(String date, String status, String actor)
        overtimeUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)
        leaveSubmitted,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)
        leaveUpdated,
    required TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)
        leaveReminder,
    required TResult Function(@JsonKey(name: "days_left") int daysLeft,
            int balance, String deadline)
        leaveExpiring,
    required TResult Function(String period) payslipAvailable,
    required TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)
        payslipRequestUpdated,
    required TResult Function(
            String period, @JsonKey(name: "due_date") String dueDate)
        performanceFormOpen,
    required TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)
        performanceReminder,
    required TResult Function() performanceSubmitted,
    required TResult Function(String period) performancePublished,
  }) {
    return performancePublished(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String result)? emailVerification,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function(String time)? passwordUpdated,
    TResult? Function(String device, String location, String time)? loginDevice,
    TResult? Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult? Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult? Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult? Function(String status, String deadline)? offboardingStarted,
    TResult? Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult? Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult? Function(int grace)? attendanceNotPresent,
    TResult? Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult? Function(String date, String status, String actor)?
        overtimeUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult? Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult? Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult? Function(String period)? payslipAvailable,
    TResult? Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult? Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult? Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult? Function()? performanceSubmitted,
    TResult? Function(String period)? performancePublished,
  }) {
    return performancePublished?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String result)? emailVerification,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function(String time)? passwordUpdated,
    TResult Function(String device, String location, String time)? loginDevice,
    TResult Function(String actor, String fields, String status, String time)?
        profileUpdated,
    TResult Function(String department, String team,
            @JsonKey(name: "effective_date") String effectiveDate)?
        departmentChanged,
    TResult Function(@JsonKey(name: "manager_name") String managerName,
            @JsonKey(name: "effective_date") String effectiveDate)?
        managerChanged,
    TResult Function(String status, String deadline)? offboardingStarted,
    TResult Function(String date, String time, String interviewer)?
        exitInterviewSchedule,
    TResult Function(
            @JsonKey(name: "start_time") String startTime, int minutes)?
        attendanceReminder,
    TResult Function(int grace)? attendanceNotPresent,
    TResult Function(String date, String start, String end, String approver)?
        overtimeSubmitted,
    TResult Function(String date, String status, String actor)? overtimeUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String approver)?
        leaveSubmitted,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String start, String end, String status)?
        leaveUpdated,
    TResult Function(@JsonKey(name: "leave_type") String leaveType,
            String relativeDay, String date)?
        leaveReminder,
    TResult Function(@JsonKey(name: "days_left") int daysLeft, int balance,
            String deadline)?
        leaveExpiring,
    TResult Function(String period)? payslipAvailable,
    TResult Function(@JsonKey(name: "request_type") String requestType,
            String period, String status)?
        payslipRequestUpdated,
    TResult Function(String period, @JsonKey(name: "due_date") String dueDate)?
        performanceFormOpen,
    TResult Function(int? daysLeft, int? daysOverdue,
            @JsonKey(name: "due_date") String dueDate)?
        performanceReminder,
    TResult Function()? performanceSubmitted,
    TResult Function(String period)? performancePublished,
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
    required TResult Function(PerformancePublishedPayload value)
        performancePublished,
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
    TResult? Function(PerformancePublishedPayload value)? performancePublished,
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
    TResult Function(PerformancePublishedPayload value)? performancePublished,
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
  const factory PerformancePublishedPayload({required final String period}) =
      _$PerformancePublishedPayloadImpl;

  factory PerformancePublishedPayload.fromJson(Map<String, dynamic> json) =
      _$PerformancePublishedPayloadImpl.fromJson;

  String get period;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformancePublishedPayloadImplCopyWith<_$PerformancePublishedPayloadImpl>
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
class _$NotificationDataImpl implements _NotificationData {
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
  String toString() {
    return 'NotificationData(title: $title, message: $message, code: $code, data: $data)';
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
class _$NotificationResponseImpl implements _NotificationResponse {
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
  String toString() {
    return 'NotificationResponse(id: $id, notifiableId: $notifiableId, data: $data, readAt: $readAt, createdAt: $createdAt, updatedAt: $updatedAt)';
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
