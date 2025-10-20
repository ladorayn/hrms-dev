import 'package:hrms_mobile/features/leave_request/data/data_sources/leave_remote_source.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';

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
}
