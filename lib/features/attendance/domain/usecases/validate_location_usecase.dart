import 'package:hrms_mobile/features/attendance/data/models/request/validate_location/validate_location_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/validate_location/validate_location_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class ValidateLocationUseCase {
  final AttendanceRepository _repository;
  ValidateLocationUseCase(this._repository);

  Future<ValidateLocationResponseModel> call(
      ValidateLocationRequestModel request) async {
    return _repository.validateLocation(request);
  }
}
