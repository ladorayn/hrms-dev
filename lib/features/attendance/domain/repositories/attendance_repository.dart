import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';

abstract class AttendanceRepository {
  Future<void> clockIn();
  Future<void> clockOut();
  Future<List<Attendance>> getHistory();
}
