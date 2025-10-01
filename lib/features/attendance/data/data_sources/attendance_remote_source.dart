import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shifts_response_model.dart';

class AttendanceRemoteSource {
  final Dio _dio;
  AttendanceRemoteSource(this._dio);

  Future<BaseResponse<AttendanceData>> clockIn(
      ClockInRequestModel request) async {
    try {
      final response = await _dio.post(
        'api/ess/attendance/clock-in',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => AttendanceData.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<AttendanceData>> clockOut(
    int attendanceId,
    ClockOutRequestModel request,
  ) async {
    try {
      final response = await _dio.post(
        'api/ess/attendance/$attendanceId/clock-out',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => AttendanceData.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<List<ShiftModel>>> getShifts() async {
    try {
      final response = await _dio.get('api/v1/setting/shift');

      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) => ShiftModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogs(
      {int limit = 10, int page = 1}) async {
    try {
      final response = await _dio.get(
        'api/ess/activity-logs',
        queryParameters: {'limit': limit, 'page': page},
      );

      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => ActivityLogModel.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogsByUrl(
      String url) async {
    try {
      final response = await _dio.get(url);
      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => ActivityLogModel.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<AttendanceDetail>> getDetailAttendance(
      String attendanceId) async {
    try {
      final response = await _dio.get('api/ess/attendance/$attendanceId');
      return BaseResponse.fromJson(
        response.data,
        (json) => AttendanceDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
