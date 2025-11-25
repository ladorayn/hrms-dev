// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Payrun _$PayrunFromJson(Map<String, dynamic> json) {
  return _Payrun.fromJson(json);
}

/// @nodoc
mixin _$Payrun {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_year')
  int? get periodYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_month')
  int? get periodMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_label')
  String? get periodLabel => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;

  /// Serializes this Payrun to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payrun
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayrunCopyWith<Payrun> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayrunCopyWith<$Res> {
  factory $PayrunCopyWith(Payrun value, $Res Function(Payrun) then) =
      _$PayrunCopyWithImpl<$Res, Payrun>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'period_year') int? periodYear,
      @JsonKey(name: 'period_month') int? periodMonth,
      @JsonKey(name: 'period_label') String? periodLabel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class _$PayrunCopyWithImpl<$Res, $Val extends Payrun>
    implements $PayrunCopyWith<$Res> {
  _$PayrunCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payrun
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? periodYear = freezed,
    Object? periodMonth = freezed,
    Object? periodLabel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      periodMonth: freezed == periodMonth
          ? _value.periodMonth
          : periodMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      periodLabel: freezed == periodLabel
          ? _value.periodLabel
          : periodLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayrunImplCopyWith<$Res> implements $PayrunCopyWith<$Res> {
  factory _$$PayrunImplCopyWith(
          _$PayrunImpl value, $Res Function(_$PayrunImpl) then) =
      __$$PayrunImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'period_year') int? periodYear,
      @JsonKey(name: 'period_month') int? periodMonth,
      @JsonKey(name: 'period_label') String? periodLabel,
      int? status,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class __$$PayrunImplCopyWithImpl<$Res>
    extends _$PayrunCopyWithImpl<$Res, _$PayrunImpl>
    implements _$$PayrunImplCopyWith<$Res> {
  __$$PayrunImplCopyWithImpl(
      _$PayrunImpl _value, $Res Function(_$PayrunImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payrun
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? periodYear = freezed,
    Object? periodMonth = freezed,
    Object? periodLabel = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_$PayrunImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      periodYear: freezed == periodYear
          ? _value.periodYear
          : periodYear // ignore: cast_nullable_to_non_nullable
              as int?,
      periodMonth: freezed == periodMonth
          ? _value.periodMonth
          : periodMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      periodLabel: freezed == periodLabel
          ? _value.periodLabel
          : periodLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayrunImpl implements _Payrun {
  const _$PayrunImpl(
      {this.id,
      @JsonKey(name: 'period_year') this.periodYear,
      @JsonKey(name: 'period_month') this.periodMonth,
      @JsonKey(name: 'period_label') this.periodLabel,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel});

  factory _$PayrunImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayrunImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'period_year')
  final int? periodYear;
  @override
  @JsonKey(name: 'period_month')
  final int? periodMonth;
  @override
  @JsonKey(name: 'period_label')
  final String? periodLabel;
  @override
  final int? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;

  @override
  String toString() {
    return 'Payrun(id: $id, periodYear: $periodYear, periodMonth: $periodMonth, periodLabel: $periodLabel, status: $status, statusLabel: $statusLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayrunImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.periodYear, periodYear) ||
                other.periodYear == periodYear) &&
            (identical(other.periodMonth, periodMonth) ||
                other.periodMonth == periodMonth) &&
            (identical(other.periodLabel, periodLabel) ||
                other.periodLabel == periodLabel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, periodYear, periodMonth,
      periodLabel, status, statusLabel);

  /// Create a copy of Payrun
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayrunImplCopyWith<_$PayrunImpl> get copyWith =>
      __$$PayrunImplCopyWithImpl<_$PayrunImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayrunImplToJson(
      this,
    );
  }
}

abstract class _Payrun implements Payrun {
  const factory _Payrun(
      {final int? id,
      @JsonKey(name: 'period_year') final int? periodYear,
      @JsonKey(name: 'period_month') final int? periodMonth,
      @JsonKey(name: 'period_label') final String? periodLabel,
      final int? status,
      @JsonKey(name: 'status_label') final String? statusLabel}) = _$PayrunImpl;

  factory _Payrun.fromJson(Map<String, dynamic> json) = _$PayrunImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'period_year')
  int? get periodYear;
  @override
  @JsonKey(name: 'period_month')
  int? get periodMonth;
  @override
  @JsonKey(name: 'period_label')
  String? get periodLabel;
  @override
  int? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;

  /// Create a copy of Payrun
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayrunImplCopyWith<_$PayrunImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayslipDataList _$PayslipDataListFromJson(Map<String, dynamic> json) {
  return _PayslipDataList.fromJson(json);
}

/// @nodoc
mixin _$PayslipDataList {
  int? get id => throw _privateConstructorUsedError;
  Payrun? get payrun => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_access_status')
  int? get viewAccessStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_access_status_label')
  String? get viewAccessStatusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_access_granted')
  bool? get viewAccessGranted => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_access_days_remaining')
  int? get viewAccessDaysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'print_access_status')
  int? get printAccessStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'print_access_status_label')
  String? get printAccessStatusLabel => throw _privateConstructorUsedError;

  /// Serializes this PayslipDataList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayslipDataListCopyWith<PayslipDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipDataListCopyWith<$Res> {
  factory $PayslipDataListCopyWith(
          PayslipDataList value, $Res Function(PayslipDataList) then) =
      _$PayslipDataListCopyWithImpl<$Res, PayslipDataList>;
  @useResult
  $Res call(
      {int? id,
      Payrun? payrun,
      @JsonKey(name: 'view_access_status') int? viewAccessStatus,
      @JsonKey(name: 'view_access_status_label') String? viewAccessStatusLabel,
      @JsonKey(name: 'view_access_granted') bool? viewAccessGranted,
      @JsonKey(name: 'view_access_days_remaining') int? viewAccessDaysRemaining,
      @JsonKey(name: 'print_access_status') int? printAccessStatus,
      @JsonKey(name: 'print_access_status_label')
      String? printAccessStatusLabel});

  $PayrunCopyWith<$Res>? get payrun;
}

/// @nodoc
class _$PayslipDataListCopyWithImpl<$Res, $Val extends PayslipDataList>
    implements $PayslipDataListCopyWith<$Res> {
  _$PayslipDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payrun = freezed,
    Object? viewAccessStatus = freezed,
    Object? viewAccessStatusLabel = freezed,
    Object? viewAccessGranted = freezed,
    Object? viewAccessDaysRemaining = freezed,
    Object? printAccessStatus = freezed,
    Object? printAccessStatusLabel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      payrun: freezed == payrun
          ? _value.payrun
          : payrun // ignore: cast_nullable_to_non_nullable
              as Payrun?,
      viewAccessStatus: freezed == viewAccessStatus
          ? _value.viewAccessStatus
          : viewAccessStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAccessStatusLabel: freezed == viewAccessStatusLabel
          ? _value.viewAccessStatusLabel
          : viewAccessStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      viewAccessGranted: freezed == viewAccessGranted
          ? _value.viewAccessGranted
          : viewAccessGranted // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewAccessDaysRemaining: freezed == viewAccessDaysRemaining
          ? _value.viewAccessDaysRemaining
          : viewAccessDaysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      printAccessStatus: freezed == printAccessStatus
          ? _value.printAccessStatus
          : printAccessStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      printAccessStatusLabel: freezed == printAccessStatusLabel
          ? _value.printAccessStatusLabel
          : printAccessStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayrunCopyWith<$Res>? get payrun {
    if (_value.payrun == null) {
      return null;
    }

    return $PayrunCopyWith<$Res>(_value.payrun!, (value) {
      return _then(_value.copyWith(payrun: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayslipDataListImplCopyWith<$Res>
    implements $PayslipDataListCopyWith<$Res> {
  factory _$$PayslipDataListImplCopyWith(_$PayslipDataListImpl value,
          $Res Function(_$PayslipDataListImpl) then) =
      __$$PayslipDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Payrun? payrun,
      @JsonKey(name: 'view_access_status') int? viewAccessStatus,
      @JsonKey(name: 'view_access_status_label') String? viewAccessStatusLabel,
      @JsonKey(name: 'view_access_granted') bool? viewAccessGranted,
      @JsonKey(name: 'view_access_days_remaining') int? viewAccessDaysRemaining,
      @JsonKey(name: 'print_access_status') int? printAccessStatus,
      @JsonKey(name: 'print_access_status_label')
      String? printAccessStatusLabel});

  @override
  $PayrunCopyWith<$Res>? get payrun;
}

/// @nodoc
class __$$PayslipDataListImplCopyWithImpl<$Res>
    extends _$PayslipDataListCopyWithImpl<$Res, _$PayslipDataListImpl>
    implements _$$PayslipDataListImplCopyWith<$Res> {
  __$$PayslipDataListImplCopyWithImpl(
      _$PayslipDataListImpl _value, $Res Function(_$PayslipDataListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payrun = freezed,
    Object? viewAccessStatus = freezed,
    Object? viewAccessStatusLabel = freezed,
    Object? viewAccessGranted = freezed,
    Object? viewAccessDaysRemaining = freezed,
    Object? printAccessStatus = freezed,
    Object? printAccessStatusLabel = freezed,
  }) {
    return _then(_$PayslipDataListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      payrun: freezed == payrun
          ? _value.payrun
          : payrun // ignore: cast_nullable_to_non_nullable
              as Payrun?,
      viewAccessStatus: freezed == viewAccessStatus
          ? _value.viewAccessStatus
          : viewAccessStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAccessStatusLabel: freezed == viewAccessStatusLabel
          ? _value.viewAccessStatusLabel
          : viewAccessStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      viewAccessGranted: freezed == viewAccessGranted
          ? _value.viewAccessGranted
          : viewAccessGranted // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewAccessDaysRemaining: freezed == viewAccessDaysRemaining
          ? _value.viewAccessDaysRemaining
          : viewAccessDaysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      printAccessStatus: freezed == printAccessStatus
          ? _value.printAccessStatus
          : printAccessStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      printAccessStatusLabel: freezed == printAccessStatusLabel
          ? _value.printAccessStatusLabel
          : printAccessStatusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipDataListImpl implements _PayslipDataList {
  const _$PayslipDataListImpl(
      {this.id,
      this.payrun,
      @JsonKey(name: 'view_access_status') this.viewAccessStatus,
      @JsonKey(name: 'view_access_status_label') this.viewAccessStatusLabel,
      @JsonKey(name: 'view_access_granted') this.viewAccessGranted,
      @JsonKey(name: 'view_access_days_remaining') this.viewAccessDaysRemaining,
      @JsonKey(name: 'print_access_status') this.printAccessStatus,
      @JsonKey(name: 'print_access_status_label') this.printAccessStatusLabel});

  factory _$PayslipDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipDataListImplFromJson(json);

  @override
  final int? id;
  @override
  final Payrun? payrun;
  @override
  @JsonKey(name: 'view_access_status')
  final int? viewAccessStatus;
  @override
  @JsonKey(name: 'view_access_status_label')
  final String? viewAccessStatusLabel;
  @override
  @JsonKey(name: 'view_access_granted')
  final bool? viewAccessGranted;
  @override
  @JsonKey(name: 'view_access_days_remaining')
  final int? viewAccessDaysRemaining;
  @override
  @JsonKey(name: 'print_access_status')
  final int? printAccessStatus;
  @override
  @JsonKey(name: 'print_access_status_label')
  final String? printAccessStatusLabel;

  @override
  String toString() {
    return 'PayslipDataList(id: $id, payrun: $payrun, viewAccessStatus: $viewAccessStatus, viewAccessStatusLabel: $viewAccessStatusLabel, viewAccessGranted: $viewAccessGranted, viewAccessDaysRemaining: $viewAccessDaysRemaining, printAccessStatus: $printAccessStatus, printAccessStatusLabel: $printAccessStatusLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipDataListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payrun, payrun) || other.payrun == payrun) &&
            (identical(other.viewAccessStatus, viewAccessStatus) ||
                other.viewAccessStatus == viewAccessStatus) &&
            (identical(other.viewAccessStatusLabel, viewAccessStatusLabel) ||
                other.viewAccessStatusLabel == viewAccessStatusLabel) &&
            (identical(other.viewAccessGranted, viewAccessGranted) ||
                other.viewAccessGranted == viewAccessGranted) &&
            (identical(
                    other.viewAccessDaysRemaining, viewAccessDaysRemaining) ||
                other.viewAccessDaysRemaining == viewAccessDaysRemaining) &&
            (identical(other.printAccessStatus, printAccessStatus) ||
                other.printAccessStatus == printAccessStatus) &&
            (identical(other.printAccessStatusLabel, printAccessStatusLabel) ||
                other.printAccessStatusLabel == printAccessStatusLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      payrun,
      viewAccessStatus,
      viewAccessStatusLabel,
      viewAccessGranted,
      viewAccessDaysRemaining,
      printAccessStatus,
      printAccessStatusLabel);

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipDataListImplCopyWith<_$PayslipDataListImpl> get copyWith =>
      __$$PayslipDataListImplCopyWithImpl<_$PayslipDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipDataListImplToJson(
      this,
    );
  }
}

abstract class _PayslipDataList implements PayslipDataList {
  const factory _PayslipDataList(
      {final int? id,
      final Payrun? payrun,
      @JsonKey(name: 'view_access_status') final int? viewAccessStatus,
      @JsonKey(name: 'view_access_status_label')
      final String? viewAccessStatusLabel,
      @JsonKey(name: 'view_access_granted') final bool? viewAccessGranted,
      @JsonKey(name: 'view_access_days_remaining')
      final int? viewAccessDaysRemaining,
      @JsonKey(name: 'print_access_status') final int? printAccessStatus,
      @JsonKey(name: 'print_access_status_label')
      final String? printAccessStatusLabel}) = _$PayslipDataListImpl;

  factory _PayslipDataList.fromJson(Map<String, dynamic> json) =
      _$PayslipDataListImpl.fromJson;

  @override
  int? get id;
  @override
  Payrun? get payrun;
  @override
  @JsonKey(name: 'view_access_status')
  int? get viewAccessStatus;
  @override
  @JsonKey(name: 'view_access_status_label')
  String? get viewAccessStatusLabel;
  @override
  @JsonKey(name: 'view_access_granted')
  bool? get viewAccessGranted;
  @override
  @JsonKey(name: 'view_access_days_remaining')
  int? get viewAccessDaysRemaining;
  @override
  @JsonKey(name: 'print_access_status')
  int? get printAccessStatus;
  @override
  @JsonKey(name: 'print_access_status_label')
  String? get printAccessStatusLabel;

  /// Create a copy of PayslipDataList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayslipDataListImplCopyWith<_$PayslipDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
