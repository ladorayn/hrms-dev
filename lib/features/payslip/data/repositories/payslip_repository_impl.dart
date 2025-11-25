import 'package:hrms_mobile/features/payslip/data/data_sources/payslip_remote_source.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';
import 'package:hrms_mobile/features/payslip/domain/repositories/payslip_repository.dart';

class PayslipRepositoryImpl implements PayslipRepository {
  final PayslipRemoteSource remoteSource;

  PayslipRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<List<PayslipDataList>> getPayslipList() async {
    final response = await remoteSource.getPayslipList();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<PayslipDetailResponse> requestViewPayslip(
      {required PayslipRequest request, required int id}) async {
    final response =
        await remoteSource.requestViewPayslip(request: request, id: id);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<PayslipDetailResponse> requestPrintPayslip(
      {required PayslipRequest request, required int id}) async {
    final response =
        await remoteSource.requestPrintPayslip(request: request, id: id);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<PayslipDetailResponse> getPayslipDetail({required int id}) async {
    final response = await remoteSource.getPayslipDetail(id: id);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
