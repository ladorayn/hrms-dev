import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslip_view_request.freezed.dart';
part 'payslip_view_request.g.dart';

@freezed
class PayslipRequest with _$PayslipRequest {
  const factory PayslipRequest({
    required String password,
  }) = _PayslipRequest;

  factory PayslipRequest.fromJson(Map<String, dynamic> json) =>
      _$PayslipRequestFromJson(json);
}
