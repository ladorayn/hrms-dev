import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';

abstract class PayslipRepository {
  Future<List<PayslipDataList>> getPayslipList();

  Future<dynamic> requestViewPayslip(
      {required PayslipRequest request, required int id});

  Future<dynamic> requestPrintPayslip(
      {required PayslipRequest request, required int id});

  Future<PayslipDetailResponse> getPayslipDetail({required int id});
}
