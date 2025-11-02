import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';

abstract class LeaveRepository {
  Future<LeaveBalanceResponse> getLeaveBalance();

  Future<List<LeaveType>> getLeaveTypes();
}
