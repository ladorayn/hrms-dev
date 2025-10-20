import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';

abstract class LeaveRepository {
  Future<LeaveBalanceResponse> getLeaveBalance();
}
