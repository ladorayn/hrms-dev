import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/repositories/attendance_repository_impl.dart';

class ClockOutUseCase {
  final AttendanceRepositoryImpl repository;
  ClockOutUseCase(this.repository);

  Future<AttendanceData> call(int attendanceId, ClockOutRequestModel request) {
    return repository.clockOut(attendanceId, request);
  }
}
