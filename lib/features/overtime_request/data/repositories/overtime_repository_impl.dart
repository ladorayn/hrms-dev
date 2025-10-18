import 'package:hrms_mobile/features/overtime_request/data/data_sources/overtime_remote_source.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/response/overtime_response_model.dart';
import 'package:hrms_mobile/features/overtime_request/domain/repositories/overtime_repository.dart';

class OvertimeRepositoryImpl implements OvertimeRepository {
  final OvertimeRemoteSource remoteSource;

  OvertimeRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<OvertimeResponse> overtimeRequest(OvertimeRequest request) async {
    final response = await remoteSource.overtimeRequest(request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<OvertimeResponse> updateOvertimeRequest(
      {required String overtimeId, required OvertimeRequest request}) async {
    final response = await remoteSource.updateOvertimeRequest(
        overtimeId: overtimeId, request: request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
