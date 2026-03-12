import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';

class EmployeesRemoteSource {
  final Dio _dio;

  EmployeesRemoteSource(this._dio);

  Future<BaseResponse<PaginatedResponse<Employee>>> getEmployees({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'per_page': perPage,
      };

      if (search != null) {
        queryParameters['search'] = search;
      }

      if (status != null) {
        queryParameters['status'] = status;
      }

      if (startDate != null) {
        queryParameters['startDate'] = startDate;
      }

      if (endDate != null) {
        queryParameters['endDate'] = endDate;
      }

      if (departmentIds != null && departmentIds.isNotEmpty) {
        queryParameters['department_ids'] = departmentIds;
      }

      if (jobLevelIds != null && jobLevelIds.isNotEmpty) {
        queryParameters['job_level_ids'] = jobLevelIds;
      }

      if (jobPositionIds != null && jobPositionIds.isNotEmpty) {
        queryParameters['job_position_ids'] = jobPositionIds;
      }

      final response = await _dio.get(
        'api/v1/employees',
        queryParameters: queryParameters,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) => Employee.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<PaginatedResponse<Employee>>> getEmployeesFromUrl({
    required String url,
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) async {
    final Map<String, dynamic> allQueryParams = {
      'per_page': perPage,
    };

    if (search != null && search.isNotEmpty) {
      allQueryParams['search'] = search;
    }

    if (status != null) {
      allQueryParams['status'] = status;
    }

    if (startDate != null) {
      allQueryParams['startDate'] = startDate;
    }

    if (endDate != null) {
      allQueryParams['endDate'] = endDate;
    }

    if (departmentIds != null && departmentIds.isNotEmpty) {
      allQueryParams['department_ids'] = departmentIds;
    }

    if (jobLevelIds != null && jobLevelIds.isNotEmpty) {
      allQueryParams['job_level_ids'] = jobLevelIds;
    }

    if (jobPositionIds != null && jobPositionIds.isNotEmpty) {
      allQueryParams['job_position_ids'] = jobPositionIds;
    }

    try {
      final Uri uri = Uri.parse(url);
      final String path = uri.path;
      allQueryParams.addAll(uri.queryParameters);
      final response = await _dio.get(
        path,
        queryParameters: allQueryParams,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => PaginatedResponse.fromJson(
          json as Map<String, dynamic>,
          (itemJson) => Employee.fromJson(itemJson as Map<String, dynamic>),
        ),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<UserProfile>> getEmployeeProfile(
      {required int id}) async {
    try {
      // Assuming this endpoint fetches the logged-in user's profile
      final response = await _dio.get('api/v1/user/profile');

      return BaseResponse.fromJson(
        response.data,
        (json) {
          if (json == null) {
            throw DataNotFoundException("Profile data not found.");
          }
          return UserProfile.fromJson(json as Map<String, dynamic>);
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<UserProfile>> updateEmployeeProfile({
    required int id,
    required EmployeeProfileRequest request,
  }) async {
    try {
      final response = await _dio.put(
        'api/v1/user/profile',
        data: request,
      );
      return BaseResponse.fromJson(
        response.data,
        (json) {
          if (json == null) {
            throw DataNotFoundException(
                "Profile update failed: No data returned.");
          }
          return UserProfile.fromJson(json as Map<String, dynamic>);
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
