import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';

abstract class OvertimeRepository {
  Future<OvertimeResponse> overtimeRequest(OvertimeRequest request);
  Future<OvertimeResponse> updateOvertimeRequest(
      {required String overtimeId, required OvertimeRequest request});
}
