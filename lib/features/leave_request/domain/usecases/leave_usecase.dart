import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';

class LeaveUsecase {
  final LeaveRepository repository;

  LeaveUsecase(this.repository);

  Future<LeaveBalanceResponse> getLeaveBalance() {
    return repository.getLeaveBalance();
  }

  Future<List<LeaveType>> getLeaveTypes() {
    return repository.getLeaveTypes();
  }

  Future<dynamic> submitLeaveRequest({required LeaveRequest request}) {
    return repository.submitLeaveRequest(request: request);
  }

  Future<List<LeaveGroup>> getLeaveHistory() {
    return repository.getLeaveHistory();
  }

  Future<LeaveDetail> getLeaveDetail({required int id}) {
    return repository.getLeaveDetail(id: id);
  }
}
