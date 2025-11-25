import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslip_list_response.freezed.dart';
part 'payslip_list_response.g.dart';

@freezed
class Payrun with _$Payrun {
  const factory Payrun({
    int? id,
    @JsonKey(name: 'period_year') int? periodYear,
    @JsonKey(name: 'period_month') int? periodMonth,
    @JsonKey(name: 'period_label') String? periodLabel,
    int? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    // @JsonKey(name: 'sent_at') int? sentAt,
  }) = _Payrun;

  factory Payrun.fromJson(Map<String, dynamic> json) => _$PayrunFromJson(json);
}

@freezed
class PayslipDataList with _$PayslipDataList {
  const factory PayslipDataList({
    int? id,
    Payrun? payrun,
    @JsonKey(name: 'view_access_status') int? viewAccessStatus,
    @JsonKey(name: 'view_access_status_label') String? viewAccessStatusLabel,
    @JsonKey(name: 'view_access_granted') bool? viewAccessGranted,
    @JsonKey(name: 'view_access_days_remaining') int? viewAccessDaysRemaining,
    @JsonKey(name: 'print_access_status') int? printAccessStatus,
    @JsonKey(name: 'print_access_status_label') String? printAccessStatusLabel,
  }) = _PayslipDataList;

  factory PayslipDataList.fromJson(Map<String, dynamic> json) =>
      _$PayslipDataListFromJson(json);
}
