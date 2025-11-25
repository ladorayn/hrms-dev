// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayrunImpl _$$PayrunImplFromJson(Map<String, dynamic> json) => _$PayrunImpl(
      id: (json['id'] as num?)?.toInt(),
      periodYear: (json['period_year'] as num?)?.toInt(),
      periodMonth: (json['period_month'] as num?)?.toInt(),
      periodLabel: json['period_label'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusLabel: json['status_label'] as String?,
    );

Map<String, dynamic> _$$PayrunImplToJson(_$PayrunImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period_year': instance.periodYear,
      'period_month': instance.periodMonth,
      'period_label': instance.periodLabel,
      'status': instance.status,
      'status_label': instance.statusLabel,
    };

_$PayslipDataListImpl _$$PayslipDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipDataListImpl(
      id: (json['id'] as num?)?.toInt(),
      payrun: json['payrun'] == null
          ? null
          : Payrun.fromJson(json['payrun'] as Map<String, dynamic>),
      viewAccessStatus: (json['view_access_status'] as num?)?.toInt(),
      viewAccessStatusLabel: json['view_access_status_label'] as String?,
      viewAccessGranted: json['view_access_granted'] as bool?,
      viewAccessDaysRemaining:
          (json['view_access_days_remaining'] as num?)?.toInt(),
      printAccessStatus: (json['print_access_status'] as num?)?.toInt(),
      printAccessStatusLabel: json['print_access_status_label'] as String?,
    );

Map<String, dynamic> _$$PayslipDataListImplToJson(
        _$PayslipDataListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payrun': instance.payrun,
      'view_access_status': instance.viewAccessStatus,
      'view_access_status_label': instance.viewAccessStatusLabel,
      'view_access_granted': instance.viewAccessGranted,
      'view_access_days_remaining': instance.viewAccessDaysRemaining,
      'print_access_status': instance.printAccessStatus,
      'print_access_status_label': instance.printAccessStatusLabel,
    };
