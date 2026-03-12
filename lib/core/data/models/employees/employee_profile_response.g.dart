// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      user: json['user'] == null
          ? null
          : UserWithEmployeeData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserWithEmployeeDataImpl _$$UserWithEmployeeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserWithEmployeeDataImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeId: (json['employee_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      photoProfile: json['photo_profile'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      firstLoginAt: json['first_login_at'] as String?,
      isFirstLogin: json['is_first_login'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      employeeProfile: json['employee_profile'] == null
          ? null
          : EmployeeProfileData.fromJson(
              json['employee_profile'] as Map<String, dynamic>),
      employment: json['employment'] == null
          ? null
          : Employment.fromJson(json['employment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserWithEmployeeDataImplToJson(
        _$UserWithEmployeeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'code': instance.code,
      'photo_profile': instance.photoProfile,
      'photo_profile_url': instance.photoProfileUrl,
      'name': instance.name,
      'email': instance.email,
      'roles': instance.roles,
      'first_login_at': instance.firstLoginAt,
      'is_first_login': instance.isFirstLogin,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'employee_profile': instance.employeeProfile,
      'employment': instance.employment,
    };

_$EmployeeProfileDataImpl _$$EmployeeProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeProfileDataImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      phoneNumber: json['phone_number'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      maritalStatus: (json['marital_status'] as num?)?.toInt(),
      maritalStatusLabel: json['marital_status_label'] as String?,
      bloodType: json['blood_type'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      idNumber: json['id_number'] as String?,
      npwp: json['npwp'] as String?,
      bpjs: json['bpjs'] as String?,
      citizenIdAddress: json['citizen_id_address'] as String?,
      residentialAddress: json['residential_address'] as String?,
      hobby: json['hobby'] as String?,
      achievement: json['achievement'] as String?,
      personalDescription: json['personal_description'] as String?,
      photoProfile: json['photo_profile'] as String?,
      photoProfileUrl: json['photo_profile_url'] as String?,
      code: json['code'] as String?,
      socialMediaAccounts: (json['social_media_accounts'] as List<dynamic>?)
          ?.map((e) => SocialMediaAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankAccount: json['bank_account'] == null
          ? null
          : BankAccount.fromJson(json['bank_account'] as Map<String, dynamic>),
      teamMembers: (json['team_members'] as List<dynamic>?)
          ?.map((e) => TeamMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      reportingRelationships: (json['reporting_relationships']
              as List<dynamic>?)
          ?.map(
              (e) => ReportingRelationship.fromJson(e as Map<String, dynamic>))
          .toList(),
      workExperiences: (json['work_experiences'] as List<dynamic>?)
          ?.map((e) => WorkExperience.fromJson(e as Map<String, dynamic>))
          .toList(),
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      families: (json['families'] as List<dynamic>?)
          ?.map((e) => FamilyEmployee.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactRefferences: (json['contact_refferences'] as List<dynamic>?)
          ?.map((e) => ContactReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      employeeDocuments: (json['employee_documents'] as List<dynamic>?)
          ?.map((e) => EmployeeDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmployeeProfileDataImplToJson(
        _$EmployeeProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'place_of_birth': instance.placeOfBirth,
      'marital_status': instance.maritalStatus,
      'marital_status_label': instance.maritalStatusLabel,
      'blood_type': instance.bloodType,
      'height': instance.height,
      'weight': instance.weight,
      'id_number': instance.idNumber,
      'npwp': instance.npwp,
      'bpjs': instance.bpjs,
      'citizen_id_address': instance.citizenIdAddress,
      'residential_address': instance.residentialAddress,
      'hobby': instance.hobby,
      'achievement': instance.achievement,
      'personal_description': instance.personalDescription,
      'photo_profile': instance.photoProfile,
      'photo_profile_url': instance.photoProfileUrl,
      'code': instance.code,
      'social_media_accounts': instance.socialMediaAccounts,
      'bank_account': instance.bankAccount,
      'team_members': instance.teamMembers,
      'reporting_relationships': instance.reportingRelationships,
      'work_experiences': instance.workExperiences,
      'educations': instance.educations,
      'families': instance.families,
      'contact_refferences': instance.contactRefferences,
      'employee_documents': instance.employeeDocuments,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

_$EmploymentImpl _$$EmploymentImplFromJson(Map<String, dynamic> json) =>
    _$EmploymentImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      departmentId: (json['department_id'] as num?)?.toInt(),
      jobLevelId: (json['job_level_id'] as num?)?.toInt(),
      jobPositionId: (json['job_position_id'] as num?)?.toInt(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      baseSalary: json['base_salary'] as String?,
      salaryNett: json['salary_nett'] as String?,
      status: (json['status'] as num?)?.toInt(),
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      jobLevel: json['job_level'] == null
          ? null
          : JobLevel.fromJson(json['job_level'] as Map<String, dynamic>),
      jobPosition: json['job_position'] == null
          ? null
          : JobPosition.fromJson(json['job_position'] as Map<String, dynamic>),
      allowances: (json['allowances'] as List<dynamic>?)
          ?.map((e) => Allowance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmploymentImplToJson(_$EmploymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'department_id': instance.departmentId,
      'job_level_id': instance.jobLevelId,
      'job_position_id': instance.jobPositionId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'base_salary': instance.baseSalary,
      'salary_nett': instance.salaryNett,
      'status': instance.status,
      'department': instance.department,
      'job_level': instance.jobLevel,
      'job_position': instance.jobPosition,
      'allowances': instance.allowances,
    };

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$JobLevelImpl _$$JobLevelImplFromJson(Map<String, dynamic> json) =>
    _$JobLevelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$JobLevelImplToJson(_$JobLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$JobPositionImpl _$$JobPositionImplFromJson(Map<String, dynamic> json) =>
    _$JobPositionImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$JobPositionImplToJson(_$JobPositionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
    };

_$AllowanceImpl _$$AllowanceImplFromJson(Map<String, dynamic> json) =>
    _$AllowanceImpl(
      allowanceTypeId: (json['allowance_type_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      allowanceValue: json['allowance_value'] as num?,
    );

Map<String, dynamic> _$$AllowanceImplToJson(_$AllowanceImpl instance) =>
    <String, dynamic>{
      'allowance_type_id': instance.allowanceTypeId,
      'name': instance.name,
      'allowance_value': instance.allowanceValue,
    };

_$SocialMediaAccountImpl _$$SocialMediaAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialMediaAccountImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SocialMediaAccountImplToJson(
        _$SocialMediaAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'type': instance.type,
      'url': instance.url,
    };

_$BankAccountImpl _$$BankAccountImplFromJson(Map<String, dynamic> json) =>
    _$BankAccountImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      accountNumber: json['account_number'] as String?,
      accountName: json['account_name'] as String?,
      bankId: (json['bank_id'] as num?)?.toInt(),
      bank: json['bank'] == null
          ? null
          : Bank.fromJson(json['bank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BankAccountImplToJson(_$BankAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'bank_id': instance.bankId,
      'bank': instance.bank,
    };

_$BankImpl _$$BankImplFromJson(Map<String, dynamic> json) => _$BankImpl(
      id: (json['id'] as num?)?.toInt(),
      bankName: json['bank_name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$BankImplToJson(_$BankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bank_name': instance.bankName,
      'code': instance.code,
    };

_$TeamMemberImpl _$$TeamMemberImplFromJson(Map<String, dynamic> json) =>
    _$TeamMemberImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TeamMemberImplToJson(_$TeamMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ReportingRelationshipImpl _$$ReportingRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportingRelationshipImpl(
      id: (json['id'] as num?)?.toInt(),
      directReportId: (json['direct_report_id'] as num?)?.toInt(),
      relationshipType: json['relationship_type'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ReportingRelationshipImplToJson(
        _$ReportingRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direct_report_id': instance.directReportId,
      'relationship_type': instance.relationshipType,
      'name': instance.name,
    };

_$WorkExperienceImpl _$$WorkExperienceImplFromJson(Map<String, dynamic> json) =>
    _$WorkExperienceImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WorkExperienceImplToJson(
        _$WorkExperienceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$EducationImpl _$$EducationImplFromJson(Map<String, dynamic> json) =>
    _$EducationImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      category: json['category'] as String?,
      institution: json['institution'] as String?,
      major: json['major'] as String?,
      location: json['location'] as String?,
      startDate: json['start_date'] as String?,
      graduationDate: json['graduation_date'] as String?,
      gpa: json['gpa'] as String?,
      notes: json['notes'] as String?,
      maxGpa: json['max_gpa'] as String?,
    );

Map<String, dynamic> _$$EducationImplToJson(_$EducationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'category': instance.category,
      'institution': instance.institution,
      'major': instance.major,
      'location': instance.location,
      'start_date': instance.startDate,
      'graduation_date': instance.graduationDate,
      'gpa': instance.gpa,
      'notes': instance.notes,
      'max_gpa': instance.maxGpa,
    };

_$FamilyEmployeeImpl _$$FamilyEmployeeImplFromJson(Map<String, dynamic> json) =>
    _$FamilyEmployeeImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      relationship: json['relationship'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      highestEducation: json['highest_education'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      occupation: json['occupation'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$FamilyEmployeeImplToJson(
        _$FamilyEmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'name': instance.name,
      'relationship': instance.relationship,
      'date_of_birth': instance.dateOfBirth,
      'place_of_birth': instance.placeOfBirth,
      'highest_education': instance.highestEducation,
      'email': instance.email,
      'phone': instance.phone,
      'occupation': instance.occupation,
      'company': instance.company,
    };

_$ContactReferenceImpl _$$ContactReferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactReferenceImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ContactReferenceImplToJson(
        _$ContactReferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$EmployeeDocumentImpl _$$EmployeeDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDocumentImpl(
      id: (json['id'] as num?)?.toInt(),
      employeeProfileId: (json['employee_profile_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      filename: json['filename'] as String?,
      mimeType: json['mime_type'] as String?,
      size: (json['size'] as num?)?.toInt(),
      path: json['path'] as String?,
      disk: json['disk'] as String?,
      uploadedBy: (json['uploaded_by'] as num?)?.toInt(),
      uploadedAt: json['uploaded_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$EmployeeDocumentImplToJson(
        _$EmployeeDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_profile_id': instance.employeeProfileId,
      'type': instance.type,
      'filename': instance.filename,
      'mime_type': instance.mimeType,
      'size': instance.size,
      'path': instance.path,
      'disk': instance.disk,
      'uploaded_by': instance.uploadedBy,
      'uploaded_at': instance.uploadedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'url': instance.url,
    };
