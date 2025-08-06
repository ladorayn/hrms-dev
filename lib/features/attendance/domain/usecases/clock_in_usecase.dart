import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class ClockInUseCase {
  final AttendanceRepository repository;

  ClockInUseCase(this.repository);

  Future<void> call() => repository.clockIn();
}
