import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';
import 'package:hrms_mobile/features/overtime_request/domain/repositories/overtime_repository.dart';

class OvertimeRequestUsecase {
  final OvertimeRepository repository;

  OvertimeRequestUsecase(this.repository);

  Future<OvertimeResponse> call(OvertimeRequest request) {
    return repository.overtimeRequest(request);
  }

  Future<OvertimeResponse> updateCall(
      {required String overtimeId, required OvertimeRequest request}) {
    return repository.updateOvertimeRequest(
        overtimeId: overtimeId, request: request);
  }
}
