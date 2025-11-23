import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';

abstract class EmployeeRepository {
  Future<PaginatedResponse<Employee>> getEmployees({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  });

  Future<PaginatedResponse<Employee>> getEmployeesFromUrl({
    required String url,
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  });

  Future<UserProfile> getEmployeeProfile({required int id});

  Future<UserProfile> updateEmployeeProfile({
    required int id,
    required EmployeeProfileRequest request,
  });
}
