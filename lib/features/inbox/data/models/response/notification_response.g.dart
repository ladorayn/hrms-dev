// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailVerificationPayloadImpl _$$EmailVerificationPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailVerificationPayloadImpl(
      email: json['email'] as String?,
      result: json['result'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EmailVerificationPayloadImplToJson(
        _$EmailVerificationPayloadImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'result': instance.result,
      'type': instance.$type,
    };

_$ResetPasswordRequestedPayloadImpl
    _$$ResetPasswordRequestedPayloadImplFromJson(Map<String, dynamic> json) =>
        _$ResetPasswordRequestedPayloadImpl(
          email: json['email'] as String?,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$ResetPasswordRequestedPayloadImplToJson(
        _$ResetPasswordRequestedPayloadImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'type': instance.$type,
    };

_$PasswordUpdatedPayloadImpl _$$PasswordUpdatedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdatedPayloadImpl(
      time: json['time'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PasswordUpdatedPayloadImplToJson(
        _$PasswordUpdatedPayloadImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'type': instance.$type,
    };

_$LoginDevicePayloadImpl _$$LoginDevicePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginDevicePayloadImpl(
      device: json['device'] as String?,
      location: json['location'] as String?,
      time: json['time'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoginDevicePayloadImplToJson(
        _$LoginDevicePayloadImpl instance) =>
    <String, dynamic>{
      'device': instance.device,
      'location': instance.location,
      'time': instance.time,
      'type': instance.$type,
    };

_$ProfileUpdatedPayloadImpl _$$ProfileUpdatedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdatedPayloadImpl(
      actor: json['actor'] as String?,
      fields: json['fields'] as String?,
      status: json['status'] as String?,
      time: json['time'] as String?,
      userId: json['user_id'] as String?,
      email: json['email'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ProfileUpdatedPayloadImplToJson(
        _$ProfileUpdatedPayloadImpl instance) =>
    <String, dynamic>{
      'actor': instance.actor,
      'fields': instance.fields,
      'status': instance.status,
      'time': instance.time,
      'user_id': instance.userId,
      'email': instance.email,
      'type': instance.$type,
    };

_$DepartmentChangedPayloadImpl _$$DepartmentChangedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartmentChangedPayloadImpl(
      department: json['department'] as String?,
      team: json['team'] as String?,
      effectiveDate: json['effective_date'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DepartmentChangedPayloadImplToJson(
        _$DepartmentChangedPayloadImpl instance) =>
    <String, dynamic>{
      'department': instance.department,
      'team': instance.team,
      'effective_date': instance.effectiveDate,
      'type': instance.$type,
    };

_$ManagerChangedPayloadImpl _$$ManagerChangedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ManagerChangedPayloadImpl(
      managerName: json['manager_name'] as String?,
      effectiveDate: json['effective_date'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ManagerChangedPayloadImplToJson(
        _$ManagerChangedPayloadImpl instance) =>
    <String, dynamic>{
      'manager_name': instance.managerName,
      'effective_date': instance.effectiveDate,
      'type': instance.$type,
    };

_$OffboardingStartedPayloadImpl _$$OffboardingStartedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OffboardingStartedPayloadImpl(
      status: json['status'] as String?,
      deadline: json['deadline'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OffboardingStartedPayloadImplToJson(
        _$OffboardingStartedPayloadImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'deadline': instance.deadline,
      'type': instance.$type,
    };

_$ExitInterviewSchedulePayloadImpl _$$ExitInterviewSchedulePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ExitInterviewSchedulePayloadImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      interviewer: json['interviewer'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExitInterviewSchedulePayloadImplToJson(
        _$ExitInterviewSchedulePayloadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'interviewer': instance.interviewer,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'type': instance.$type,
    };

_$AttendanceReminderPayloadImpl _$$AttendanceReminderPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceReminderPayloadImpl(
      startTime: json['start_time'] as String?,
      minutes: (json['minutes'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AttendanceReminderPayloadImplToJson(
        _$AttendanceReminderPayloadImpl instance) =>
    <String, dynamic>{
      'start_time': instance.startTime,
      'minutes': instance.minutes,
      'type': instance.$type,
    };

_$AttendanceNotPresentPayloadImpl _$$AttendanceNotPresentPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceNotPresentPayloadImpl(
      grace: (json['grace'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AttendanceNotPresentPayloadImplToJson(
        _$AttendanceNotPresentPayloadImpl instance) =>
    <String, dynamic>{
      'grace': instance.grace,
      'type': instance.$type,
    };

_$OvertimeSubmittedPayloadImpl _$$OvertimeSubmittedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OvertimeSubmittedPayloadImpl(
      date: json['date'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      approver: json['approver'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OvertimeSubmittedPayloadImplToJson(
        _$OvertimeSubmittedPayloadImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'start': instance.start,
      'end': instance.end,
      'approver': instance.approver,
      'type': instance.$type,
    };

_$OvertimeUpdatedPayloadImpl _$$OvertimeUpdatedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OvertimeUpdatedPayloadImpl(
      date: json['date'] as String?,
      status: json['status'] as String?,
      actor: json['actor'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OvertimeUpdatedPayloadImplToJson(
        _$OvertimeUpdatedPayloadImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'status': instance.status,
      'actor': instance.actor,
      'type': instance.$type,
    };

_$LeaveSubmittedPayloadImpl _$$LeaveSubmittedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveSubmittedPayloadImpl(
      leaveType: json['leave_type'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      approver: json['approver'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LeaveSubmittedPayloadImplToJson(
        _$LeaveSubmittedPayloadImpl instance) =>
    <String, dynamic>{
      'leave_type': instance.leaveType,
      'start': instance.start,
      'end': instance.end,
      'approver': instance.approver,
      'type': instance.$type,
    };

_$LeaveUpdatedPayloadImpl _$$LeaveUpdatedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveUpdatedPayloadImpl(
      leaveType: json['leave_type'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      status: json['status'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LeaveUpdatedPayloadImplToJson(
        _$LeaveUpdatedPayloadImpl instance) =>
    <String, dynamic>{
      'leave_type': instance.leaveType,
      'start': instance.start,
      'end': instance.end,
      'status': instance.status,
      'type': instance.$type,
    };

_$LeaveReminderPayloadImpl _$$LeaveReminderPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveReminderPayloadImpl(
      leaveType: json['leave_type'] as String?,
      relativeDay: json['relativeDay'] as String?,
      date: json['date'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LeaveReminderPayloadImplToJson(
        _$LeaveReminderPayloadImpl instance) =>
    <String, dynamic>{
      'leave_type': instance.leaveType,
      'relativeDay': instance.relativeDay,
      'date': instance.date,
      'type': instance.$type,
    };

_$LeaveExpiringPayloadImpl _$$LeaveExpiringPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveExpiringPayloadImpl(
      daysLeft: (json['days_left'] as num?)?.toInt(),
      balance: (json['balance'] as num?)?.toInt(),
      deadline: json['deadline'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LeaveExpiringPayloadImplToJson(
        _$LeaveExpiringPayloadImpl instance) =>
    <String, dynamic>{
      'days_left': instance.daysLeft,
      'balance': instance.balance,
      'deadline': instance.deadline,
      'type': instance.$type,
    };

_$PayslipAvailablePayloadImpl _$$PayslipAvailablePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipAvailablePayloadImpl(
      period: json['period'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PayslipAvailablePayloadImplToJson(
        _$PayslipAvailablePayloadImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'type': instance.$type,
    };

_$PayslipRequestUpdatedPayloadImpl _$$PayslipRequestUpdatedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipRequestUpdatedPayloadImpl(
      requestType: json['request_type'] as String?,
      period: json['period'] as String?,
      status: json['status'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PayslipRequestUpdatedPayloadImplToJson(
        _$PayslipRequestUpdatedPayloadImpl instance) =>
    <String, dynamic>{
      'request_type': instance.requestType,
      'period': instance.period,
      'status': instance.status,
      'type': instance.$type,
    };

_$PerformanceFormOpenPayloadImpl _$$PerformanceFormOpenPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceFormOpenPayloadImpl(
      period: json['period'] as String?,
      dueDate: json['due_date'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PerformanceFormOpenPayloadImplToJson(
        _$PerformanceFormOpenPayloadImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'due_date': instance.dueDate,
      'type': instance.$type,
    };

_$PerformanceReminderPayloadImpl _$$PerformanceReminderPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceReminderPayloadImpl(
      daysLeft: (json['daysLeft'] as num?)?.toInt(),
      daysOverdue: (json['daysOverdue'] as num?)?.toInt(),
      dueDate: json['due_date'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PerformanceReminderPayloadImplToJson(
        _$PerformanceReminderPayloadImpl instance) =>
    <String, dynamic>{
      'daysLeft': instance.daysLeft,
      'daysOverdue': instance.daysOverdue,
      'due_date': instance.dueDate,
      'type': instance.$type,
    };

_$PerformanceSubmittedPayloadImpl _$$PerformanceSubmittedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceSubmittedPayloadImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PerformanceSubmittedPayloadImplToJson(
        _$PerformanceSubmittedPayloadImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$ValidateHandoverPayloadImpl _$$ValidateHandoverPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateHandoverPayloadImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ValidateHandoverPayloadImplToJson(
        _$ValidateHandoverPayloadImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$PerformancePublishedPayloadImpl _$$PerformancePublishedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformancePublishedPayloadImpl(
      period: json['period'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PerformancePublishedPayloadImplToJson(
        _$PerformancePublishedPayloadImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'type': instance.$type,
    };

_$SupervisorAssessmentSchedulePayloadImpl
    _$$SupervisorAssessmentSchedulePayloadImplFromJson(
            Map<String, dynamic> json) =>
        _$SupervisorAssessmentSchedulePayloadImpl(
          scheduleId: json['schedule_id'] as String?,
          date: json['date'] as String?,
          startTime: json['start_time'] as String?,
          endTime: json['end_time'] as String?,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$SupervisorAssessmentSchedulePayloadImplToJson(
        _$SupervisorAssessmentSchedulePayloadImpl instance) =>
    <String, dynamic>{
      'schedule_id': instance.scheduleId,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'type': instance.$type,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      title: json['title'] as String?,
      message: json['message'] as String?,
      code: json['code'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$NotificationResponseImpl _$$NotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationResponseImpl(
      id: json['id'] as String?,
      notifiableId: (json['notifiable_id'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NotificationResponseImplToJson(
        _$NotificationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notifiable_id': instance.notifiableId,
      'data': instance.data,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
