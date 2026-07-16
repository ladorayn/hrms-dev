import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/constants/mock_values.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
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
import 'package:hrms_mobile/features/attendance/data/models/request/branch/branch_list_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/branch/branch_list_response_model.dart';

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

  Future<BaseResponse<WorkingShiftResponseModel>> getTodayShifts(
      {String? userId, String? date}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'date': date,
        'user_id': userId
      };

      final response = await _dio.get('api/v1/setting/shift/shift-date',
          queryParameters: queryParameters);

      return BaseResponse.fromJson(
        response.data,
        (json) =>
            WorkingShiftResponseModel.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BasePaginatedResponse<ActivityLogModel>> getActivityLogs(
      {int limit = 10, int page = 1}) async {
    // --- START OF MOCK (Comment out this section to bypass mock) ---
    // final todayStr = DateTime.now().toIso8601String().split('T').first;
    // if (page > 1) {
    //   return BasePaginatedResponse(
    //     data: [],
    //     links: const LinksModel(first: null, last: null, prev: null, next: null),
    //     meta: MetaModel(
    //       currentPage: page,
    //       lastPage: 1,
    //       perPage: limit,
    //       total: 2,
    //       from: null,
    //       to: null,
    //       path: 'mock',
    //     ),
    //   );
    // }

    // final mockData = {
    //   "status": "success",
    //   "code": 200,
    //   "message": "Logs retrieved successfully",
    //   "data": [
    //     {
    //       "id": 354,
    //       "event": "clock_out",
    //       "description": "User clocked out at $todayStr 17:30:00",
    //       "created_at": "${todayStr}T17:30:00.000000Z",
    //       "updated_at": "${todayStr}T17:30:00.000000Z",
    //       "time_ago": "today",
    //       "event_type": "Clock Out",
    //       "is_clock_in": false,
    //       "is_clock_out": true,
    //       "properties": {
    //         "attendance_id": 6791,
    //         "attendance_status": 1,
    //         "attendance_status_label": "Approved",
    //         "clock_out_at": "$todayStr 17:30:00",
    //         "clock_out_status": 1,
    //         "clock_out_status_label": "On Time",
    //         "scheduled_clock_out": "17:00:00",
    //         "tolerance_minutes": 700
    //       },
    //       "causer": {
    //         "id": 18,
    //         "name": "Lado",
    //         "email": "ladorayhannajib@gmail.com"
    //       }
    //     },
    //     {
    //       "id": 353,
    //       "event": "clock_in",
    //       "description": "User clocked in at $todayStr 08:30:00",
    //       "created_at": "${todayStr}T08:30:00.000000Z",
    //       "updated_at": "${todayStr}T08:30:00.000000Z",
    //       "time_ago": "today",
    //       "event_type": "Clock In",
    //       "is_clock_in": true,
    //       "is_clock_out": false,
    //       "properties": {
    //         "attendance_id": 6791,
    //         "attendance_status": 1,
    //         "attendance_status_label": "Approved",
    //         "clock_in_at": "$todayStr 08:30:00",
    //         "clock_in_status": 1,
    //         "clock_in_status_label": "On Time",
    //         "scheduled_clock_in": "08:00:00",
    //         "tolerance_minutes": 700
    //       },
    //       "causer": {
    //         "id": 18,
    //         "name": "Lado",
    //         "email": "ladorayhannajib@gmail.com"
    //       }
    //     }
    //   ],
    //   "links": {
    //     "first": null,
    //     "last": null,
    //     "prev": null,
    //     "next": null
    //   },
    //   "meta": {
    //     "current_page": 1,
    //     "last_page": 1,
    //     "per_page": limit,
    //     "total": 2,
    //     "from": 1,
    //     "to": 2,
    //     "path": "mock"
    //   }
    // };

    // return BasePaginatedResponse.fromJson(
    //   mockData,
    //   (json) => ActivityLogModel.fromJson(json as Map<String, dynamic>),
    //   emptyT: () => List.empty(),
    // );
    // --- END OF MOCK ---

    try {
      final response = await _dio.get(
        'api/ess/activity-logs',
        queryParameters: {'limit': limit, 'page': page},
      );
    
      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => ActivityLogModel.fromJson(json as Map<String, dynamic>),
        emptyT: () => List.empty(),
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
        emptyT: () => List.empty(),
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

  Future<BaseResponse<PaginatedResponse<AttendanceDetail>>>
      getAttendanceHistory(
          {int page = 1,
          int perPage = 10,
          String? period,
          String? status,
          String? date}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'page': page,
        'per_page': perPage,
      };

      if (period != null) {
        queryParameters['period'] = period;
      }

      if (status != null) {
        queryParameters['status'] = status;
      }

      if (date != null) {
        queryParameters['date'] = date;
      }

      final response = await _dio.get(
        'api/ess/attendance/history',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) =>
              AttendanceDetail.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<PaginatedResponse<AttendanceDetail>>>
      getAttendanceHistoryByUrl(String url) async {
    try {
      final response = await _dio.get(url);

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) =>
              AttendanceDetail.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<AttendanceStatistics>> getAttendanceStats(
      {String? period}) async {
    try {
      final Map<String, dynamic> queryParameters = {};

      if (period != null) {
        queryParameters['period'] = period;
      }

      final response = await _dio.get(
        'api/ess/attendance/summary',
        queryParameters: queryParameters,
      );
      return BaseResponse.fromJson(
        response.data,
        (json) => AttendanceStatistics.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<AttendanceDetail>> updateAttendance(
      {required String attendanceId,
      UpdateAttendanceRequestModel? request}) async {
    try {
      final response = await _dio.put(
        'api/ess/attendance/$attendanceId',
        data: request,
      );
      return BaseResponse.fromJson(
        response.data,
        (json) => AttendanceDetail.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<PaginatedResponse<OvertimeDetail>>> getOvertimeHistory({
    int page = 1,
    int perPage = 10,
    String? period,
    String? status,
  }) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'page': page,
        'per_page': perPage,
      };

      if (period != null) {
        queryParameters['period'] = period;
      }

      if (status != null) {
        queryParameters['status'] = status;
      }

      final response = await _dio.get(
        'api/ess/overtime/history',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) =>
              OvertimeDetail.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<PaginatedResponse<OvertimeDetail>>>
      getOvertimeHistoryByUrl(String url) async {
    try {
      final response = await _dio.get(url);

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) =>
              OvertimeDetail.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<OvertimeStatistics>> getOvertimeStats(
      {String? period}) async {
    try {
      final Map<String, dynamic> queryParameters = {};

      if (period != null) {
        queryParameters['period'] = period;
      }

      final response = await _dio.get(
        'api/ess/overtime/summary',
        queryParameters: queryParameters,
      );
      return BaseResponse.fromJson(
        response.data,
        (json) => OvertimeStatistics.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<ValidateLocationResponseModel>> validateLocation(
    ValidateLocationRequestModel request,
  ) async {
    try {
      final response = await _dio.post(
        'api/ess/validate-location',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => ValidateLocationResponseModel.fromJson(
            json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BranchListResponseModel> getBranches(
      BranchListRequestModel request) async {
    try {
      final response = await _dio.get(
        'api/v1/setting/branch',
        queryParameters: request.toJson(),
      );

      return BranchListResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BranchListResponseModel> getBranchesByUrl(String url) async {
    try {
      final response = await _dio.get(url);
      return BranchListResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
