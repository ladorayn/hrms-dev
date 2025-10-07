import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_local_source.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_remote_source.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/update_attendance/update_attendance_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/overtime/overtime_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/working_shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/statistics/attendance_statistics_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/statistics/overtime_statistics_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceLocalSource localSource;
  final AttendanceRemoteSource remoteSource;

  AttendanceRepositoryImpl({
    required this.localSource,
    required this.remoteSource,
  });

  @override
  Future<AttendanceData> clockIn(ClockInRequestModel request) async {
    final response = await remoteSource.clockIn(request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<AttendanceData> clockOut(
      int attendanceId, ClockOutRequestModel request) async {
    final response = await remoteSource.clockOut(attendanceId, request);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<AttendanceModel>> getHistory() {
    return localSource.getAttendance();
  }

  @override
  Future<List<ShiftModel>> getShift() async {
    final response = await remoteSource.getShifts();
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<WorkingShiftResponseModel> getTodayShift({String? data}) async {
    final response = await remoteSource.getTodayShifts(date: data);
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogs(
      {int limit = 10, int page = 1}) {
    return remoteSource.getActivityLogs(limit: limit, page: page);
  }

  @override
  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogsByUrl(
      String url) {
    return remoteSource.getActivityLogsByUrl(url);
  }

  @override
  Future<AttendanceDetail> getDetailAttendance(String attendanceId) async {
    final response = await remoteSource.getDetailAttendance(attendanceId);
    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<PaginatedResponse<AttendanceDetail>> getAttendanceHistory({
    int page = 1,
    int perPage = 10,
    String? period,
    String? status,
  }) async {
    final response = await remoteSource.getAttendanceHistory(
      page: page,
      perPage: perPage,
      period: period,
      status: status,
    );
    return response.data;
  }

  @override
  Future<PaginatedResponse<AttendanceDetail>> getAttendanceHistoryByUrl(
      String url) async {
    final response = await remoteSource.getAttendanceHistoryByUrl(url);
    return response.data;
  }

  @override
  Future<AttendanceStatistics> getAttendanceStats({String? period}) async {
    final response = await remoteSource.getAttendanceStats(period: period);
    return response.data;
  }

  @override
  Future<AttendanceDetail> updateAttendance(
      {required String attendanceId,
      UpdateAttendanceRequestModel? request}) async {
    final response = await remoteSource.updateAttendance(
        attendanceId: attendanceId, request: request);
    return response.data;
  }

  @override
  Future<PaginatedResponse<OvertimeDetail>> getOvertimeHistory({
    int page = 1,
    int perPage = 10,
    String? period,
    String? status,
  }) async {
    final response = await remoteSource.getOvertimeHistory(
      page: page,
      perPage: perPage,
      period: period,
      status: status,
    );
    return response.data;
  }

  @override
  Future<PaginatedResponse<OvertimeDetail>> getOvertimeHistoryByUrl(
      String url) async {
    final response = await remoteSource.getOvertimeHistoryByUrl(url);
    return response.data;
  }

  @override
  Future<OvertimeStatistics> getOvertimeStats({String? period}) async {
    final response = await remoteSource.getOvertimeStats(period: period);
    return response.data;
  }
}
