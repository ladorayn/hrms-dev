import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class GetAttendanceHistoryUseCase {
  final AttendanceRepository repo;
  GetAttendanceHistoryUseCase(this.repo);
  Future<List<Attendance>> call() => repo.getHistory();
}
