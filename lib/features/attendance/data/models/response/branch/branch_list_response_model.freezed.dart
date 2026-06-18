// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchListResponseModel _$BranchListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BranchListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BranchListResponseModel {
  List<BranchData> get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PaginationData? get pagination => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this BranchListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchListResponseModelCopyWith<BranchListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchListResponseModelCopyWith<$Res> {
  factory $BranchListResponseModelCopyWith(BranchListResponseModel value,
          $Res Function(BranchListResponseModel) then) =
      _$BranchListResponseModelCopyWithImpl<$Res, BranchListResponseModel>;
  @useResult
  $Res call(
      {List<BranchData> data,
      String? message,
      PaginationData? pagination,
      String? status});

  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$BranchListResponseModelCopyWithImpl<$Res,
        $Val extends BranchListResponseModel>
    implements $BranchListResponseModelCopyWith<$Res> {
  _$BranchListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? pagination = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchData>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchListResponseModelImplCopyWith<$Res>
    implements $BranchListResponseModelCopyWith<$Res> {
  factory _$$BranchListResponseModelImplCopyWith(
          _$BranchListResponseModelImpl value,
          $Res Function(_$BranchListResponseModelImpl) then) =
      __$$BranchListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BranchData> data,
      String? message,
      PaginationData? pagination,
      String? status});

  @override
  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$BranchListResponseModelImplCopyWithImpl<$Res>
    extends _$BranchListResponseModelCopyWithImpl<$Res,
        _$BranchListResponseModelImpl>
    implements _$$BranchListResponseModelImplCopyWith<$Res> {
  __$$BranchListResponseModelImplCopyWithImpl(
      _$BranchListResponseModelImpl _value,
      $Res Function(_$BranchListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? pagination = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BranchListResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BranchData>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchListResponseModelImpl implements _BranchListResponseModel {
  const _$BranchListResponseModelImpl(
      {final List<BranchData> data = const [],
      this.message,
      this.pagination,
      this.status})
      : _data = data;

  factory _$BranchListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchListResponseModelImplFromJson(json);

  final List<BranchData> _data;
  @override
  @JsonKey()
  List<BranchData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? message;
  @override
  final PaginationData? pagination;
  @override
  final String? status;

  @override
  String toString() {
    return 'BranchListResponseModel(data: $data, message: $message, pagination: $pagination, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchListResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, pagination, status);

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchListResponseModelImplCopyWith<_$BranchListResponseModelImpl>
      get copyWith => __$$BranchListResponseModelImplCopyWithImpl<
          _$BranchListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BranchListResponseModel implements BranchListResponseModel {
  const factory _BranchListResponseModel(
      {final List<BranchData> data,
      final String? message,
      final PaginationData? pagination,
      final String? status}) = _$BranchListResponseModelImpl;

  factory _BranchListResponseModel.fromJson(Map<String, dynamic> json) =
      _$BranchListResponseModelImpl.fromJson;

  @override
  List<BranchData> get data;
  @override
  String? get message;
  @override
  PaginationData? get pagination;
  @override
  String? get status;

  /// Create a copy of BranchListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchListResponseModelImplCopyWith<_$BranchListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BranchData _$BranchDataFromJson(Map<String, dynamic> json) {
  return _BranchData.fromJson(json);
}

/// @nodoc
mixin _$BranchData {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_registration_number')
  String? get businessRegistrationNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get industry => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'legal_entity_name')
  String? get legalEntityName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_radius')
  int? get maxRadius => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_account_name')
  String? get payrollBankAccountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_account_number')
  String? get payrollBankAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_bank_name')
  String? get payrollBankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payroll_currency')
  String? get payrollCurrency => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_id')
  int? get tenantId => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  BranchSettings? get settings => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BranchData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchDataCopyWith<BranchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchDataCopyWith<$Res> {
  factory $BranchDataCopyWith(
          BranchData value, $Res Function(BranchData) then) =
      _$BranchDataCopyWithImpl<$Res, BranchData>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? address,
      @JsonKey(name: 'business_registration_number')
      String? businessRegistrationNumber,
      String? email,
      String? industry,
      @JsonKey(name: 'is_active') bool? isActive,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'legal_entity_name') String? legalEntityName,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'max_radius') int? maxRadius,
      @JsonKey(name: 'payroll_bank_account_name')
      String? payrollBankAccountName,
      @JsonKey(name: 'payroll_bank_account_number')
      String? payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
      @JsonKey(name: 'payroll_currency') String? payrollCurrency,
      String? phone,
      @JsonKey(name: 'tenant_id') int? tenantId,
      String? website,
      BranchSettings? settings,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $BranchSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$BranchDataCopyWithImpl<$Res, $Val extends BranchData>
    implements $BranchDataCopyWith<$Res> {
  _$BranchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? businessRegistrationNumber = freezed,
    Object? email = freezed,
    Object? industry = freezed,
    Object? isActive = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? legalEntityName = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? maxRadius = freezed,
    Object? payrollBankAccountName = freezed,
    Object? payrollBankAccountNumber = freezed,
    Object? payrollBankName = freezed,
    Object? payrollCurrency = freezed,
    Object? phone = freezed,
    Object? tenantId = freezed,
    Object? website = freezed,
    Object? settings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      businessRegistrationNumber: freezed == businessRegistrationNumber
          ? _value.businessRegistrationNumber
          : businessRegistrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      legalEntityName: freezed == legalEntityName
          ? _value.legalEntityName
          : legalEntityName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRadius: freezed == maxRadius
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      payrollBankAccountName: freezed == payrollBankAccountName
          ? _value.payrollBankAccountName
          : payrollBankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountNumber: freezed == payrollBankAccountNumber
          ? _value.payrollBankAccountNumber
          : payrollBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankName: freezed == payrollBankName
          ? _value.payrollBankName
          : payrollBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollCurrency: freezed == payrollCurrency
          ? _value.payrollCurrency
          : payrollCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BranchSettings?,
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

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchSettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $BranchSettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchDataImplCopyWith<$Res>
    implements $BranchDataCopyWith<$Res> {
  factory _$$BranchDataImplCopyWith(
          _$BranchDataImpl value, $Res Function(_$BranchDataImpl) then) =
      __$$BranchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? address,
      @JsonKey(name: 'business_registration_number')
      String? businessRegistrationNumber,
      String? email,
      String? industry,
      @JsonKey(name: 'is_active') bool? isActive,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'legal_entity_name') String? legalEntityName,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'max_radius') int? maxRadius,
      @JsonKey(name: 'payroll_bank_account_name')
      String? payrollBankAccountName,
      @JsonKey(name: 'payroll_bank_account_number')
      String? payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_name') String? payrollBankName,
      @JsonKey(name: 'payroll_currency') String? payrollCurrency,
      String? phone,
      @JsonKey(name: 'tenant_id') int? tenantId,
      String? website,
      BranchSettings? settings,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $BranchSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$$BranchDataImplCopyWithImpl<$Res>
    extends _$BranchDataCopyWithImpl<$Res, _$BranchDataImpl>
    implements _$$BranchDataImplCopyWith<$Res> {
  __$$BranchDataImplCopyWithImpl(
      _$BranchDataImpl _value, $Res Function(_$BranchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? businessRegistrationNumber = freezed,
    Object? email = freezed,
    Object? industry = freezed,
    Object? isActive = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? legalEntityName = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? maxRadius = freezed,
    Object? payrollBankAccountName = freezed,
    Object? payrollBankAccountNumber = freezed,
    Object? payrollBankName = freezed,
    Object? payrollCurrency = freezed,
    Object? phone = freezed,
    Object? tenantId = freezed,
    Object? website = freezed,
    Object? settings = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BranchDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      businessRegistrationNumber: freezed == businessRegistrationNumber
          ? _value.businessRegistrationNumber
          : businessRegistrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      legalEntityName: freezed == legalEntityName
          ? _value.legalEntityName
          : legalEntityName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRadius: freezed == maxRadius
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      payrollBankAccountName: freezed == payrollBankAccountName
          ? _value.payrollBankAccountName
          : payrollBankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankAccountNumber: freezed == payrollBankAccountNumber
          ? _value.payrollBankAccountNumber
          : payrollBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollBankName: freezed == payrollBankName
          ? _value.payrollBankName
          : payrollBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      payrollCurrency: freezed == payrollCurrency
          ? _value.payrollCurrency
          : payrollCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BranchSettings?,
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
class _$BranchDataImpl implements _BranchData {
  const _$BranchDataImpl(
      {required this.id,
      this.name,
      this.address,
      @JsonKey(name: 'business_registration_number')
      this.businessRegistrationNumber,
      this.email,
      this.industry,
      @JsonKey(name: 'is_active') this.isActive,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'legal_entity_name') this.legalEntityName,
      this.logo,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'max_radius') this.maxRadius,
      @JsonKey(name: 'payroll_bank_account_name') this.payrollBankAccountName,
      @JsonKey(name: 'payroll_bank_account_number')
      this.payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_name') this.payrollBankName,
      @JsonKey(name: 'payroll_currency') this.payrollCurrency,
      this.phone,
      @JsonKey(name: 'tenant_id') this.tenantId,
      this.website,
      this.settings,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$BranchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchDataImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  @JsonKey(name: 'business_registration_number')
  final String? businessRegistrationNumber;
  @override
  final String? email;
  @override
  final String? industry;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(name: 'legal_entity_name')
  final String? legalEntityName;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'max_radius')
  final int? maxRadius;
  @override
  @JsonKey(name: 'payroll_bank_account_name')
  final String? payrollBankAccountName;
  @override
  @JsonKey(name: 'payroll_bank_account_number')
  final String? payrollBankAccountNumber;
  @override
  @JsonKey(name: 'payroll_bank_name')
  final String? payrollBankName;
  @override
  @JsonKey(name: 'payroll_currency')
  final String? payrollCurrency;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'tenant_id')
  final int? tenantId;
  @override
  final String? website;
  @override
  final BranchSettings? settings;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'BranchData(id: $id, name: $name, address: $address, businessRegistrationNumber: $businessRegistrationNumber, email: $email, industry: $industry, isActive: $isActive, latitude: $latitude, longitude: $longitude, legalEntityName: $legalEntityName, logo: $logo, logoUrl: $logoUrl, maxRadius: $maxRadius, payrollBankAccountName: $payrollBankAccountName, payrollBankAccountNumber: $payrollBankAccountNumber, payrollBankName: $payrollBankName, payrollCurrency: $payrollCurrency, phone: $phone, tenantId: $tenantId, website: $website, settings: $settings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.businessRegistrationNumber,
                    businessRegistrationNumber) ||
                other.businessRegistrationNumber ==
                    businessRegistrationNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.legalEntityName, legalEntityName) ||
                other.legalEntityName == legalEntityName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.maxRadius, maxRadius) ||
                other.maxRadius == maxRadius) &&
            (identical(other.payrollBankAccountName, payrollBankAccountName) ||
                other.payrollBankAccountName == payrollBankAccountName) &&
            (identical(
                    other.payrollBankAccountNumber, payrollBankAccountNumber) ||
                other.payrollBankAccountNumber == payrollBankAccountNumber) &&
            (identical(other.payrollBankName, payrollBankName) ||
                other.payrollBankName == payrollBankName) &&
            (identical(other.payrollCurrency, payrollCurrency) ||
                other.payrollCurrency == payrollCurrency) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        address,
        businessRegistrationNumber,
        email,
        industry,
        isActive,
        latitude,
        longitude,
        legalEntityName,
        logo,
        logoUrl,
        maxRadius,
        payrollBankAccountName,
        payrollBankAccountNumber,
        payrollBankName,
        payrollCurrency,
        phone,
        tenantId,
        website,
        settings,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchDataImplCopyWith<_$BranchDataImpl> get copyWith =>
      __$$BranchDataImplCopyWithImpl<_$BranchDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchDataImplToJson(
      this,
    );
  }
}

abstract class _BranchData implements BranchData {
  const factory _BranchData(
      {required final int id,
      final String? name,
      final String? address,
      @JsonKey(name: 'business_registration_number')
      final String? businessRegistrationNumber,
      final String? email,
      final String? industry,
      @JsonKey(name: 'is_active') final bool? isActive,
      final String? latitude,
      final String? longitude,
      @JsonKey(name: 'legal_entity_name') final String? legalEntityName,
      final String? logo,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      @JsonKey(name: 'max_radius') final int? maxRadius,
      @JsonKey(name: 'payroll_bank_account_name')
      final String? payrollBankAccountName,
      @JsonKey(name: 'payroll_bank_account_number')
      final String? payrollBankAccountNumber,
      @JsonKey(name: 'payroll_bank_name') final String? payrollBankName,
      @JsonKey(name: 'payroll_currency') final String? payrollCurrency,
      final String? phone,
      @JsonKey(name: 'tenant_id') final int? tenantId,
      final String? website,
      final BranchSettings? settings,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$BranchDataImpl;

  factory _BranchData.fromJson(Map<String, dynamic> json) =
      _$BranchDataImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  @JsonKey(name: 'business_registration_number')
  String? get businessRegistrationNumber;
  @override
  String? get email;
  @override
  String? get industry;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(name: 'legal_entity_name')
  String? get legalEntityName;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'max_radius')
  int? get maxRadius;
  @override
  @JsonKey(name: 'payroll_bank_account_name')
  String? get payrollBankAccountName;
  @override
  @JsonKey(name: 'payroll_bank_account_number')
  String? get payrollBankAccountNumber;
  @override
  @JsonKey(name: 'payroll_bank_name')
  String? get payrollBankName;
  @override
  @JsonKey(name: 'payroll_currency')
  String? get payrollCurrency;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'tenant_id')
  int? get tenantId;
  @override
  String? get website;
  @override
  BranchSettings? get settings;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of BranchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchDataImplCopyWith<_$BranchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BranchSettings _$BranchSettingsFromJson(Map<String, dynamic> json) {
  return _BranchSettings.fromJson(json);
}

/// @nodoc
mixin _$BranchSettings {
  @JsonKey(name: 'break_duration')
  int? get breakDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_format')
  String? get dateFormat => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_format')
  String? get timeFormat => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_hours')
  String? get workingHours => throw _privateConstructorUsedError;

  /// Serializes this BranchSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchSettingsCopyWith<BranchSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchSettingsCopyWith<$Res> {
  factory $BranchSettingsCopyWith(
          BranchSettings value, $Res Function(BranchSettings) then) =
      _$BranchSettingsCopyWithImpl<$Res, BranchSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'break_duration') int? breakDuration,
      @JsonKey(name: 'date_format') String? dateFormat,
      String? language,
      @JsonKey(name: 'time_format') String? timeFormat,
      String? timezone,
      @JsonKey(name: 'working_hours') String? workingHours});
}

/// @nodoc
class _$BranchSettingsCopyWithImpl<$Res, $Val extends BranchSettings>
    implements $BranchSettingsCopyWith<$Res> {
  _$BranchSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakDuration = freezed,
    Object? dateFormat = freezed,
    Object? language = freezed,
    Object? timeFormat = freezed,
    Object? timezone = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_value.copyWith(
      breakDuration: freezed == breakDuration
          ? _value.breakDuration
          : breakDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFormat: freezed == dateFormat
          ? _value.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _value.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchSettingsImplCopyWith<$Res>
    implements $BranchSettingsCopyWith<$Res> {
  factory _$$BranchSettingsImplCopyWith(_$BranchSettingsImpl value,
          $Res Function(_$BranchSettingsImpl) then) =
      __$$BranchSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'break_duration') int? breakDuration,
      @JsonKey(name: 'date_format') String? dateFormat,
      String? language,
      @JsonKey(name: 'time_format') String? timeFormat,
      String? timezone,
      @JsonKey(name: 'working_hours') String? workingHours});
}

/// @nodoc
class __$$BranchSettingsImplCopyWithImpl<$Res>
    extends _$BranchSettingsCopyWithImpl<$Res, _$BranchSettingsImpl>
    implements _$$BranchSettingsImplCopyWith<$Res> {
  __$$BranchSettingsImplCopyWithImpl(
      _$BranchSettingsImpl _value, $Res Function(_$BranchSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakDuration = freezed,
    Object? dateFormat = freezed,
    Object? language = freezed,
    Object? timeFormat = freezed,
    Object? timezone = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_$BranchSettingsImpl(
      breakDuration: freezed == breakDuration
          ? _value.breakDuration
          : breakDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFormat: freezed == dateFormat
          ? _value.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _value.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchSettingsImpl implements _BranchSettings {
  const _$BranchSettingsImpl(
      {@JsonKey(name: 'break_duration') this.breakDuration,
      @JsonKey(name: 'date_format') this.dateFormat,
      this.language,
      @JsonKey(name: 'time_format') this.timeFormat,
      this.timezone,
      @JsonKey(name: 'working_hours') this.workingHours});

  factory _$BranchSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchSettingsImplFromJson(json);

  @override
  @JsonKey(name: 'break_duration')
  final int? breakDuration;
  @override
  @JsonKey(name: 'date_format')
  final String? dateFormat;
  @override
  final String? language;
  @override
  @JsonKey(name: 'time_format')
  final String? timeFormat;
  @override
  final String? timezone;
  @override
  @JsonKey(name: 'working_hours')
  final String? workingHours;

  @override
  String toString() {
    return 'BranchSettings(breakDuration: $breakDuration, dateFormat: $dateFormat, language: $language, timeFormat: $timeFormat, timezone: $timezone, workingHours: $workingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchSettingsImpl &&
            (identical(other.breakDuration, breakDuration) ||
                other.breakDuration == breakDuration) &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, breakDuration, dateFormat,
      language, timeFormat, timezone, workingHours);

  /// Create a copy of BranchSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchSettingsImplCopyWith<_$BranchSettingsImpl> get copyWith =>
      __$$BranchSettingsImplCopyWithImpl<_$BranchSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchSettingsImplToJson(
      this,
    );
  }
}

abstract class _BranchSettings implements BranchSettings {
  const factory _BranchSettings(
          {@JsonKey(name: 'break_duration') final int? breakDuration,
          @JsonKey(name: 'date_format') final String? dateFormat,
          final String? language,
          @JsonKey(name: 'time_format') final String? timeFormat,
          final String? timezone,
          @JsonKey(name: 'working_hours') final String? workingHours}) =
      _$BranchSettingsImpl;

  factory _BranchSettings.fromJson(Map<String, dynamic> json) =
      _$BranchSettingsImpl.fromJson;

  @override
  @JsonKey(name: 'break_duration')
  int? get breakDuration;
  @override
  @JsonKey(name: 'date_format')
  String? get dateFormat;
  @override
  String? get language;
  @override
  @JsonKey(name: 'time_format')
  String? get timeFormat;
  @override
  String? get timezone;
  @override
  @JsonKey(name: 'working_hours')
  String? get workingHours;

  /// Create a copy of BranchSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchSettingsImplCopyWith<_$BranchSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) {
  return _PaginationData.fromJson(json);
}

/// @nodoc
mixin _$PaginationData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  String? get first => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  dynamic get prev => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) then) =
      _$PaginationDataCopyWithImpl<$Res, PaginationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      String? first,
      int? from,
      String? last,
      @JsonKey(name: 'last_page') int? lastPage,
      dynamic next,
      @JsonKey(name: 'per_page') int? perPage,
      dynamic prev,
      int? to,
      int? total});
}

/// @nodoc
class _$PaginationDataCopyWithImpl<$Res, $Val extends PaginationData>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? first = freezed,
    Object? from = freezed,
    Object? last = freezed,
    Object? lastPage = freezed,
    Object? next = freezed,
    Object? perPage = freezed,
    Object? prev = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationDataImplCopyWith<$Res>
    implements $PaginationDataCopyWith<$Res> {
  factory _$$PaginationDataImplCopyWith(_$PaginationDataImpl value,
          $Res Function(_$PaginationDataImpl) then) =
      __$$PaginationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      String? first,
      int? from,
      String? last,
      @JsonKey(name: 'last_page') int? lastPage,
      dynamic next,
      @JsonKey(name: 'per_page') int? perPage,
      dynamic prev,
      int? to,
      int? total});
}

/// @nodoc
class __$$PaginationDataImplCopyWithImpl<$Res>
    extends _$PaginationDataCopyWithImpl<$Res, _$PaginationDataImpl>
    implements _$$PaginationDataImplCopyWith<$Res> {
  __$$PaginationDataImplCopyWithImpl(
      _$PaginationDataImpl _value, $Res Function(_$PaginationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? first = freezed,
    Object? from = freezed,
    Object? last = freezed,
    Object? lastPage = freezed,
    Object? next = freezed,
    Object? perPage = freezed,
    Object? prev = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PaginationDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDataImpl implements _PaginationData {
  const _$PaginationDataImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      this.first,
      this.from,
      this.last,
      @JsonKey(name: 'last_page') this.lastPage,
      this.next,
      @JsonKey(name: 'per_page') this.perPage,
      this.prev,
      this.to,
      this.total});

  factory _$PaginationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  final String? first;
  @override
  final int? from;
  @override
  final String? last;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  final dynamic next;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final dynamic prev;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'PaginationData(currentPage: $currentPage, first: $first, from: $from, last: $last, lastPage: $lastPage, next: $next, perPage: $perPage, prev: $prev, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(other.prev, prev) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      first,
      from,
      last,
      lastPage,
      const DeepCollectionEquality().hash(next),
      perPage,
      const DeepCollectionEquality().hash(prev),
      to,
      total);

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      __$$PaginationDataImplCopyWithImpl<_$PaginationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDataImplToJson(
      this,
    );
  }
}

abstract class _PaginationData implements PaginationData {
  const factory _PaginationData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final String? first,
      final int? from,
      final String? last,
      @JsonKey(name: 'last_page') final int? lastPage,
      final dynamic next,
      @JsonKey(name: 'per_page') final int? perPage,
      final dynamic prev,
      final int? to,
      final int? total}) = _$PaginationDataImpl;

  factory _PaginationData.fromJson(Map<String, dynamic> json) =
      _$PaginationDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  String? get first;
  @override
  int? get from;
  @override
  String? get last;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  dynamic get next;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  dynamic get prev;
  @override
  int? get to;
  @override
  int? get total;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
