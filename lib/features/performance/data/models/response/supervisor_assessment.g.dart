// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_assessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employeeCode: json['employee_code'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'employee_id': instance.employeeId,
      'employee_code': instance.employeeCode,
      'avatar_url': instance.avatarUrl,
    };

_$PositionLevelImpl _$$PositionLevelImplFromJson(Map<String, dynamic> json) =>
    _$PositionLevelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      status: json['status'] as String?,
      isRoot: json['is_root'] as bool?,
    );

Map<String, dynamic> _$$PositionLevelImplToJson(_$PositionLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'status': instance.status,
      'is_root': instance.isRoot,
    };

_$AssessmentFormImpl _$$AssessmentFormImplFromJson(Map<String, dynamic> json) =>
    _$AssessmentFormImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AssessmentFormImplToJson(
        _$AssessmentFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SupervisorAssessmentImpl _$$SupervisorAssessmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SupervisorAssessmentImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      currentPosition: json['current_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_position'] as Map<String, dynamic>),
      currentLevel: json['current_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_level'] as Map<String, dynamic>),
      targetPosition: json['target_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_position'] as Map<String, dynamic>),
      targetLevel: json['target_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_level'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      schedule: json['schedule'] == null
          ? null
          : AssessmentSchedule.fromJson(
              json['schedule'] as Map<String, dynamic>),
      form: json['form'] == null
          ? null
          : AssessmentForm.fromJson(json['form'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SupervisorAssessmentImplToJson(
        _$SupervisorAssessmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'current_position': instance.currentPosition,
      'current_level': instance.currentLevel,
      'target_position': instance.targetPosition,
      'target_level': instance.targetLevel,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'schedule': instance.schedule,
      'form': instance.form,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$AssessorImpl _$$AssessorImplFromJson(Map<String, dynamic> json) =>
    _$AssessorImpl(
      id: (json['id'] as num?)?.toInt(),
      supervisorAssessmentId:
          (json['supervisor_assessment_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
    );

Map<String, dynamic> _$$AssessorImplToJson(_$AssessorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supervisor_assessment_id': instance.supervisorAssessmentId,
      'user_id': instance.userId,
      'score': instance.score,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
      'status_label': instance.statusLabel,
    };

_$ParticipantImpl _$$ParticipantImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      employeeId: (json['employee_id'] as num?)?.toInt(),
      employeeCode: json['employee_code'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$ParticipantImplToJson(_$ParticipantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'employee_id': instance.employeeId,
      'employee_code': instance.employeeCode,
      'avatar_url': instance.avatarUrl,
    };

_$AssessmentScheduleImpl _$$AssessmentScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentScheduleImpl(
      id: (json['id'] as num?)?.toInt(),
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$AssessmentScheduleImplToJson(
        _$AssessmentScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'participants': instance.participants,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$FinalSubmissionFieldImpl _$$FinalSubmissionFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalSubmissionFieldImpl(
      value: json['value'],
      fieldId: (json['field_id'] as num?)?.toInt(),
      assessorId: (json['assessor_id'] as num?)?.toInt(),
      additionalData: (json['additional_data'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formSubmissionId: (json['form_submission_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FinalSubmissionFieldImplToJson(
        _$FinalSubmissionFieldImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'field_id': instance.fieldId,
      'assessor_id': instance.assessorId,
      'additional_data': instance.additionalData,
      'form_submission_id': instance.formSubmissionId,
    };

_$FinalSubmissionDataImpl _$$FinalSubmissionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalSubmissionDataImpl(
      type: json['type'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FinalSubmissionField.fromJson(e as Map<String, dynamic>))
          .toList(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      mergedAt: json['merged_at'] as String?,
      mergedBy: json['merged_by'] as String?,
    );

Map<String, dynamic> _$$FinalSubmissionDataImplToJson(
        _$FinalSubmissionDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'fields': instance.fields,
      'sources': instance.sources,
      'merged_at': instance.mergedAt,
      'merged_by': instance.mergedBy,
    };

_$FinalSubmissionImpl _$$FinalSubmissionImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalSubmissionImpl(
      id: (json['id'] as num?)?.toInt(),
      formId: (json['form_id'] as num?)?.toInt(),
      submittedBy: (json['submitted_by'] as num?)?.toInt(),
      formableType: json['formable_type'] as String?,
      formableId: (json['formable_id'] as num?)?.toInt(),
      data: FinalSubmissionData.fromJson(json['data'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      validatedFor: json['validated_for'] as String?,
    );

Map<String, dynamic> _$$FinalSubmissionImplToJson(
        _$FinalSubmissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_id': instance.formId,
      'submitted_by': instance.submittedBy,
      'formable_type': instance.formableType,
      'formable_id': instance.formableId,
      'data': instance.data,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'validated_for': instance.validatedFor,
    };

_$SupervisorAssessmentDetailImpl _$$SupervisorAssessmentDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$SupervisorAssessmentDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      employeeStartDate: json['employee_start_date'] as String?,
      currentPosition: json['current_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_position'] as Map<String, dynamic>),
      currentLevel: json['current_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['current_level'] as Map<String, dynamic>),
      currentDepartment: json['current_department'] == null
          ? null
          : Department.fromJson(
              json['current_department'] as Map<String, dynamic>),
      targetPosition: json['target_position'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_position'] as Map<String, dynamic>),
      targetLevel: json['target_level'] == null
          ? null
          : PositionLevel.fromJson(
              json['target_level'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
      schedule: json['schedule'] == null
          ? null
          : AssessmentSchedule.fromJson(
              json['schedule'] as Map<String, dynamic>),
      assessors: (json['assessors'] as List<dynamic>?)
          ?.map((e) => Assessor.fromJson(e as Map<String, dynamic>))
          .toList(),
      form: json['form'] == null
          ? null
          : AssessmentForm.fromJson(json['form'] as Map<String, dynamic>),
      finalSubmission: json['final_submission'] == null
          ? null
          : FinalSubmission.fromJson(
              json['final_submission'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SupervisorAssessmentDetailImplToJson(
        _$SupervisorAssessmentDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'employee_start_date': instance.employeeStartDate,
      'current_position': instance.currentPosition,
      'current_level': instance.currentLevel,
      'current_department': instance.currentDepartment,
      'target_position': instance.targetPosition,
      'target_level': instance.targetLevel,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'schedule': instance.schedule,
      'assessors': instance.assessors,
      'form': instance.form,
      'final_submission': instance.finalSubmission,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
