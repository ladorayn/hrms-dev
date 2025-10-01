import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class ClockInUseCase {
  final AttendanceRepository repository;

  ClockInUseCase(this.repository);

  Future<AttendanceData> call(ClockInRequestModel request) {
    return repository.clockIn(request);
  }
}
