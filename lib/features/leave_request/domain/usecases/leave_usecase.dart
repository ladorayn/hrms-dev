import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';

class LeaveUsecase {
  final LeaveRepository repository;

  LeaveUsecase(this.repository);

  Future<LeaveBalanceResponse> getLeaveBalance() {
    return repository.getLeaveBalance();
  }
}
