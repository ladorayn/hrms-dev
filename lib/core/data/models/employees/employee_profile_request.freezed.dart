// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeProfileRequest _$EmployeeProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _EmployeeProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$EmployeeProfileRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  int get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  String get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'blood_type')
  String get bloodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_number')
  String get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'npwp')
  String get npwp => throw _privateConstructorUsedError;
  @JsonKey(name: 'bpjs')
  String get bpjs => throw _privateConstructorUsedError;
  @JsonKey(name: 'citizen_id_address')
  String get citizenIdAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'residential_address')
  String get residentialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'hobby')
  String get hobby => throw _privateConstructorUsedError;
  @JsonKey(name: 'achievement')
  String get achievement => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_description')
  String get personalDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position_id')
  int get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level_id')
  int get jobLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  int get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_members')
  List<TeamMemberRequest> get teamMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_salary')
  int get baseSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_nett')
  int get salaryNett => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_id')
  int get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String get accountName => throw _privateConstructorUsedError;

  /// Serializes this EmployeeProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeProfileRequestCopyWith<EmployeeProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeProfileRequestCopyWith<$Res> {
  factory $EmployeeProfileRequestCopyWith(EmployeeProfileRequest value,
          $Res Function(EmployeeProfileRequest) then) =
      _$EmployeeProfileRequestCopyWithImpl<$Res, EmployeeProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'role_id') int roleId,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      @JsonKey(name: 'place_of_birth') String placeOfBirth,
      @JsonKey(name: 'marital_status') String maritalStatus,
      @JsonKey(name: 'blood_type') String bloodType,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'id_number') String idNumber,
      @JsonKey(name: 'npwp') String npwp,
      @JsonKey(name: 'bpjs') String bpjs,
      @JsonKey(name: 'citizen_id_address') String citizenIdAddress,
      @JsonKey(name: 'residential_address') String residentialAddress,
      @JsonKey(name: 'hobby') String hobby,
      @JsonKey(name: 'achievement') String achievement,
      @JsonKey(name: 'personal_description') String personalDescription,
      @JsonKey(name: 'job_position_id') int jobPositionId,
      @JsonKey(name: 'job_level_id') int jobLevelId,
      @JsonKey(name: 'department_id') int departmentId,
      @JsonKey(name: 'team_members') List<TeamMemberRequest> teamMembers,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'base_salary') int baseSalary,
      @JsonKey(name: 'salary_nett') int salaryNett,
      @JsonKey(name: 'bank_id') int bankId,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_name') String accountName});
}

/// @nodoc
class _$EmployeeProfileRequestCopyWithImpl<$Res,
        $Val extends EmployeeProfileRequest>
    implements $EmployeeProfileRequestCopyWith<$Res> {
  _$EmployeeProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? roleId = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? placeOfBirth = null,
    Object? maritalStatus = null,
    Object? bloodType = null,
    Object? height = null,
    Object? weight = null,
    Object? idNumber = null,
    Object? npwp = null,
    Object? bpjs = null,
    Object? citizenIdAddress = null,
    Object? residentialAddress = null,
    Object? hobby = null,
    Object? achievement = null,
    Object? personalDescription = null,
    Object? jobPositionId = null,
    Object? jobLevelId = null,
    Object? departmentId = null,
    Object? teamMembers = null,
    Object? startDate = null,
    Object? status = null,
    Object? baseSalary = null,
    Object? salaryNett = null,
    Object? bankId = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      npwp: null == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String,
      bpjs: null == bpjs
          ? _value.bpjs
          : bpjs // ignore: cast_nullable_to_non_nullable
              as String,
      citizenIdAddress: null == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String,
      residentialAddress: null == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hobby: null == hobby
          ? _value.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String,
      achievement: null == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String,
      personalDescription: null == personalDescription
          ? _value.personalDescription
          : personalDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobPositionId: null == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      jobLevelId: null == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      teamMembers: null == teamMembers
          ? _value.teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberRequest>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      baseSalary: null == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as int,
      salaryNett: null == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeProfileRequestImplCopyWith<$Res>
    implements $EmployeeProfileRequestCopyWith<$Res> {
  factory _$$EmployeeProfileRequestImplCopyWith(
          _$EmployeeProfileRequestImpl value,
          $Res Function(_$EmployeeProfileRequestImpl) then) =
      __$$EmployeeProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'role_id') int roleId,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      @JsonKey(name: 'place_of_birth') String placeOfBirth,
      @JsonKey(name: 'marital_status') String maritalStatus,
      @JsonKey(name: 'blood_type') String bloodType,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'weight') int weight,
      @JsonKey(name: 'id_number') String idNumber,
      @JsonKey(name: 'npwp') String npwp,
      @JsonKey(name: 'bpjs') String bpjs,
      @JsonKey(name: 'citizen_id_address') String citizenIdAddress,
      @JsonKey(name: 'residential_address') String residentialAddress,
      @JsonKey(name: 'hobby') String hobby,
      @JsonKey(name: 'achievement') String achievement,
      @JsonKey(name: 'personal_description') String personalDescription,
      @JsonKey(name: 'job_position_id') int jobPositionId,
      @JsonKey(name: 'job_level_id') int jobLevelId,
      @JsonKey(name: 'department_id') int departmentId,
      @JsonKey(name: 'team_members') List<TeamMemberRequest> teamMembers,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'base_salary') int baseSalary,
      @JsonKey(name: 'salary_nett') int salaryNett,
      @JsonKey(name: 'bank_id') int bankId,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_name') String accountName});
}

/// @nodoc
class __$$EmployeeProfileRequestImplCopyWithImpl<$Res>
    extends _$EmployeeProfileRequestCopyWithImpl<$Res,
        _$EmployeeProfileRequestImpl>
    implements _$$EmployeeProfileRequestImplCopyWith<$Res> {
  __$$EmployeeProfileRequestImplCopyWithImpl(
      _$EmployeeProfileRequestImpl _value,
      $Res Function(_$EmployeeProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? roleId = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? placeOfBirth = null,
    Object? maritalStatus = null,
    Object? bloodType = null,
    Object? height = null,
    Object? weight = null,
    Object? idNumber = null,
    Object? npwp = null,
    Object? bpjs = null,
    Object? citizenIdAddress = null,
    Object? residentialAddress = null,
    Object? hobby = null,
    Object? achievement = null,
    Object? personalDescription = null,
    Object? jobPositionId = null,
    Object? jobLevelId = null,
    Object? departmentId = null,
    Object? teamMembers = null,
    Object? startDate = null,
    Object? status = null,
    Object? baseSalary = null,
    Object? salaryNett = null,
    Object? bankId = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_$EmployeeProfileRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      npwp: null == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String,
      bpjs: null == bpjs
          ? _value.bpjs
          : bpjs // ignore: cast_nullable_to_non_nullable
              as String,
      citizenIdAddress: null == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String,
      residentialAddress: null == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hobby: null == hobby
          ? _value.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String,
      achievement: null == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String,
      personalDescription: null == personalDescription
          ? _value.personalDescription
          : personalDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobPositionId: null == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int,
      jobLevelId: null == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      teamMembers: null == teamMembers
          ? _value._teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberRequest>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      baseSalary: null == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as int,
      salaryNett: null == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeProfileRequestImpl implements _EmployeeProfileRequest {
  const _$EmployeeProfileRequestImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'role_id') required this.roleId,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      @JsonKey(name: 'place_of_birth') required this.placeOfBirth,
      @JsonKey(name: 'marital_status') required this.maritalStatus,
      @JsonKey(name: 'blood_type') required this.bloodType,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'weight') required this.weight,
      @JsonKey(name: 'id_number') required this.idNumber,
      @JsonKey(name: 'npwp') required this.npwp,
      @JsonKey(name: 'bpjs') required this.bpjs,
      @JsonKey(name: 'citizen_id_address') required this.citizenIdAddress,
      @JsonKey(name: 'residential_address') required this.residentialAddress,
      @JsonKey(name: 'hobby') required this.hobby,
      @JsonKey(name: 'achievement') required this.achievement,
      @JsonKey(name: 'personal_description') required this.personalDescription,
      @JsonKey(name: 'job_position_id') required this.jobPositionId,
      @JsonKey(name: 'job_level_id') required this.jobLevelId,
      @JsonKey(name: 'department_id') required this.departmentId,
      @JsonKey(name: 'team_members')
      required final List<TeamMemberRequest> teamMembers,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'base_salary') required this.baseSalary,
      @JsonKey(name: 'salary_nett') required this.salaryNett,
      @JsonKey(name: 'bank_id') required this.bankId,
      @JsonKey(name: 'account_number') required this.accountNumber,
      @JsonKey(name: 'account_name') required this.accountName})
      : _teamMembers = teamMembers;

  factory _$EmployeeProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'role_id')
  final int roleId;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  final String placeOfBirth;
  @override
  @JsonKey(name: 'marital_status')
  final String maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  final String bloodType;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'weight')
  final int weight;
  @override
  @JsonKey(name: 'id_number')
  final String idNumber;
  @override
  @JsonKey(name: 'npwp')
  final String npwp;
  @override
  @JsonKey(name: 'bpjs')
  final String bpjs;
  @override
  @JsonKey(name: 'citizen_id_address')
  final String citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  final String residentialAddress;
  @override
  @JsonKey(name: 'hobby')
  final String hobby;
  @override
  @JsonKey(name: 'achievement')
  final String achievement;
  @override
  @JsonKey(name: 'personal_description')
  final String personalDescription;
  @override
  @JsonKey(name: 'job_position_id')
  final int jobPositionId;
  @override
  @JsonKey(name: 'job_level_id')
  final int jobLevelId;
  @override
  @JsonKey(name: 'department_id')
  final int departmentId;
  final List<TeamMemberRequest> _teamMembers;
  @override
  @JsonKey(name: 'team_members')
  List<TeamMemberRequest> get teamMembers {
    if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamMembers);
  }

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'base_salary')
  final int baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  final int salaryNett;
  @override
  @JsonKey(name: 'bank_id')
  final int bankId;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  @JsonKey(name: 'account_name')
  final String accountName;

  @override
  String toString() {
    return 'EmployeeProfileRequest(name: $name, email: $email, phoneNumber: $phoneNumber, roleId: $roleId, gender: $gender, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, maritalStatus: $maritalStatus, bloodType: $bloodType, height: $height, weight: $weight, idNumber: $idNumber, npwp: $npwp, bpjs: $bpjs, citizenIdAddress: $citizenIdAddress, residentialAddress: $residentialAddress, hobby: $hobby, achievement: $achievement, personalDescription: $personalDescription, jobPositionId: $jobPositionId, jobLevelId: $jobLevelId, departmentId: $departmentId, teamMembers: $teamMembers, startDate: $startDate, status: $status, baseSalary: $baseSalary, salaryNett: $salaryNett, bankId: $bankId, accountNumber: $accountNumber, accountName: $accountName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeProfileRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.npwp, npwp) || other.npwp == npwp) &&
            (identical(other.bpjs, bpjs) || other.bpjs == bpjs) &&
            (identical(other.citizenIdAddress, citizenIdAddress) ||
                other.citizenIdAddress == citizenIdAddress) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.hobby, hobby) || other.hobby == hobby) &&
            (identical(other.achievement, achievement) ||
                other.achievement == achievement) &&
            (identical(other.personalDescription, personalDescription) ||
                other.personalDescription == personalDescription) &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.jobLevelId, jobLevelId) ||
                other.jobLevelId == jobLevelId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            const DeepCollectionEquality()
                .equals(other._teamMembers, _teamMembers) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.baseSalary, baseSalary) ||
                other.baseSalary == baseSalary) &&
            (identical(other.salaryNett, salaryNett) ||
                other.salaryNett == salaryNett) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        email,
        phoneNumber,
        roleId,
        gender,
        dateOfBirth,
        placeOfBirth,
        maritalStatus,
        bloodType,
        height,
        weight,
        idNumber,
        npwp,
        bpjs,
        citizenIdAddress,
        residentialAddress,
        hobby,
        achievement,
        personalDescription,
        jobPositionId,
        jobLevelId,
        departmentId,
        const DeepCollectionEquality().hash(_teamMembers),
        startDate,
        status,
        baseSalary,
        salaryNett,
        bankId,
        accountNumber,
        accountName
      ]);

  /// Create a copy of EmployeeProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeProfileRequestImplCopyWith<_$EmployeeProfileRequestImpl>
      get copyWith => __$$EmployeeProfileRequestImplCopyWithImpl<
          _$EmployeeProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _EmployeeProfileRequest implements EmployeeProfileRequest {
  const factory _EmployeeProfileRequest(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'phone_number') required final String phoneNumber,
          @JsonKey(name: 'role_id') required final int roleId,
          @JsonKey(name: 'gender') required final String gender,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          @JsonKey(name: 'place_of_birth') required final String placeOfBirth,
          @JsonKey(name: 'marital_status') required final String maritalStatus,
          @JsonKey(name: 'blood_type') required final String bloodType,
          @JsonKey(name: 'height') required final int height,
          @JsonKey(name: 'weight') required final int weight,
          @JsonKey(name: 'id_number') required final String idNumber,
          @JsonKey(name: 'npwp') required final String npwp,
          @JsonKey(name: 'bpjs') required final String bpjs,
          @JsonKey(name: 'citizen_id_address')
          required final String citizenIdAddress,
          @JsonKey(name: 'residential_address')
          required final String residentialAddress,
          @JsonKey(name: 'hobby') required final String hobby,
          @JsonKey(name: 'achievement') required final String achievement,
          @JsonKey(name: 'personal_description')
          required final String personalDescription,
          @JsonKey(name: 'job_position_id') required final int jobPositionId,
          @JsonKey(name: 'job_level_id') required final int jobLevelId,
          @JsonKey(name: 'department_id') required final int departmentId,
          @JsonKey(name: 'team_members')
          required final List<TeamMemberRequest> teamMembers,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'base_salary') required final int baseSalary,
          @JsonKey(name: 'salary_nett') required final int salaryNett,
          @JsonKey(name: 'bank_id') required final int bankId,
          @JsonKey(name: 'account_number') required final String accountNumber,
          @JsonKey(name: 'account_name') required final String accountName}) =
      _$EmployeeProfileRequestImpl;

  factory _EmployeeProfileRequest.fromJson(Map<String, dynamic> json) =
      _$EmployeeProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'role_id')
  int get roleId;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  String get placeOfBirth;
  @override
  @JsonKey(name: 'marital_status')
  String get maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  String get bloodType;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(name: 'weight')
  int get weight;
  @override
  @JsonKey(name: 'id_number')
  String get idNumber;
  @override
  @JsonKey(name: 'npwp')
  String get npwp;
  @override
  @JsonKey(name: 'bpjs')
  String get bpjs;
  @override
  @JsonKey(name: 'citizen_id_address')
  String get citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  String get residentialAddress;
  @override
  @JsonKey(name: 'hobby')
  String get hobby;
  @override
  @JsonKey(name: 'achievement')
  String get achievement;
  @override
  @JsonKey(name: 'personal_description')
  String get personalDescription;
  @override
  @JsonKey(name: 'job_position_id')
  int get jobPositionId;
  @override
  @JsonKey(name: 'job_level_id')
  int get jobLevelId;
  @override
  @JsonKey(name: 'department_id')
  int get departmentId;
  @override
  @JsonKey(name: 'team_members')
  List<TeamMemberRequest> get teamMembers;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'base_salary')
  int get baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  int get salaryNett;
  @override
  @JsonKey(name: 'bank_id')
  int get bankId;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @override
  @JsonKey(name: 'account_name')
  String get accountName;

  /// Create a copy of EmployeeProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeProfileRequestImplCopyWith<_$EmployeeProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TeamMemberRequest _$TeamMemberRequestFromJson(Map<String, dynamic> json) {
  return _TeamMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$TeamMemberRequest {
  @JsonKey(name: 'team_id')
  int get teamId => throw _privateConstructorUsedError;

  /// Serializes this TeamMemberRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamMemberRequestCopyWith<TeamMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberRequestCopyWith<$Res> {
  factory $TeamMemberRequestCopyWith(
          TeamMemberRequest value, $Res Function(TeamMemberRequest) then) =
      _$TeamMemberRequestCopyWithImpl<$Res, TeamMemberRequest>;
  @useResult
  $Res call({@JsonKey(name: 'team_id') int teamId});
}

/// @nodoc
class _$TeamMemberRequestCopyWithImpl<$Res, $Val extends TeamMemberRequest>
    implements $TeamMemberRequestCopyWith<$Res> {
  _$TeamMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamMemberRequestImplCopyWith<$Res>
    implements $TeamMemberRequestCopyWith<$Res> {
  factory _$$TeamMemberRequestImplCopyWith(_$TeamMemberRequestImpl value,
          $Res Function(_$TeamMemberRequestImpl) then) =
      __$$TeamMemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'team_id') int teamId});
}

/// @nodoc
class __$$TeamMemberRequestImplCopyWithImpl<$Res>
    extends _$TeamMemberRequestCopyWithImpl<$Res, _$TeamMemberRequestImpl>
    implements _$$TeamMemberRequestImplCopyWith<$Res> {
  __$$TeamMemberRequestImplCopyWithImpl(_$TeamMemberRequestImpl _value,
      $Res Function(_$TeamMemberRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
  }) {
    return _then(_$TeamMemberRequestImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamMemberRequestImpl implements _TeamMemberRequest {
  const _$TeamMemberRequestImpl(
      {@JsonKey(name: 'team_id') required this.teamId});

  factory _$TeamMemberRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamMemberRequestImplFromJson(json);

  @override
  @JsonKey(name: 'team_id')
  final int teamId;

  @override
  String toString() {
    return 'TeamMemberRequest(teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberRequestImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, teamId);

  /// Create a copy of TeamMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberRequestImplCopyWith<_$TeamMemberRequestImpl> get copyWith =>
      __$$TeamMemberRequestImplCopyWithImpl<_$TeamMemberRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamMemberRequestImplToJson(
      this,
    );
  }
}

abstract class _TeamMemberRequest implements TeamMemberRequest {
  const factory _TeamMemberRequest(
          {@JsonKey(name: 'team_id') required final int teamId}) =
      _$TeamMemberRequestImpl;

  factory _TeamMemberRequest.fromJson(Map<String, dynamic> json) =
      _$TeamMemberRequestImpl.fromJson;

  @override
  @JsonKey(name: 'team_id')
  int get teamId;

  /// Create a copy of TeamMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamMemberRequestImplCopyWith<_$TeamMemberRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
