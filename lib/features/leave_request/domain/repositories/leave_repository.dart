import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';

abstract class LeaveRepository {
  Future<LeaveBalanceResponse> getLeaveBalance();

  Future<List<LeaveType>> getLeaveTypes();

  Future<dynamic> submitLeaveRequest({required LeaveRequest request});

  Future<List<LeaveGroup>> getLeaveHistory();

  Future<LeaveDetail> getLeaveDetail({required int id});
}
