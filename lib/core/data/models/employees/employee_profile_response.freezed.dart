// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeProfile _$EmployeeProfileFromJson(Map<String, dynamic> json) {
  return _EmployeeProfile.fromJson(json);
}

/// @nodoc
mixin _$EmployeeProfile {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  int? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'blood_type')
  String? get bloodType => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_number')
  String? get idNumber => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;
  String? get bpjs => throw _privateConstructorUsedError;
  @JsonKey(name: 'citizen_id_address')
  String? get citizenIdAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'residential_address')
  String? get residentialAddress => throw _privateConstructorUsedError;
  String? get hobby => throw _privateConstructorUsedError;
  String? get achievement => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_description')
  String? get personalDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile')
  String? get photoProfile =>
      throw _privateConstructorUsedError; // --- NEW FIELD ---
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status_label')
  String? get maritalStatusLabel => throw _privateConstructorUsedError;
  UserProfile get user => throw _privateConstructorUsedError;
  Employment? get employment =>
      throw _privateConstructorUsedError; // --- NEW FIELD ---
  Branch? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media_accounts')
  List<SocialMediaAccount>? get socialMediaAccounts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_account')
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_members')
  List<TeamMember>? get teamMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'reporting_relationships')
  List<ReportingRelationship>? get reportingRelationships =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'work_experiences')
  List<WorkExperience>? get workExperiences =>
      throw _privateConstructorUsedError;
  List<Education>? get educations => throw _privateConstructorUsedError;
  List<FamilyEmployee>? get families => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_refferences')
  List<ContactReference>? get contactRefferences =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_documents')
  List<EmployeeDocument>? get employeeDocuments =>
      throw _privateConstructorUsedError;

  /// Serializes this EmployeeProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeProfileCopyWith<EmployeeProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeProfileCopyWith<$Res> {
  factory $EmployeeProfileCopyWith(
          EmployeeProfile value, $Res Function(EmployeeProfile) then) =
      _$EmployeeProfileCopyWithImpl<$Res, EmployeeProfile>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'marital_status') int? maritalStatus,
      @JsonKey(name: 'blood_type') String? bloodType,
      String? height,
      String? weight,
      @JsonKey(name: 'id_number') String? idNumber,
      String? npwp,
      String? bpjs,
      @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
      @JsonKey(name: 'residential_address') String? residentialAddress,
      String? hobby,
      String? achievement,
      @JsonKey(name: 'personal_description') String? personalDescription,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      String? code,
      @JsonKey(name: 'marital_status_label') String? maritalStatusLabel,
      UserProfile user,
      Employment? employment,
      Branch? branch,
      @JsonKey(name: 'social_media_accounts')
      List<SocialMediaAccount>? socialMediaAccounts,
      @JsonKey(name: 'bank_account') BankAccount? bankAccount,
      @JsonKey(name: 'team_members') List<TeamMember>? teamMembers,
      @JsonKey(name: 'reporting_relationships')
      List<ReportingRelationship>? reportingRelationships,
      @JsonKey(name: 'work_experiences') List<WorkExperience>? workExperiences,
      List<Education>? educations,
      List<FamilyEmployee>? families,
      @JsonKey(name: 'contact_refferences')
      List<ContactReference>? contactRefferences,
      @JsonKey(name: 'employee_documents')
      List<EmployeeDocument>? employeeDocuments});

  $UserProfileCopyWith<$Res> get user;
  $EmploymentCopyWith<$Res>? get employment;
  $BranchCopyWith<$Res>? get branch;
  $BankAccountCopyWith<$Res>? get bankAccount;
}

/// @nodoc
class _$EmployeeProfileCopyWithImpl<$Res, $Val extends EmployeeProfile>
    implements $EmployeeProfileCopyWith<$Res> {
  _$EmployeeProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? placeOfBirth = freezed,
    Object? maritalStatus = freezed,
    Object? bloodType = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? idNumber = freezed,
    Object? npwp = freezed,
    Object? bpjs = freezed,
    Object? citizenIdAddress = freezed,
    Object? residentialAddress = freezed,
    Object? hobby = freezed,
    Object? achievement = freezed,
    Object? personalDescription = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
    Object? code = freezed,
    Object? maritalStatusLabel = freezed,
    Object? user = null,
    Object? employment = freezed,
    Object? branch = freezed,
    Object? socialMediaAccounts = freezed,
    Object? bankAccount = freezed,
    Object? teamMembers = freezed,
    Object? reportingRelationships = freezed,
    Object? workExperiences = freezed,
    Object? educations = freezed,
    Object? families = freezed,
    Object? contactRefferences = freezed,
    Object? employeeDocuments = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      bpjs: freezed == bpjs
          ? _value.bpjs
          : bpjs // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenIdAddress: freezed == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      hobby: freezed == hobby
          ? _value.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String?,
      achievement: freezed == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String?,
      personalDescription: freezed == personalDescription
          ? _value.personalDescription
          : personalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatusLabel: freezed == maritalStatusLabel
          ? _value.maritalStatusLabel
          : maritalStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      socialMediaAccounts: freezed == socialMediaAccounts
          ? _value.socialMediaAccounts
          : socialMediaAccounts // ignore: cast_nullable_to_non_nullable
              as List<SocialMediaAccount>?,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      teamMembers: freezed == teamMembers
          ? _value.teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
      reportingRelationships: freezed == reportingRelationships
          ? _value.reportingRelationships
          : reportingRelationships // ignore: cast_nullable_to_non_nullable
              as List<ReportingRelationship>?,
      workExperiences: freezed == workExperiences
          ? _value.workExperiences
          : workExperiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>?,
      educations: freezed == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      families: freezed == families
          ? _value.families
          : families // ignore: cast_nullable_to_non_nullable
              as List<FamilyEmployee>?,
      contactRefferences: freezed == contactRefferences
          ? _value.contactRefferences
          : contactRefferences // ignore: cast_nullable_to_non_nullable
              as List<ContactReference>?,
      employeeDocuments: freezed == employeeDocuments
          ? _value.employeeDocuments
          : employeeDocuments // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDocument>?,
    ) as $Val);
  }

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get user {
    return $UserProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmploymentCopyWith<$Res>? get employment {
    if (_value.employment == null) {
      return null;
    }

    return $EmploymentCopyWith<$Res>(_value.employment!, (value) {
      return _then(_value.copyWith(employment: value) as $Val);
    });
  }

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankAccountCopyWith<$Res>? get bankAccount {
    if (_value.bankAccount == null) {
      return null;
    }

    return $BankAccountCopyWith<$Res>(_value.bankAccount!, (value) {
      return _then(_value.copyWith(bankAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeProfileImplCopyWith<$Res>
    implements $EmployeeProfileCopyWith<$Res> {
  factory _$$EmployeeProfileImplCopyWith(_$EmployeeProfileImpl value,
          $Res Function(_$EmployeeProfileImpl) then) =
      __$$EmployeeProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'marital_status') int? maritalStatus,
      @JsonKey(name: 'blood_type') String? bloodType,
      String? height,
      String? weight,
      @JsonKey(name: 'id_number') String? idNumber,
      String? npwp,
      String? bpjs,
      @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
      @JsonKey(name: 'residential_address') String? residentialAddress,
      String? hobby,
      String? achievement,
      @JsonKey(name: 'personal_description') String? personalDescription,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      String? code,
      @JsonKey(name: 'marital_status_label') String? maritalStatusLabel,
      UserProfile user,
      Employment? employment,
      Branch? branch,
      @JsonKey(name: 'social_media_accounts')
      List<SocialMediaAccount>? socialMediaAccounts,
      @JsonKey(name: 'bank_account') BankAccount? bankAccount,
      @JsonKey(name: 'team_members') List<TeamMember>? teamMembers,
      @JsonKey(name: 'reporting_relationships')
      List<ReportingRelationship>? reportingRelationships,
      @JsonKey(name: 'work_experiences') List<WorkExperience>? workExperiences,
      List<Education>? educations,
      List<FamilyEmployee>? families,
      @JsonKey(name: 'contact_refferences')
      List<ContactReference>? contactRefferences,
      @JsonKey(name: 'employee_documents')
      List<EmployeeDocument>? employeeDocuments});

  @override
  $UserProfileCopyWith<$Res> get user;
  @override
  $EmploymentCopyWith<$Res>? get employment;
  @override
  $BranchCopyWith<$Res>? get branch;
  @override
  $BankAccountCopyWith<$Res>? get bankAccount;
}

/// @nodoc
class __$$EmployeeProfileImplCopyWithImpl<$Res>
    extends _$EmployeeProfileCopyWithImpl<$Res, _$EmployeeProfileImpl>
    implements _$$EmployeeProfileImplCopyWith<$Res> {
  __$$EmployeeProfileImplCopyWithImpl(
      _$EmployeeProfileImpl _value, $Res Function(_$EmployeeProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? placeOfBirth = freezed,
    Object? maritalStatus = freezed,
    Object? bloodType = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? idNumber = freezed,
    Object? npwp = freezed,
    Object? bpjs = freezed,
    Object? citizenIdAddress = freezed,
    Object? residentialAddress = freezed,
    Object? hobby = freezed,
    Object? achievement = freezed,
    Object? personalDescription = freezed,
    Object? photoProfile = freezed,
    Object? photoProfileUrl = freezed,
    Object? code = freezed,
    Object? maritalStatusLabel = freezed,
    Object? user = null,
    Object? employment = freezed,
    Object? branch = freezed,
    Object? socialMediaAccounts = freezed,
    Object? bankAccount = freezed,
    Object? teamMembers = freezed,
    Object? reportingRelationships = freezed,
    Object? workExperiences = freezed,
    Object? educations = freezed,
    Object? families = freezed,
    Object? contactRefferences = freezed,
    Object? employeeDocuments = freezed,
  }) {
    return _then(_$EmployeeProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      bpjs: freezed == bpjs
          ? _value.bpjs
          : bpjs // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenIdAddress: freezed == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      hobby: freezed == hobby
          ? _value.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String?,
      achievement: freezed == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String?,
      personalDescription: freezed == personalDescription
          ? _value.personalDescription
          : personalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatusLabel: freezed == maritalStatusLabel
          ? _value.maritalStatusLabel
          : maritalStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      socialMediaAccounts: freezed == socialMediaAccounts
          ? _value._socialMediaAccounts
          : socialMediaAccounts // ignore: cast_nullable_to_non_nullable
              as List<SocialMediaAccount>?,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      teamMembers: freezed == teamMembers
          ? _value._teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
      reportingRelationships: freezed == reportingRelationships
          ? _value._reportingRelationships
          : reportingRelationships // ignore: cast_nullable_to_non_nullable
              as List<ReportingRelationship>?,
      workExperiences: freezed == workExperiences
          ? _value._workExperiences
          : workExperiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>?,
      educations: freezed == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      families: freezed == families
          ? _value._families
          : families // ignore: cast_nullable_to_non_nullable
              as List<FamilyEmployee>?,
      contactRefferences: freezed == contactRefferences
          ? _value._contactRefferences
          : contactRefferences // ignore: cast_nullable_to_non_nullable
              as List<ContactReference>?,
      employeeDocuments: freezed == employeeDocuments
          ? _value._employeeDocuments
          : employeeDocuments // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDocument>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeProfileImpl implements _EmployeeProfile {
  const _$EmployeeProfileImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.gender,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'place_of_birth') this.placeOfBirth,
      @JsonKey(name: 'marital_status') this.maritalStatus,
      @JsonKey(name: 'blood_type') this.bloodType,
      this.height,
      this.weight,
      @JsonKey(name: 'id_number') this.idNumber,
      this.npwp,
      this.bpjs,
      @JsonKey(name: 'citizen_id_address') this.citizenIdAddress,
      @JsonKey(name: 'residential_address') this.residentialAddress,
      this.hobby,
      this.achievement,
      @JsonKey(name: 'personal_description') this.personalDescription,
      @JsonKey(name: 'photo_profile') this.photoProfile,
      @JsonKey(name: 'photo_profile_url') this.photoProfileUrl,
      this.code,
      @JsonKey(name: 'marital_status_label') this.maritalStatusLabel,
      required this.user,
      this.employment,
      this.branch,
      @JsonKey(name: 'social_media_accounts')
      final List<SocialMediaAccount>? socialMediaAccounts,
      @JsonKey(name: 'bank_account') this.bankAccount,
      @JsonKey(name: 'team_members') final List<TeamMember>? teamMembers,
      @JsonKey(name: 'reporting_relationships')
      final List<ReportingRelationship>? reportingRelationships,
      @JsonKey(name: 'work_experiences')
      final List<WorkExperience>? workExperiences,
      final List<Education>? educations,
      final List<FamilyEmployee>? families,
      @JsonKey(name: 'contact_refferences')
      final List<ContactReference>? contactRefferences,
      @JsonKey(name: 'employee_documents')
      final List<EmployeeDocument>? employeeDocuments})
      : _socialMediaAccounts = socialMediaAccounts,
        _teamMembers = teamMembers,
        _reportingRelationships = reportingRelationships,
        _workExperiences = workExperiences,
        _educations = educations,
        _families = families,
        _contactRefferences = contactRefferences,
        _employeeDocuments = employeeDocuments;

  factory _$EmployeeProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeProfileImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  @override
  @JsonKey(name: 'marital_status')
  final int? maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  final String? bloodType;
  @override
  final String? height;
  @override
  final String? weight;
  @override
  @JsonKey(name: 'id_number')
  final String? idNumber;
  @override
  final String? npwp;
  @override
  final String? bpjs;
  @override
  @JsonKey(name: 'citizen_id_address')
  final String? citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  final String? residentialAddress;
  @override
  final String? hobby;
  @override
  final String? achievement;
  @override
  @JsonKey(name: 'personal_description')
  final String? personalDescription;
  @override
  @JsonKey(name: 'photo_profile')
  final String? photoProfile;
// --- NEW FIELD ---
  @override
  @JsonKey(name: 'photo_profile_url')
  final String? photoProfileUrl;
  @override
  final String? code;
  @override
  @JsonKey(name: 'marital_status_label')
  final String? maritalStatusLabel;
  @override
  final UserProfile user;
  @override
  final Employment? employment;
// --- NEW FIELD ---
  @override
  final Branch? branch;
  final List<SocialMediaAccount>? _socialMediaAccounts;
  @override
  @JsonKey(name: 'social_media_accounts')
  List<SocialMediaAccount>? get socialMediaAccounts {
    final value = _socialMediaAccounts;
    if (value == null) return null;
    if (_socialMediaAccounts is EqualUnmodifiableListView)
      return _socialMediaAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'bank_account')
  final BankAccount? bankAccount;
  final List<TeamMember>? _teamMembers;
  @override
  @JsonKey(name: 'team_members')
  List<TeamMember>? get teamMembers {
    final value = _teamMembers;
    if (value == null) return null;
    if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReportingRelationship>? _reportingRelationships;
  @override
  @JsonKey(name: 'reporting_relationships')
  List<ReportingRelationship>? get reportingRelationships {
    final value = _reportingRelationships;
    if (value == null) return null;
    if (_reportingRelationships is EqualUnmodifiableListView)
      return _reportingRelationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkExperience>? _workExperiences;
  @override
  @JsonKey(name: 'work_experiences')
  List<WorkExperience>? get workExperiences {
    final value = _workExperiences;
    if (value == null) return null;
    if (_workExperiences is EqualUnmodifiableListView) return _workExperiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Education>? _educations;
  @override
  List<Education>? get educations {
    final value = _educations;
    if (value == null) return null;
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FamilyEmployee>? _families;
  @override
  List<FamilyEmployee>? get families {
    final value = _families;
    if (value == null) return null;
    if (_families is EqualUnmodifiableListView) return _families;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactReference>? _contactRefferences;
  @override
  @JsonKey(name: 'contact_refferences')
  List<ContactReference>? get contactRefferences {
    final value = _contactRefferences;
    if (value == null) return null;
    if (_contactRefferences is EqualUnmodifiableListView)
      return _contactRefferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EmployeeDocument>? _employeeDocuments;
  @override
  @JsonKey(name: 'employee_documents')
  List<EmployeeDocument>? get employeeDocuments {
    final value = _employeeDocuments;
    if (value == null) return null;
    if (_employeeDocuments is EqualUnmodifiableListView)
      return _employeeDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EmployeeProfile(id: $id, userId: $userId, phoneNumber: $phoneNumber, gender: $gender, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, maritalStatus: $maritalStatus, bloodType: $bloodType, height: $height, weight: $weight, idNumber: $idNumber, npwp: $npwp, bpjs: $bpjs, citizenIdAddress: $citizenIdAddress, residentialAddress: $residentialAddress, hobby: $hobby, achievement: $achievement, personalDescription: $personalDescription, photoProfile: $photoProfile, photoProfileUrl: $photoProfileUrl, code: $code, maritalStatusLabel: $maritalStatusLabel, user: $user, employment: $employment, branch: $branch, socialMediaAccounts: $socialMediaAccounts, bankAccount: $bankAccount, teamMembers: $teamMembers, reportingRelationships: $reportingRelationships, workExperiences: $workExperiences, educations: $educations, families: $families, contactRefferences: $contactRefferences, employeeDocuments: $employeeDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
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
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile) &&
            (identical(other.photoProfileUrl, photoProfileUrl) ||
                other.photoProfileUrl == photoProfileUrl) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.maritalStatusLabel, maritalStatusLabel) ||
                other.maritalStatusLabel == maritalStatusLabel) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.employment, employment) ||
                other.employment == employment) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            const DeepCollectionEquality()
                .equals(other._socialMediaAccounts, _socialMediaAccounts) &&
            (identical(other.bankAccount, bankAccount) ||
                other.bankAccount == bankAccount) &&
            const DeepCollectionEquality()
                .equals(other._teamMembers, _teamMembers) &&
            const DeepCollectionEquality().equals(
                other._reportingRelationships, _reportingRelationships) &&
            const DeepCollectionEquality()
                .equals(other._workExperiences, _workExperiences) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            const DeepCollectionEquality().equals(other._families, _families) &&
            const DeepCollectionEquality()
                .equals(other._contactRefferences, _contactRefferences) &&
            const DeepCollectionEquality()
                .equals(other._employeeDocuments, _employeeDocuments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        phoneNumber,
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
        photoProfile,
        photoProfileUrl,
        code,
        maritalStatusLabel,
        user,
        employment,
        branch,
        const DeepCollectionEquality().hash(_socialMediaAccounts),
        bankAccount,
        const DeepCollectionEquality().hash(_teamMembers),
        const DeepCollectionEquality().hash(_reportingRelationships),
        const DeepCollectionEquality().hash(_workExperiences),
        const DeepCollectionEquality().hash(_educations),
        const DeepCollectionEquality().hash(_families),
        const DeepCollectionEquality().hash(_contactRefferences),
        const DeepCollectionEquality().hash(_employeeDocuments)
      ]);

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeProfileImplCopyWith<_$EmployeeProfileImpl> get copyWith =>
      __$$EmployeeProfileImplCopyWithImpl<_$EmployeeProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeProfileImplToJson(
      this,
    );
  }
}

abstract class _EmployeeProfile implements EmployeeProfile {
  const factory _EmployeeProfile(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? gender,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') final String? placeOfBirth,
      @JsonKey(name: 'marital_status') final int? maritalStatus,
      @JsonKey(name: 'blood_type') final String? bloodType,
      final String? height,
      final String? weight,
      @JsonKey(name: 'id_number') final String? idNumber,
      final String? npwp,
      final String? bpjs,
      @JsonKey(name: 'citizen_id_address') final String? citizenIdAddress,
      @JsonKey(name: 'residential_address') final String? residentialAddress,
      final String? hobby,
      final String? achievement,
      @JsonKey(name: 'personal_description') final String? personalDescription,
      @JsonKey(name: 'photo_profile') final String? photoProfile,
      @JsonKey(name: 'photo_profile_url') final String? photoProfileUrl,
      final String? code,
      @JsonKey(name: 'marital_status_label') final String? maritalStatusLabel,
      required final UserProfile user,
      final Employment? employment,
      final Branch? branch,
      @JsonKey(name: 'social_media_accounts')
      final List<SocialMediaAccount>? socialMediaAccounts,
      @JsonKey(name: 'bank_account') final BankAccount? bankAccount,
      @JsonKey(name: 'team_members') final List<TeamMember>? teamMembers,
      @JsonKey(name: 'reporting_relationships')
      final List<ReportingRelationship>? reportingRelationships,
      @JsonKey(name: 'work_experiences')
      final List<WorkExperience>? workExperiences,
      final List<Education>? educations,
      final List<FamilyEmployee>? families,
      @JsonKey(name: 'contact_refferences')
      final List<ContactReference>? contactRefferences,
      @JsonKey(name: 'employee_documents')
      final List<EmployeeDocument>? employeeDocuments}) = _$EmployeeProfileImpl;

  factory _EmployeeProfile.fromJson(Map<String, dynamic> json) =
      _$EmployeeProfileImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth;
  @override
  @JsonKey(name: 'marital_status')
  int? get maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  String? get bloodType;
  @override
  String? get height;
  @override
  String? get weight;
  @override
  @JsonKey(name: 'id_number')
  String? get idNumber;
  @override
  String? get npwp;
  @override
  String? get bpjs;
  @override
  @JsonKey(name: 'citizen_id_address')
  String? get citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  String? get residentialAddress;
  @override
  String? get hobby;
  @override
  String? get achievement;
  @override
  @JsonKey(name: 'personal_description')
  String? get personalDescription;
  @override
  @JsonKey(name: 'photo_profile')
  String? get photoProfile; // --- NEW FIELD ---
  @override
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl;
  @override
  String? get code;
  @override
  @JsonKey(name: 'marital_status_label')
  String? get maritalStatusLabel;
  @override
  UserProfile get user;
  @override
  Employment? get employment; // --- NEW FIELD ---
  @override
  Branch? get branch;
  @override
  @JsonKey(name: 'social_media_accounts')
  List<SocialMediaAccount>? get socialMediaAccounts;
  @override
  @JsonKey(name: 'bank_account')
  BankAccount? get bankAccount;
  @override
  @JsonKey(name: 'team_members')
  List<TeamMember>? get teamMembers;
  @override
  @JsonKey(name: 'reporting_relationships')
  List<ReportingRelationship>? get reportingRelationships;
  @override
  @JsonKey(name: 'work_experiences')
  List<WorkExperience>? get workExperiences;
  @override
  List<Education>? get educations;
  @override
  List<FamilyEmployee>? get families;
  @override
  @JsonKey(name: 'contact_refferences')
  List<ContactReference>? get contactRefferences;
  @override
  @JsonKey(name: 'employee_documents')
  List<EmployeeDocument>? get employeeDocuments;

  /// Create a copy of EmployeeProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeProfileImplCopyWith<_$EmployeeProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? latitude,
      String? longitude,
      String? address});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? latitude,
      String? longitude,
      String? address});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_$BranchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl(
      {required this.id,
      this.name,
      this.latitude,
      this.longitude,
      this.address});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? address;

  @override
  String toString() {
    return 'Branch(id: $id, name: $name, latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, latitude, longitude, address);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  const factory _Branch(
      {required final int id,
      final String? name,
      final String? latitude,
      final String? longitude,
      final String? address}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get address;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isFirstLogin = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'is_first_login') bool? isFirstLogin});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isFirstLogin = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.name,
      required this.email,
      @JsonKey(name: 'is_first_login') this.isFirstLogin});

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'is_first_login')
  final bool? isFirstLogin;

  @override
  String toString() {
    return 'UserProfile(id: $id, name: $name, email: $email, isFirstLogin: $isFirstLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, isFirstLogin);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
          {required final int id,
          required final String name,
          required final String email,
          @JsonKey(name: 'is_first_login') final bool? isFirstLogin}) =
      _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'is_first_login')
  bool? get isFirstLogin;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Employment _$EmploymentFromJson(Map<String, dynamic> json) {
  return _Employment.fromJson(json);
}

/// @nodoc
mixin _$Employment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  int? get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_salary')
  String? get baseSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_nett')
  String? get salaryNett => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition => throw _privateConstructorUsedError;
  List<Allowance>? get allowances => throw _privateConstructorUsedError;

  /// Serializes this Employment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmploymentCopyWith<Employment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmploymentCopyWith<$Res> {
  factory $EmploymentCopyWith(
          Employment value, $Res Function(Employment) then) =
      _$EmploymentCopyWithImpl<$Res, Employment>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      @JsonKey(name: 'department_id') int? departmentId,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      int? status,
      Department? department,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'job_position') JobPosition? jobPosition,
      List<Allowance>? allowances});

  $DepartmentCopyWith<$Res>? get department;
  $JobLevelCopyWith<$Res>? get jobLevel;
  $JobPositionCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class _$EmploymentCopyWithImpl<$Res, $Val extends Employment>
    implements $EmploymentCopyWith<$Res> {
  _$EmploymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? departmentId = freezed,
    Object? jobLevelId = freezed,
    Object? jobPositionId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseSalary = freezed,
    Object? salaryNett = freezed,
    Object? status = freezed,
    Object? department = freezed,
    Object? jobLevel = freezed,
    Object? jobPosition = freezed,
    Object? allowances = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
      allowances: freezed == allowances
          ? _value.allowances
          : allowances // ignore: cast_nullable_to_non_nullable
              as List<Allowance>?,
    ) as $Val);
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobLevelCopyWith<$Res>? get jobLevel {
    if (_value.jobLevel == null) {
      return null;
    }

    return $JobLevelCopyWith<$Res>(_value.jobLevel!, (value) {
      return _then(_value.copyWith(jobLevel: value) as $Val);
    });
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobPositionCopyWith<$Res>? get jobPosition {
    if (_value.jobPosition == null) {
      return null;
    }

    return $JobPositionCopyWith<$Res>(_value.jobPosition!, (value) {
      return _then(_value.copyWith(jobPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmploymentImplCopyWith<$Res>
    implements $EmploymentCopyWith<$Res> {
  factory _$$EmploymentImplCopyWith(
          _$EmploymentImpl value, $Res Function(_$EmploymentImpl) then) =
      __$$EmploymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      @JsonKey(name: 'department_id') int? departmentId,
      @JsonKey(name: 'job_level_id') int? jobLevelId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'base_salary') String? baseSalary,
      @JsonKey(name: 'salary_nett') String? salaryNett,
      int? status,
      Department? department,
      @JsonKey(name: 'job_level') JobLevel? jobLevel,
      @JsonKey(name: 'job_position') JobPosition? jobPosition,
      List<Allowance>? allowances});

  @override
  $DepartmentCopyWith<$Res>? get department;
  @override
  $JobLevelCopyWith<$Res>? get jobLevel;
  @override
  $JobPositionCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class __$$EmploymentImplCopyWithImpl<$Res>
    extends _$EmploymentCopyWithImpl<$Res, _$EmploymentImpl>
    implements _$$EmploymentImplCopyWith<$Res> {
  __$$EmploymentImplCopyWithImpl(
      _$EmploymentImpl _value, $Res Function(_$EmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? departmentId = freezed,
    Object? jobLevelId = freezed,
    Object? jobPositionId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseSalary = freezed,
    Object? salaryNett = freezed,
    Object? status = freezed,
    Object? department = freezed,
    Object? jobLevel = freezed,
    Object? jobPosition = freezed,
    Object? allowances = freezed,
  }) {
    return _then(_$EmploymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobLevelId: freezed == jobLevelId
          ? _value.jobLevelId
          : jobLevelId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      baseSalary: freezed == baseSalary
          ? _value.baseSalary
          : baseSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryNett: freezed == salaryNett
          ? _value.salaryNett
          : salaryNett // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      jobLevel: freezed == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as JobLevel?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
      allowances: freezed == allowances
          ? _value._allowances
          : allowances // ignore: cast_nullable_to_non_nullable
              as List<Allowance>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmploymentImpl implements _Employment {
  const _$EmploymentImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      @JsonKey(name: 'department_id') this.departmentId,
      @JsonKey(name: 'job_level_id') this.jobLevelId,
      @JsonKey(name: 'job_position_id') this.jobPositionId,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'base_salary') this.baseSalary,
      @JsonKey(name: 'salary_nett') this.salaryNett,
      this.status,
      this.department,
      @JsonKey(name: 'job_level') this.jobLevel,
      @JsonKey(name: 'job_position') this.jobPosition,
      final List<Allowance>? allowances})
      : _allowances = allowances;

  factory _$EmploymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmploymentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  @JsonKey(name: 'department_id')
  final int? departmentId;
  @override
  @JsonKey(name: 'job_level_id')
  final int? jobLevelId;
  @override
  @JsonKey(name: 'job_position_id')
  final int? jobPositionId;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'base_salary')
  final String? baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  final String? salaryNett;
  @override
  final int? status;
  @override
  final Department? department;
  @override
  @JsonKey(name: 'job_level')
  final JobLevel? jobLevel;
  @override
  @JsonKey(name: 'job_position')
  final JobPosition? jobPosition;
  final List<Allowance>? _allowances;
  @override
  List<Allowance>? get allowances {
    final value = _allowances;
    if (value == null) return null;
    if (_allowances is EqualUnmodifiableListView) return _allowances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Employment(id: $id, employeeProfileId: $employeeProfileId, departmentId: $departmentId, jobLevelId: $jobLevelId, jobPositionId: $jobPositionId, startDate: $startDate, endDate: $endDate, baseSalary: $baseSalary, salaryNett: $salaryNett, status: $status, department: $department, jobLevel: $jobLevel, jobPosition: $jobPosition, allowances: $allowances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmploymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.jobLevelId, jobLevelId) ||
                other.jobLevelId == jobLevelId) &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.baseSalary, baseSalary) ||
                other.baseSalary == baseSalary) &&
            (identical(other.salaryNett, salaryNett) ||
                other.salaryNett == salaryNett) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.jobPosition, jobPosition) ||
                other.jobPosition == jobPosition) &&
            const DeepCollectionEquality()
                .equals(other._allowances, _allowances));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeProfileId,
      departmentId,
      jobLevelId,
      jobPositionId,
      startDate,
      endDate,
      baseSalary,
      salaryNett,
      status,
      department,
      jobLevel,
      jobPosition,
      const DeepCollectionEquality().hash(_allowances));

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      __$$EmploymentImplCopyWithImpl<_$EmploymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmploymentImplToJson(
      this,
    );
  }
}

abstract class _Employment implements Employment {
  const factory _Employment(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      @JsonKey(name: 'department_id') final int? departmentId,
      @JsonKey(name: 'job_level_id') final int? jobLevelId,
      @JsonKey(name: 'job_position_id') final int? jobPositionId,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      @JsonKey(name: 'base_salary') final String? baseSalary,
      @JsonKey(name: 'salary_nett') final String? salaryNett,
      final int? status,
      final Department? department,
      @JsonKey(name: 'job_level') final JobLevel? jobLevel,
      @JsonKey(name: 'job_position') final JobPosition? jobPosition,
      final List<Allowance>? allowances}) = _$EmploymentImpl;

  factory _Employment.fromJson(Map<String, dynamic> json) =
      _$EmploymentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  @JsonKey(name: 'department_id')
  int? get departmentId;
  @override
  @JsonKey(name: 'job_level_id')
  int? get jobLevelId;
  @override
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'base_salary')
  String? get baseSalary;
  @override
  @JsonKey(name: 'salary_nett')
  String? get salaryNett;
  @override
  int? get status;
  @override
  Department? get department;
  @override
  @JsonKey(name: 'job_level')
  JobLevel? get jobLevel;
  @override
  @JsonKey(name: 'job_position')
  JobPosition? get jobPosition;
  @override
  List<Allowance>? get allowances;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call({int id, String? name, String? description});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? description});
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$DepartmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl({required this.id, this.name, this.description});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'Department(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department(
      {required final int id,
      final String? name,
      final String? description}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of Department
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobLevel _$JobLevelFromJson(Map<String, dynamic> json) {
  return _JobLevel.fromJson(json);
}

/// @nodoc
mixin _$JobLevel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this JobLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobLevelCopyWith<JobLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobLevelCopyWith<$Res> {
  factory $JobLevelCopyWith(JobLevel value, $Res Function(JobLevel) then) =
      _$JobLevelCopyWithImpl<$Res, JobLevel>;
  @useResult
  $Res call({int id, String? name, String? description});
}

/// @nodoc
class _$JobLevelCopyWithImpl<$Res, $Val extends JobLevel>
    implements $JobLevelCopyWith<$Res> {
  _$JobLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobLevelImplCopyWith<$Res>
    implements $JobLevelCopyWith<$Res> {
  factory _$$JobLevelImplCopyWith(
          _$JobLevelImpl value, $Res Function(_$JobLevelImpl) then) =
      __$$JobLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? description});
}

/// @nodoc
class __$$JobLevelImplCopyWithImpl<$Res>
    extends _$JobLevelCopyWithImpl<$Res, _$JobLevelImpl>
    implements _$$JobLevelImplCopyWith<$Res> {
  __$$JobLevelImplCopyWithImpl(
      _$JobLevelImpl _value, $Res Function(_$JobLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$JobLevelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobLevelImpl implements _JobLevel {
  const _$JobLevelImpl({required this.id, this.name, this.description});

  factory _$JobLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobLevelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'JobLevel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobLevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      __$$JobLevelImplCopyWithImpl<_$JobLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobLevelImplToJson(
      this,
    );
  }
}

abstract class _JobLevel implements JobLevel {
  const factory _JobLevel(
      {required final int id,
      final String? name,
      final String? description}) = _$JobLevelImpl;

  factory _JobLevel.fromJson(Map<String, dynamic> json) =
      _$JobLevelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of JobLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobLevelImplCopyWith<_$JobLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobPosition _$JobPositionFromJson(Map<String, dynamic> json) {
  return _JobPosition.fromJson(json);
}

/// @nodoc
mixin _$JobPosition {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this JobPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPositionCopyWith<JobPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPositionCopyWith<$Res> {
  factory $JobPositionCopyWith(
          JobPosition value, $Res Function(JobPosition) then) =
      _$JobPositionCopyWithImpl<$Res, JobPosition>;
  @useResult
  $Res call({int id, String? name, String? description, String? status});
}

/// @nodoc
class _$JobPositionCopyWithImpl<$Res, $Val extends JobPosition>
    implements $JobPositionCopyWith<$Res> {
  _$JobPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPositionImplCopyWith<$Res>
    implements $JobPositionCopyWith<$Res> {
  factory _$$JobPositionImplCopyWith(
          _$JobPositionImpl value, $Res Function(_$JobPositionImpl) then) =
      __$$JobPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? description, String? status});
}

/// @nodoc
class __$$JobPositionImplCopyWithImpl<$Res>
    extends _$JobPositionCopyWithImpl<$Res, _$JobPositionImpl>
    implements _$$JobPositionImplCopyWith<$Res> {
  __$$JobPositionImplCopyWithImpl(
      _$JobPositionImpl _value, $Res Function(_$JobPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$JobPositionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$JobPositionImpl implements _JobPosition {
  const _$JobPositionImpl(
      {required this.id, this.name, this.description, this.status});

  factory _$JobPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPositionImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? status;

  @override
  String toString() {
    return 'JobPosition(id: $id, name: $name, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPositionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, status);

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      __$$JobPositionImplCopyWithImpl<_$JobPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPositionImplToJson(
      this,
    );
  }
}

abstract class _JobPosition implements JobPosition {
  const factory _JobPosition(
      {required final int id,
      final String? name,
      final String? description,
      final String? status}) = _$JobPositionImpl;

  factory _JobPosition.fromJson(Map<String, dynamic> json) =
      _$JobPositionImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get status;

  /// Create a copy of JobPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Allowance _$AllowanceFromJson(Map<String, dynamic> json) {
  return _Allowance.fromJson(json);
}

/// @nodoc
mixin _$Allowance {
// 'id' field does not exist in the new JSON
  @JsonKey(name: 'allowance_type_id')
  int? get allowanceTypeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowance_value')
  num? get allowanceValue => throw _privateConstructorUsedError;

  /// Serializes this Allowance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Allowance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllowanceCopyWith<Allowance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowanceCopyWith<$Res> {
  factory $AllowanceCopyWith(Allowance value, $Res Function(Allowance) then) =
      _$AllowanceCopyWithImpl<$Res, Allowance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'allowance_type_id') int? allowanceTypeId,
      String? name,
      @JsonKey(name: 'allowance_value') num? allowanceValue});
}

/// @nodoc
class _$AllowanceCopyWithImpl<$Res, $Val extends Allowance>
    implements $AllowanceCopyWith<$Res> {
  _$AllowanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Allowance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowanceTypeId = freezed,
    Object? name = freezed,
    Object? allowanceValue = freezed,
  }) {
    return _then(_value.copyWith(
      allowanceTypeId: freezed == allowanceTypeId
          ? _value.allowanceTypeId
          : allowanceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allowanceValue: freezed == allowanceValue
          ? _value.allowanceValue
          : allowanceValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllowanceImplCopyWith<$Res>
    implements $AllowanceCopyWith<$Res> {
  factory _$$AllowanceImplCopyWith(
          _$AllowanceImpl value, $Res Function(_$AllowanceImpl) then) =
      __$$AllowanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'allowance_type_id') int? allowanceTypeId,
      String? name,
      @JsonKey(name: 'allowance_value') num? allowanceValue});
}

/// @nodoc
class __$$AllowanceImplCopyWithImpl<$Res>
    extends _$AllowanceCopyWithImpl<$Res, _$AllowanceImpl>
    implements _$$AllowanceImplCopyWith<$Res> {
  __$$AllowanceImplCopyWithImpl(
      _$AllowanceImpl _value, $Res Function(_$AllowanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Allowance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowanceTypeId = freezed,
    Object? name = freezed,
    Object? allowanceValue = freezed,
  }) {
    return _then(_$AllowanceImpl(
      allowanceTypeId: freezed == allowanceTypeId
          ? _value.allowanceTypeId
          : allowanceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allowanceValue: freezed == allowanceValue
          ? _value.allowanceValue
          : allowanceValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowanceImpl implements _Allowance {
  const _$AllowanceImpl(
      {@JsonKey(name: 'allowance_type_id') this.allowanceTypeId,
      this.name,
      @JsonKey(name: 'allowance_value') this.allowanceValue});

  factory _$AllowanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowanceImplFromJson(json);

// 'id' field does not exist in the new JSON
  @override
  @JsonKey(name: 'allowance_type_id')
  final int? allowanceTypeId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'allowance_value')
  final num? allowanceValue;

  @override
  String toString() {
    return 'Allowance(allowanceTypeId: $allowanceTypeId, name: $name, allowanceValue: $allowanceValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowanceImpl &&
            (identical(other.allowanceTypeId, allowanceTypeId) ||
                other.allowanceTypeId == allowanceTypeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.allowanceValue, allowanceValue) ||
                other.allowanceValue == allowanceValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, allowanceTypeId, name, allowanceValue);

  /// Create a copy of Allowance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowanceImplCopyWith<_$AllowanceImpl> get copyWith =>
      __$$AllowanceImplCopyWithImpl<_$AllowanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowanceImplToJson(
      this,
    );
  }
}

abstract class _Allowance implements Allowance {
  const factory _Allowance(
          {@JsonKey(name: 'allowance_type_id') final int? allowanceTypeId,
          final String? name,
          @JsonKey(name: 'allowance_value') final num? allowanceValue}) =
      _$AllowanceImpl;

  factory _Allowance.fromJson(Map<String, dynamic> json) =
      _$AllowanceImpl.fromJson;

// 'id' field does not exist in the new JSON
  @override
  @JsonKey(name: 'allowance_type_id')
  int? get allowanceTypeId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'allowance_value')
  num? get allowanceValue;

  /// Create a copy of Allowance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllowanceImplCopyWith<_$AllowanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialMediaAccount _$SocialMediaAccountFromJson(Map<String, dynamic> json) {
  return _SocialMediaAccount.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaAccount {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this SocialMediaAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialMediaAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialMediaAccountCopyWith<SocialMediaAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaAccountCopyWith<$Res> {
  factory $SocialMediaAccountCopyWith(
          SocialMediaAccount value, $Res Function(SocialMediaAccount) then) =
      _$SocialMediaAccountCopyWithImpl<$Res, SocialMediaAccount>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? type,
      String? url});
}

/// @nodoc
class _$SocialMediaAccountCopyWithImpl<$Res, $Val extends SocialMediaAccount>
    implements $SocialMediaAccountCopyWith<$Res> {
  _$SocialMediaAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialMediaAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialMediaAccountImplCopyWith<$Res>
    implements $SocialMediaAccountCopyWith<$Res> {
  factory _$$SocialMediaAccountImplCopyWith(_$SocialMediaAccountImpl value,
          $Res Function(_$SocialMediaAccountImpl) then) =
      __$$SocialMediaAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? type,
      String? url});
}

/// @nodoc
class __$$SocialMediaAccountImplCopyWithImpl<$Res>
    extends _$SocialMediaAccountCopyWithImpl<$Res, _$SocialMediaAccountImpl>
    implements _$$SocialMediaAccountImplCopyWith<$Res> {
  __$$SocialMediaAccountImplCopyWithImpl(_$SocialMediaAccountImpl _value,
      $Res Function(_$SocialMediaAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialMediaAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SocialMediaAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialMediaAccountImpl implements _SocialMediaAccount {
  const _$SocialMediaAccountImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      this.type,
      this.url});

  factory _$SocialMediaAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMediaAccountImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  final String? type;
  @override
  final String? url;

  @override
  String toString() {
    return 'SocialMediaAccount(id: $id, employeeProfileId: $employeeProfileId, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, employeeProfileId, type, url);

  /// Create a copy of SocialMediaAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaAccountImplCopyWith<_$SocialMediaAccountImpl> get copyWith =>
      __$$SocialMediaAccountImplCopyWithImpl<_$SocialMediaAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMediaAccountImplToJson(
      this,
    );
  }
}

abstract class _SocialMediaAccount implements SocialMediaAccount {
  const factory _SocialMediaAccount(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      final String? type,
      final String? url}) = _$SocialMediaAccountImpl;

  factory _SocialMediaAccount.fromJson(Map<String, dynamic> json) =
      _$SocialMediaAccountImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  String? get type;
  @override
  String? get url;

  /// Create a copy of SocialMediaAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialMediaAccountImplCopyWith<_$SocialMediaAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) {
  return _BankAccount.fromJson(json);
}

/// @nodoc
mixin _$BankAccount {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_id')
  int? get bankId => throw _privateConstructorUsedError;
  Bank? get bank => throw _privateConstructorUsedError;

  /// Serializes this BankAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res, BankAccount>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'bank_id') int? bankId,
      Bank? bank});

  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res, $Val extends BankAccount>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? bankId = freezed,
    Object? bank = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
    ) as $Val);
  }

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BankAccountImplCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$$BankAccountImplCopyWith(
          _$BankAccountImpl value, $Res Function(_$BankAccountImpl) then) =
      __$$BankAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'bank_id') int? bankId,
      Bank? bank});

  @override
  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class __$$BankAccountImplCopyWithImpl<$Res>
    extends _$BankAccountCopyWithImpl<$Res, _$BankAccountImpl>
    implements _$$BankAccountImplCopyWith<$Res> {
  __$$BankAccountImplCopyWithImpl(
      _$BankAccountImpl _value, $Res Function(_$BankAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? bankId = freezed,
    Object? bank = freezed,
  }) {
    return _then(_$BankAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountImpl implements _BankAccount {
  const _$BankAccountImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'account_name') this.accountName,
      @JsonKey(name: 'bank_id') this.bankId,
      this.bank});

  factory _$BankAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'bank_id')
  final int? bankId;
  @override
  final Bank? bank;

  @override
  String toString() {
    return 'BankAccount(id: $id, employeeProfileId: $employeeProfileId, accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId, bank: $bank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.bank, bank) || other.bank == bank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, employeeProfileId,
      accountNumber, accountName, bankId, bank);

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      __$$BankAccountImplCopyWithImpl<_$BankAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountImplToJson(
      this,
    );
  }
}

abstract class _BankAccount implements BankAccount {
  const factory _BankAccount(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      @JsonKey(name: 'account_number') final String? accountNumber,
      @JsonKey(name: 'account_name') final String? accountName,
      @JsonKey(name: 'bank_id') final int? bankId,
      final Bank? bank}) = _$BankAccountImpl;

  factory _BankAccount.fromJson(Map<String, dynamic> json) =
      _$BankAccountImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(name: 'account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'bank_id')
  int? get bankId;
  @override
  Bank? get bank;

  /// Create a copy of BankAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this Bank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {int id, @JsonKey(name: 'bank_name') String? bankName, String? code});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bankName = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, @JsonKey(name: 'bank_name') String? bankName, String? code});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bankName = freezed,
    Object? code = freezed,
  }) {
    return _then(_$BankImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankImpl implements _Bank {
  const _$BankImpl(
      {required this.id, @JsonKey(name: 'bank_name') this.bankName, this.code});

  factory _$BankImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  final String? code;

  @override
  String toString() {
    return 'Bank(id: $id, bankName: $bankName, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, bankName, code);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankImplToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  const factory _Bank(
      {required final int id,
      @JsonKey(name: 'bank_name') final String? bankName,
      final String? code}) = _$BankImpl;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$BankImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  String? get code;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return _TeamMember.fromJson(json);
}

/// @nodoc
mixin _$TeamMember {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TeamMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res, TeamMember>;
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res, $Val extends TeamMember>
    implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamMemberImplCopyWith<$Res>
    implements $TeamMemberCopyWith<$Res> {
  factory _$$TeamMemberImplCopyWith(
          _$TeamMemberImpl value, $Res Function(_$TeamMemberImpl) then) =
      __$$TeamMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class __$$TeamMemberImplCopyWithImpl<$Res>
    extends _$TeamMemberCopyWithImpl<$Res, _$TeamMemberImpl>
    implements _$$TeamMemberImplCopyWith<$Res> {
  __$$TeamMemberImplCopyWithImpl(
      _$TeamMemberImpl _value, $Res Function(_$TeamMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$TeamMemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamMemberImpl implements _TeamMember {
  const _$TeamMemberImpl({required this.id, this.name});

  factory _$TeamMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamMemberImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TeamMember(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberImplCopyWith<_$TeamMemberImpl> get copyWith =>
      __$$TeamMemberImplCopyWithImpl<_$TeamMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamMemberImplToJson(
      this,
    );
  }
}

abstract class _TeamMember implements TeamMember {
  const factory _TeamMember({required final int id, final String? name}) =
      _$TeamMemberImpl;

  factory _TeamMember.fromJson(Map<String, dynamic> json) =
      _$TeamMemberImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamMemberImplCopyWith<_$TeamMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportingRelationship _$ReportingRelationshipFromJson(
    Map<String, dynamic> json) {
  return _ReportingRelationship.fromJson(json);
}

/// @nodoc
mixin _$ReportingRelationship {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'direct_report_id')
  int? get directReportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship_type')
  String? get relationshipType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ReportingRelationship to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportingRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportingRelationshipCopyWith<ReportingRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportingRelationshipCopyWith<$Res> {
  factory $ReportingRelationshipCopyWith(ReportingRelationship value,
          $Res Function(ReportingRelationship) then) =
      _$ReportingRelationshipCopyWithImpl<$Res, ReportingRelationship>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'direct_report_id') int? directReportId,
      @JsonKey(name: 'relationship_type') String? relationshipType,
      String? name});
}

/// @nodoc
class _$ReportingRelationshipCopyWithImpl<$Res,
        $Val extends ReportingRelationship>
    implements $ReportingRelationshipCopyWith<$Res> {
  _$ReportingRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportingRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? directReportId = freezed,
    Object? relationshipType = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      directReportId: freezed == directReportId
          ? _value.directReportId
          : directReportId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipType: freezed == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportingRelationshipImplCopyWith<$Res>
    implements $ReportingRelationshipCopyWith<$Res> {
  factory _$$ReportingRelationshipImplCopyWith(
          _$ReportingRelationshipImpl value,
          $Res Function(_$ReportingRelationshipImpl) then) =
      __$$ReportingRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'direct_report_id') int? directReportId,
      @JsonKey(name: 'relationship_type') String? relationshipType,
      String? name});
}

/// @nodoc
class __$$ReportingRelationshipImplCopyWithImpl<$Res>
    extends _$ReportingRelationshipCopyWithImpl<$Res,
        _$ReportingRelationshipImpl>
    implements _$$ReportingRelationshipImplCopyWith<$Res> {
  __$$ReportingRelationshipImplCopyWithImpl(_$ReportingRelationshipImpl _value,
      $Res Function(_$ReportingRelationshipImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportingRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? directReportId = freezed,
    Object? relationshipType = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ReportingRelationshipImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      directReportId: freezed == directReportId
          ? _value.directReportId
          : directReportId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipType: freezed == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportingRelationshipImpl implements _ReportingRelationship {
  const _$ReportingRelationshipImpl(
      {required this.id,
      @JsonKey(name: 'direct_report_id') this.directReportId,
      @JsonKey(name: 'relationship_type') this.relationshipType,
      this.name});

  factory _$ReportingRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportingRelationshipImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'direct_report_id')
  final int? directReportId;
  @override
  @JsonKey(name: 'relationship_type')
  final String? relationshipType;
  @override
  final String? name;

  @override
  String toString() {
    return 'ReportingRelationship(id: $id, directReportId: $directReportId, relationshipType: $relationshipType, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportingRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.directReportId, directReportId) ||
                other.directReportId == directReportId) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, directReportId, relationshipType, name);

  /// Create a copy of ReportingRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportingRelationshipImplCopyWith<_$ReportingRelationshipImpl>
      get copyWith => __$$ReportingRelationshipImplCopyWithImpl<
          _$ReportingRelationshipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportingRelationshipImplToJson(
      this,
    );
  }
}

abstract class _ReportingRelationship implements ReportingRelationship {
  const factory _ReportingRelationship(
      {required final int id,
      @JsonKey(name: 'direct_report_id') final int? directReportId,
      @JsonKey(name: 'relationship_type') final String? relationshipType,
      final String? name}) = _$ReportingRelationshipImpl;

  factory _ReportingRelationship.fromJson(Map<String, dynamic> json) =
      _$ReportingRelationshipImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'direct_report_id')
  int? get directReportId;
  @override
  @JsonKey(name: 'relationship_type')
  String? get relationshipType;
  @override
  String? get name;

  /// Create a copy of ReportingRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportingRelationshipImplCopyWith<_$ReportingRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) {
  return _WorkExperience.fromJson(json);
}

/// @nodoc
mixin _$WorkExperience {
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this WorkExperience to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceCopyWith<WorkExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceCopyWith<$Res> {
  factory $WorkExperienceCopyWith(
          WorkExperience value, $Res Function(WorkExperience) then) =
      _$WorkExperienceCopyWithImpl<$Res, WorkExperience>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$WorkExperienceCopyWithImpl<$Res, $Val extends WorkExperience>
    implements $WorkExperienceCopyWith<$Res> {
  _$WorkExperienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkExperienceImplCopyWith<$Res>
    implements $WorkExperienceCopyWith<$Res> {
  factory _$$WorkExperienceImplCopyWith(_$WorkExperienceImpl value,
          $Res Function(_$WorkExperienceImpl) then) =
      __$$WorkExperienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$WorkExperienceImplCopyWithImpl<$Res>
    extends _$WorkExperienceCopyWithImpl<$Res, _$WorkExperienceImpl>
    implements _$$WorkExperienceImplCopyWith<$Res> {
  __$$WorkExperienceImplCopyWithImpl(
      _$WorkExperienceImpl _value, $Res Function(_$WorkExperienceImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WorkExperienceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceImpl implements _WorkExperience {
  const _$WorkExperienceImpl({this.id});

  factory _$WorkExperienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'WorkExperience(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      __$$WorkExperienceImplCopyWithImpl<_$WorkExperienceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceImplToJson(
      this,
    );
  }
}

abstract class _WorkExperience implements WorkExperience {
  const factory _WorkExperience({final int? id}) = _$WorkExperienceImpl;

  factory _WorkExperience.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceImpl.fromJson;

  @override
  int? get id;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
mixin _$Education {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get institution => throw _privateConstructorUsedError;
  String? get major => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'graduation_date')
  String? get graduationDate => throw _privateConstructorUsedError;
  String? get gpa => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_gpa')
  String? get maxGpa => throw _privateConstructorUsedError;

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? category,
      String? institution,
      String? major,
      String? location,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'graduation_date') String? graduationDate,
      String? gpa,
      String? notes,
      @JsonKey(name: 'max_gpa') String? maxGpa});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? category = freezed,
    Object? institution = freezed,
    Object? major = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? graduationDate = freezed,
    Object? gpa = freezed,
    Object? notes = freezed,
    Object? maxGpa = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationDate: freezed == graduationDate
          ? _value.graduationDate
          : graduationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      maxGpa: freezed == maxGpa
          ? _value.maxGpa
          : maxGpa // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
          _$EducationImpl value, $Res Function(_$EducationImpl) then) =
      __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? category,
      String? institution,
      String? major,
      String? location,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'graduation_date') String? graduationDate,
      String? gpa,
      String? notes,
      @JsonKey(name: 'max_gpa') String? maxGpa});
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
      _$EducationImpl _value, $Res Function(_$EducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? category = freezed,
    Object? institution = freezed,
    Object? major = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? graduationDate = freezed,
    Object? gpa = freezed,
    Object? notes = freezed,
    Object? maxGpa = freezed,
  }) {
    return _then(_$EducationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationDate: freezed == graduationDate
          ? _value.graduationDate
          : graduationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      maxGpa: freezed == maxGpa
          ? _value.maxGpa
          : maxGpa // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationImpl implements _Education {
  const _$EducationImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      this.category,
      this.institution,
      this.major,
      this.location,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'graduation_date') this.graduationDate,
      this.gpa,
      this.notes,
      @JsonKey(name: 'max_gpa') this.maxGpa});

  factory _$EducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  final String? category;
  @override
  final String? institution;
  @override
  final String? major;
  @override
  final String? location;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'graduation_date')
  final String? graduationDate;
  @override
  final String? gpa;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'max_gpa')
  final String? maxGpa;

  @override
  String toString() {
    return 'Education(id: $id, employeeProfileId: $employeeProfileId, category: $category, institution: $institution, major: $major, location: $location, startDate: $startDate, graduationDate: $graduationDate, gpa: $gpa, notes: $notes, maxGpa: $maxGpa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.graduationDate, graduationDate) ||
                other.graduationDate == graduationDate) &&
            (identical(other.gpa, gpa) || other.gpa == gpa) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.maxGpa, maxGpa) || other.maxGpa == maxGpa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeProfileId,
      category,
      institution,
      major,
      location,
      startDate,
      graduationDate,
      gpa,
      notes,
      maxGpa);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationImplToJson(
      this,
    );
  }
}

abstract class _Education implements Education {
  const factory _Education(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      final String? category,
      final String? institution,
      final String? major,
      final String? location,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'graduation_date') final String? graduationDate,
      final String? gpa,
      final String? notes,
      @JsonKey(name: 'max_gpa') final String? maxGpa}) = _$EducationImpl;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$EducationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  String? get category;
  @override
  String? get institution;
  @override
  String? get major;
  @override
  String? get location;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'graduation_date')
  String? get graduationDate;
  @override
  String? get gpa;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'max_gpa')
  String? get maxGpa;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyEmployee _$FamilyEmployeeFromJson(Map<String, dynamic> json) {
  return _FamilyEmployee.fromJson(json);
}

/// @nodoc
mixin _$FamilyEmployee {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get relationship => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'highest_education')
  String? get highestEducation => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  /// Serializes this FamilyEmployee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyEmployee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyEmployeeCopyWith<FamilyEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyEmployeeCopyWith<$Res> {
  factory $FamilyEmployeeCopyWith(
          FamilyEmployee value, $Res Function(FamilyEmployee) then) =
      _$FamilyEmployeeCopyWithImpl<$Res, FamilyEmployee>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? name,
      String? relationship,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'highest_education') String? highestEducation,
      String? email,
      String? phone,
      String? occupation,
      String? company});
}

/// @nodoc
class _$FamilyEmployeeCopyWithImpl<$Res, $Val extends FamilyEmployee>
    implements $FamilyEmployeeCopyWith<$Res> {
  _$FamilyEmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyEmployee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? name = freezed,
    Object? relationship = freezed,
    Object? dateOfBirth = freezed,
    Object? placeOfBirth = freezed,
    Object? highestEducation = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? occupation = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      highestEducation: freezed == highestEducation
          ? _value.highestEducation
          : highestEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyEmployeeImplCopyWith<$Res>
    implements $FamilyEmployeeCopyWith<$Res> {
  factory _$$FamilyEmployeeImplCopyWith(_$FamilyEmployeeImpl value,
          $Res Function(_$FamilyEmployeeImpl) then) =
      __$$FamilyEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? name,
      String? relationship,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'highest_education') String? highestEducation,
      String? email,
      String? phone,
      String? occupation,
      String? company});
}

/// @nodoc
class __$$FamilyEmployeeImplCopyWithImpl<$Res>
    extends _$FamilyEmployeeCopyWithImpl<$Res, _$FamilyEmployeeImpl>
    implements _$$FamilyEmployeeImplCopyWith<$Res> {
  __$$FamilyEmployeeImplCopyWithImpl(
      _$FamilyEmployeeImpl _value, $Res Function(_$FamilyEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyEmployee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? name = freezed,
    Object? relationship = freezed,
    Object? dateOfBirth = freezed,
    Object? placeOfBirth = freezed,
    Object? highestEducation = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? occupation = freezed,
    Object? company = freezed,
  }) {
    return _then(_$FamilyEmployeeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      highestEducation: freezed == highestEducation
          ? _value.highestEducation
          : highestEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyEmployeeImpl implements _FamilyEmployee {
  const _$FamilyEmployeeImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      this.name,
      this.relationship,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'place_of_birth') this.placeOfBirth,
      @JsonKey(name: 'highest_education') this.highestEducation,
      this.email,
      this.phone,
      this.occupation,
      this.company});

  factory _$FamilyEmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyEmployeeImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  final String? name;
  @override
  final String? relationship;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  @override
  @JsonKey(name: 'highest_education')
  final String? highestEducation;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? occupation;
  @override
  final String? company;

  @override
  String toString() {
    return 'FamilyEmployee(id: $id, employeeProfileId: $employeeProfileId, name: $name, relationship: $relationship, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, highestEducation: $highestEducation, email: $email, phone: $phone, occupation: $occupation, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyEmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.highestEducation, highestEducation) ||
                other.highestEducation == highestEducation) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeProfileId,
      name,
      relationship,
      dateOfBirth,
      placeOfBirth,
      highestEducation,
      email,
      phone,
      occupation,
      company);

  /// Create a copy of FamilyEmployee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyEmployeeImplCopyWith<_$FamilyEmployeeImpl> get copyWith =>
      __$$FamilyEmployeeImplCopyWithImpl<_$FamilyEmployeeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyEmployeeImplToJson(
      this,
    );
  }
}

abstract class _FamilyEmployee implements FamilyEmployee {
  const factory _FamilyEmployee(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      final String? name,
      final String? relationship,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'place_of_birth') final String? placeOfBirth,
      @JsonKey(name: 'highest_education') final String? highestEducation,
      final String? email,
      final String? phone,
      final String? occupation,
      final String? company}) = _$FamilyEmployeeImpl;

  factory _FamilyEmployee.fromJson(Map<String, dynamic> json) =
      _$FamilyEmployeeImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  String? get name;
  @override
  String? get relationship;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth;
  @override
  @JsonKey(name: 'highest_education')
  String? get highestEducation;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get occupation;
  @override
  String? get company;

  /// Create a copy of FamilyEmployee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyEmployeeImplCopyWith<_$FamilyEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactReference _$ContactReferenceFromJson(Map<String, dynamic> json) {
  return _ContactReference.fromJson(json);
}

/// @nodoc
mixin _$ContactReference {
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this ContactReference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactReferenceCopyWith<ContactReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactReferenceCopyWith<$Res> {
  factory $ContactReferenceCopyWith(
          ContactReference value, $Res Function(ContactReference) then) =
      _$ContactReferenceCopyWithImpl<$Res, ContactReference>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$ContactReferenceCopyWithImpl<$Res, $Val extends ContactReference>
    implements $ContactReferenceCopyWith<$Res> {
  _$ContactReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactReferenceImplCopyWith<$Res>
    implements $ContactReferenceCopyWith<$Res> {
  factory _$$ContactReferenceImplCopyWith(_$ContactReferenceImpl value,
          $Res Function(_$ContactReferenceImpl) then) =
      __$$ContactReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$ContactReferenceImplCopyWithImpl<$Res>
    extends _$ContactReferenceCopyWithImpl<$Res, _$ContactReferenceImpl>
    implements _$$ContactReferenceImplCopyWith<$Res> {
  __$$ContactReferenceImplCopyWithImpl(_$ContactReferenceImpl _value,
      $Res Function(_$ContactReferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ContactReferenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactReferenceImpl implements _ContactReference {
  const _$ContactReferenceImpl({this.id});

  factory _$ContactReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactReferenceImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'ContactReference(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactReferenceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ContactReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactReferenceImplCopyWith<_$ContactReferenceImpl> get copyWith =>
      __$$ContactReferenceImplCopyWithImpl<_$ContactReferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactReferenceImplToJson(
      this,
    );
  }
}

abstract class _ContactReference implements ContactReference {
  const factory _ContactReference({final int? id}) = _$ContactReferenceImpl;

  factory _ContactReference.fromJson(Map<String, dynamic> json) =
      _$ContactReferenceImpl.fromJson;

  @override
  int? get id;

  /// Create a copy of ContactReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactReferenceImplCopyWith<_$ContactReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeDocument _$EmployeeDocumentFromJson(Map<String, dynamic> json) {
  return _EmployeeDocument.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDocument {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get disk => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_by')
  int? get uploadedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_at')
  String? get uploadedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this EmployeeDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeDocumentCopyWith<EmployeeDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDocumentCopyWith<$Res> {
  factory $EmployeeDocumentCopyWith(
          EmployeeDocument value, $Res Function(EmployeeDocument) then) =
      _$EmployeeDocumentCopyWithImpl<$Res, EmployeeDocument>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? type,
      String? filename,
      @JsonKey(name: 'mime_type') String? mimeType,
      int? size,
      String? path,
      String? disk,
      @JsonKey(name: 'uploaded_by') int? uploadedBy,
      @JsonKey(name: 'uploaded_at') String? uploadedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? url});
}

/// @nodoc
class _$EmployeeDocumentCopyWithImpl<$Res, $Val extends EmployeeDocument>
    implements $EmployeeDocumentCopyWith<$Res> {
  _$EmployeeDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? type = freezed,
    Object? filename = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? path = freezed,
    Object? disk = freezed,
    Object? uploadedBy = freezed,
    Object? uploadedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeDocumentImplCopyWith<$Res>
    implements $EmployeeDocumentCopyWith<$Res> {
  factory _$$EmployeeDocumentImplCopyWith(_$EmployeeDocumentImpl value,
          $Res Function(_$EmployeeDocumentImpl) then) =
      __$$EmployeeDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employee_profile_id') int? employeeProfileId,
      String? type,
      String? filename,
      @JsonKey(name: 'mime_type') String? mimeType,
      int? size,
      String? path,
      String? disk,
      @JsonKey(name: 'uploaded_by') int? uploadedBy,
      @JsonKey(name: 'uploaded_at') String? uploadedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? url});
}

/// @nodoc
class __$$EmployeeDocumentImplCopyWithImpl<$Res>
    extends _$EmployeeDocumentCopyWithImpl<$Res, _$EmployeeDocumentImpl>
    implements _$$EmployeeDocumentImplCopyWith<$Res> {
  __$$EmployeeDocumentImplCopyWithImpl(_$EmployeeDocumentImpl _value,
      $Res Function(_$EmployeeDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeProfileId = freezed,
    Object? type = freezed,
    Object? filename = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? path = freezed,
    Object? disk = freezed,
    Object? uploadedBy = freezed,
    Object? uploadedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_$EmployeeDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeProfileId: freezed == employeeProfileId
          ? _value.employeeProfileId
          : employeeProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeDocumentImpl implements _EmployeeDocument {
  const _$EmployeeDocumentImpl(
      {required this.id,
      @JsonKey(name: 'employee_profile_id') this.employeeProfileId,
      this.type,
      this.filename,
      @JsonKey(name: 'mime_type') this.mimeType,
      this.size,
      this.path,
      this.disk,
      @JsonKey(name: 'uploaded_by') this.uploadedBy,
      @JsonKey(name: 'uploaded_at') this.uploadedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.url});

  factory _$EmployeeDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDocumentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_profile_id')
  final int? employeeProfileId;
  @override
  final String? type;
  @override
  final String? filename;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  final int? size;
  @override
  final String? path;
  @override
  final String? disk;
  @override
  @JsonKey(name: 'uploaded_by')
  final int? uploadedBy;
  @override
  @JsonKey(name: 'uploaded_at')
  final String? uploadedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? url;

  @override
  String toString() {
    return 'EmployeeDocument(id: $id, employeeProfileId: $employeeProfileId, type: $type, filename: $filename, mimeType: $mimeType, size: $size, path: $path, disk: $disk, uploadedBy: $uploadedBy, uploadedAt: $uploadedAt, createdAt: $createdAt, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeProfileId, employeeProfileId) ||
                other.employeeProfileId == employeeProfileId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.disk, disk) || other.disk == disk) &&
            (identical(other.uploadedBy, uploadedBy) ||
                other.uploadedBy == uploadedBy) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      employeeProfileId,
      type,
      filename,
      mimeType,
      size,
      path,
      disk,
      uploadedBy,
      uploadedAt,
      createdAt,
      updatedAt,
      url);

  /// Create a copy of EmployeeDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDocumentImplCopyWith<_$EmployeeDocumentImpl> get copyWith =>
      __$$EmployeeDocumentImplCopyWithImpl<_$EmployeeDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDocumentImplToJson(
      this,
    );
  }
}

abstract class _EmployeeDocument implements EmployeeDocument {
  const factory _EmployeeDocument(
      {required final int id,
      @JsonKey(name: 'employee_profile_id') final int? employeeProfileId,
      final String? type,
      final String? filename,
      @JsonKey(name: 'mime_type') final String? mimeType,
      final int? size,
      final String? path,
      final String? disk,
      @JsonKey(name: 'uploaded_by') final int? uploadedBy,
      @JsonKey(name: 'uploaded_at') final String? uploadedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final String? url}) = _$EmployeeDocumentImpl;

  factory _EmployeeDocument.fromJson(Map<String, dynamic> json) =
      _$EmployeeDocumentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_profile_id')
  int? get employeeProfileId;
  @override
  String? get type;
  @override
  String? get filename;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  int? get size;
  @override
  String? get path;
  @override
  String? get disk;
  @override
  @JsonKey(name: 'uploaded_by')
  int? get uploadedBy;
  @override
  @JsonKey(name: 'uploaded_at')
  String? get uploadedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get url;

  /// Create a copy of EmployeeDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeDocumentImplCopyWith<_$EmployeeDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
