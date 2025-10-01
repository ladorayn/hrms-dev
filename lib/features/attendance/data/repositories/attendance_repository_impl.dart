import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_local_source.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_remote_source.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shifts_response_model.dart';
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
}
