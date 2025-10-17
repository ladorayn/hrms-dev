import 'package:hrms_mobile/features/attendance/data/models/response/shift/shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class GetShiftsUseCase {
  final AttendanceRepository _repository;
  GetShiftsUseCase(this._repository);

  Future<List<ShiftModel>> call() async {
    return _repository.getShift();
  }
}
