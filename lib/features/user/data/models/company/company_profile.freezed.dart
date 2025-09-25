// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyProfileResponse _$CompanyProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyProfileResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'legal_entity_name')
  String? get legalEntityName => throw _privateConstructorUsedError;
  String? get industry => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_registration_number')
  String? get businessRegistrationNumber => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_name')
  String? get payrollBankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_account_number')
  String? get payrollBankAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_account_name')
  String? get payrollBankAccountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_currency')
  String? get payrollCurrency => throw _privateConstructorUsedError;

  /// Serializes this CompanyProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyProfileResponseCopyWith<CompanyProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyProfileResponseCopyWith<$Res> {
  factory $CompanyProfileResponseCopyWith(CompanyProfileResponse value,
          $Res Function(CompanyProfileResponse) then) =
      _$CompanyProfileResponseCopyWithImpl<$Res, CompanyProfileResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'legal_entity_name') String? legalEntityName,
      String? industry,
      String? email,
      String? phone,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'business_registration_number')
      String? businessRegistrationNumber,
      String? website,
      String? address,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
      @JsonKey(name: 'payroll_bank_account_number')
      String? payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_account_name')
      String? payrollBankAccountName,
      @JsonKey(name: 'payroll_currency') String? payrollCurrency});
}

/// @nodoc
class _$CompanyProfileResponseCopyWithImpl<$Res,
        $Val extends CompanyProfileResponse>
    implements $CompanyProfileResponseCopyWith<$Res> {
  _$CompanyProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? legalEntityName = freezed,
    Object? industry = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? businessRegistrationNumber = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? isActive = freezed,
    Object? payrollBankName = freezed,
    Object? payrollBankAccountNumber = freezed,
    Object? payrollBankAccountName = freezed,
    Object? payrollCurrency = freezed,
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
      legalEntityName: freezed == legalEntityName
          ? _value.legalEntityName
          : legalEntityName // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      businessRegistrationNumber: freezed == businessRegistrationNumber
          ? _value.businessRegistrationNumber
          : businessRegistrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      payrollBankName: freezed == payrollBankName
          ? _value.payrollBankName
          : payrollBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountNumber: freezed == payrollBankAccountNumber
          ? _value.payrollBankAccountNumber
          : payrollBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountName: freezed == payrollBankAccountName
          ? _value.payrollBankAccountName
          : payrollBankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollCurrency: freezed == payrollCurrency
          ? _value.payrollCurrency
          : payrollCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyProfileResponseImplCopyWith<$Res>
    implements $CompanyProfileResponseCopyWith<$Res> {
  factory _$$CompanyProfileResponseImplCopyWith(
          _$CompanyProfileResponseImpl value,
          $Res Function(_$CompanyProfileResponseImpl) then) =
      __$$CompanyProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'legal_entity_name') String? legalEntityName,
      String? industry,
      String? email,
      String? phone,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'business_registration_number')
      String? businessRegistrationNumber,
      String? website,
      String? address,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
      @JsonKey(name: 'payroll_bank_account_number')
      String? payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_account_name')
      String? payrollBankAccountName,
      @JsonKey(name: 'payroll_currency') String? payrollCurrency});
}

/// @nodoc
class __$$CompanyProfileResponseImplCopyWithImpl<$Res>
    extends _$CompanyProfileResponseCopyWithImpl<$Res,
        _$CompanyProfileResponseImpl>
    implements _$$CompanyProfileResponseImplCopyWith<$Res> {
  __$$CompanyProfileResponseImplCopyWithImpl(
      _$CompanyProfileResponseImpl _value,
      $Res Function(_$CompanyProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? legalEntityName = freezed,
    Object? industry = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? businessRegistrationNumber = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? isActive = freezed,
    Object? payrollBankName = freezed,
    Object? payrollBankAccountNumber = freezed,
    Object? payrollBankAccountName = freezed,
    Object? payrollCurrency = freezed,
  }) {
    return _then(_$CompanyProfileResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalEntityName: freezed == legalEntityName
          ? _value.legalEntityName
          : legalEntityName // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      businessRegistrationNumber: freezed == businessRegistrationNumber
          ? _value.businessRegistrationNumber
          : businessRegistrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      payrollBankName: freezed == payrollBankName
          ? _value.payrollBankName
          : payrollBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountNumber: freezed == payrollBankAccountNumber
          ? _value.payrollBankAccountNumber
          : payrollBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountName: freezed == payrollBankAccountName
          ? _value.payrollBankAccountName
          : payrollBankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollCurrency: freezed == payrollCurrency
          ? _value.payrollCurrency
          : payrollCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyProfileResponseImpl implements _CompanyProfileResponse {
  const _$CompanyProfileResponseImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'legal_entity_name') this.legalEntityName,
      this.industry,
      this.email,
      this.phone,
      this.logo,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'business_registration_number')
      this.businessRegistrationNumber,
      this.website,
      this.address,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'payroll_bank_name') this.payrollBankName,
      @JsonKey(name: 'payroll_bank_account_number')
      this.payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_account_name') this.payrollBankAccountName,
      @JsonKey(name: 'payroll_currency') this.payrollCurrency});

  factory _$CompanyProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyProfileResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'legal_entity_name')
  final String? legalEntityName;
  @override
  final String? industry;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'business_registration_number')
  final String? businessRegistrationNumber;
  @override
  final String? website;
  @override
  final String? address;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'payroll_bank_name')
  final String? payrollBankName;
  @override
  @JsonKey(name: 'payroll_bank_account_number')
  final String? payrollBankAccountNumber;
  @override
  @JsonKey(name: 'payroll_bank_account_name')
  final String? payrollBankAccountName;
  @override
  @JsonKey(name: 'payroll_currency')
  final String? payrollCurrency;

  @override
  String toString() {
    return 'CompanyProfileResponse(id: $id, name: $name, legalEntityName: $legalEntityName, industry: $industry, email: $email, phone: $phone, logo: $logo, logoUrl: $logoUrl, businessRegistrationNumber: $businessRegistrationNumber, website: $website, address: $address, isActive: $isActive, payrollBankName: $payrollBankName, payrollBankAccountNumber: $payrollBankAccountNumber, payrollBankAccountName: $payrollBankAccountName, payrollCurrency: $payrollCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalEntityName, legalEntityName) ||
                other.legalEntityName == legalEntityName) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.businessRegistrationNumber,
                    businessRegistrationNumber) ||
                other.businessRegistrationNumber ==
                    businessRegistrationNumber) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.payrollBankName, payrollBankName) ||
                other.payrollBankName == payrollBankName) &&
            (identical(
                    other.payrollBankAccountNumber, payrollBankAccountNumber) ||
                other.payrollBankAccountNumber == payrollBankAccountNumber) &&
            (identical(other.payrollBankAccountName, payrollBankAccountName) ||
                other.payrollBankAccountName == payrollBankAccountName) &&
            (identical(other.payrollCurrency, payrollCurrency) ||
                other.payrollCurrency == payrollCurrency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      legalEntityName,
      industry,
      email,
      phone,
      logo,
      logoUrl,
      businessRegistrationNumber,
      website,
      address,
      isActive,
      payrollBankName,
      payrollBankAccountNumber,
      payrollBankAccountName,
      payrollCurrency);

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyProfileResponseImplCopyWith<_$CompanyProfileResponseImpl>
      get copyWith => __$$CompanyProfileResponseImplCopyWithImpl<
          _$CompanyProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyProfileResponse implements CompanyProfileResponse {
  const factory _CompanyProfileResponse(
          {required final int id,
          required final String name,
          @JsonKey(name: 'legal_entity_name') final String? legalEntityName,
          final String? industry,
          final String? email,
          final String? phone,
          final String? logo,
          @JsonKey(name: 'logo_url') final String? logoUrl,
          @JsonKey(name: 'business_registration_number')
          final String? businessRegistrationNumber,
          final String? website,
          final String? address,
          @JsonKey(name: 'is_active') final bool? isActive,
          @JsonKey(name: 'payroll_bank_name') final String? payrollBankName,
          @JsonKey(name: 'payroll_bank_account_number')
          final String? payrollBankAccountNumber,
          @JsonKey(name: 'payroll_bank_account_name')
          final String? payrollBankAccountName,
          @JsonKey(name: 'payroll_currency') final String? payrollCurrency}) =
      _$CompanyProfileResponseImpl;

  factory _CompanyProfileResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyProfileResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'legal_entity_name')
  String? get legalEntityName;
  @override
  String? get industry;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'business_registration_number')
  String? get businessRegistrationNumber;
  @override
  String? get website;
  @override
  String? get address;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'payroll_bank_name')
  String? get payrollBankName;
  @override
  @JsonKey(name: 'payroll_bank_account_number')
  String? get payrollBankAccountNumber;
  @override
  @JsonKey(name: 'payroll_bank_account_name')
  String? get payrollBankAccountName;
  @override
  @JsonKey(name: 'payroll_currency')
  String? get payrollCurrency;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyProfileResponseImplCopyWith<_$CompanyProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
