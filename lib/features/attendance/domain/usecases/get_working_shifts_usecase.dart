import 'package:hrms_mobile/features/attendance/data/models/response/shift/working_shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class GetWorkingShiftsUseCase {
  final AttendanceRepository _repository;

  GetWorkingShiftsUseCase(this._repository);

  Future<WorkingShiftResponseModel> call(String? userId, String? date) async {
    return _repository.getTodayShift(userId: userId, date: date);
  }
}
