import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/update_attendance/update_attendance_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/validate_location/validate_location_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/overtime/overtime_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shift/working_shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/statistics/attendance_statistics_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/statistics/overtime_statistics_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/validate_location/validate_location_response_model.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';

abstract class AttendanceRepository {
  Future<AttendanceData> clockIn(ClockInRequestModel request);

  Future<AttendanceData> clockOut(
      int attendanceId, ClockOutRequestModel request);

  Future<List<AttendanceModel>> getHistory();

  Future<List<ShiftModel>> getShift();

  Future<WorkingShiftResponseModel> getTodayShift(
      {String? userId, String? date});

  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogs();

  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogsByUrl(
      String url);

  Future<AttendanceDetail> getDetailAttendance(String attendanceId);

  Future<PaginatedResponse<AttendanceDetail>> getAttendanceHistory({
    int page,
    int perPage,
    String? period,
    String? status,
    String? date,
  });

  Future<PaginatedResponse<AttendanceDetail>> getAttendanceHistoryByUrl(
      String url);

  Future<AttendanceStatistics> getAttendanceStats({String? period});

  Future<AttendanceDetail> updateAttendance(
      {required String attendanceId, UpdateAttendanceRequestModel? request});

  Future<PaginatedResponse<OvertimeDetail>> getOvertimeHistory({
    int page,
    int perPage,
    String? period,
    String? status,
  });

  Future<PaginatedResponse<OvertimeDetail>> getOvertimeHistoryByUrl(String url);

  Future<OvertimeStatistics> getOvertimeStats({String? period});

  Future<ValidateLocationResponseModel> validateLocation(
    ValidateLocationRequestModel request,
  );
}
