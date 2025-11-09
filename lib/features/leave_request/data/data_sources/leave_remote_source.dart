import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';

import '../models/request/leave_request.dart';

class LeaveRemoteSource {
  final Dio _dio;

  LeaveRemoteSource(this._dio);

  Future<BaseResponse<LeaveBalanceResponse>> getLeaveBalance() async {
    try {
      final response = await _dio.get('api/ess/leave/balance');

      return BaseResponse.fromJson(
        response.data,
        (json) => LeaveBalanceResponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<LeaveType>>> getLeaveTypes() async {
    try {
      final response = await _dio.get('api/v1/employee/leave-types');

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => LeaveType.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse> submitLeaveRequest({
    required LeaveRequest request,
  }) async {
    try {
      final response = await _dio.post('api/ess/leave', data: request);

      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<LeaveGroup>>> getLeaveHistory() async {
    try {
      final response = await _dio.get('api/ess/leave');

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((i) => LeaveGroup.fromJson(i as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<LeaveDetail>> getLeaveDetail({required int id}) async {
    try {
      final response = await _dio.get('api/ess/leave/$id');

      return BaseResponse.fromJson(
        response.data,
        (json) => LeaveDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
