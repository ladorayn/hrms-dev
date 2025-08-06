import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class ClockOutUseCase {
  final AttendanceRepository repo;
  ClockOutUseCase(this.repo);
  Future<void> call() => repo.clockOut();
}
