import 'package:hrms_mobile/features/leave_request/data/data_sources/leave_remote_source.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';

import '../models/request/leave_request.dart';

class LeaveRepositoryImpl implements LeaveRepository {
  final LeaveRemoteSource remoteSource;

  LeaveRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<LeaveBalanceResponse> getLeaveBalance() async {
    final response = await remoteSource.getLeaveBalance();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<LeaveType>> getLeaveTypes() async {
    final response = await remoteSource.getLeaveTypes();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<dynamic> submitLeaveRequest({required LeaveRequest request}) async {
    final response = await remoteSource.submitLeaveRequest(request: request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<LeaveGroup>> getLeaveHistory() async {
    final response = await remoteSource.getLeaveHistory();
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<LeaveDetail> getLeaveDetail({required int id}) async {
    final response = await remoteSource.getLeaveDetail(id: id);
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
