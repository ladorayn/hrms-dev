import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_local_source.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceLocalSource localSource = AttendanceLocalSource();

  @override
  Future<void> clockIn() async {
    final list = await localSource.getAttendance();
    list.add(Attendance(clockIn: DateTime.now()));
    await localSource.saveAttendance(list);
  }

  @override
  Future<void> clockOut() async {
    final list = await localSource.getAttendance();
    if (list.isNotEmpty && list.last.clockOut == null) {
      final updated = list.last.copyWith(clockOut: DateTime.now());
      list[list.length - 1] = updated;
      await localSource.saveAttendance(list);
    }
  }

  @override
  Future<List<Attendance>> getHistory() {
    return localSource.getAttendance();
  }
}
