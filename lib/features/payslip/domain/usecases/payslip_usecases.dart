import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';
import 'package:hrms_mobile/features/payslip/domain/repositories/payslip_repository.dart';

class PayslipUsecases {
  final PayslipRepository repository;

  PayslipUsecases(this.repository);

  Future<List<PayslipDataList>> getPayslipList() {
    return repository.getPayslipList();
  }

  Future<PayslipDetailResponse> requestViewPayslip(
      {required PayslipRequest request, required int id}) {
    return repository.requestViewPayslip(request: request, id: id);
  }

  Future<PayslipDetailResponse> requestPrintPayslip(
      {required PayslipRequest request, required int id}) {
    return repository.requestPrintPayslip(request: request, id: id);
  }

  Future<PayslipDetailResponse> getPayslipDetail({required int id}) {
    return repository.getPayslipDetail(id: id);
  }
}
