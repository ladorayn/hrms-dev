import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository.dart';

class EmployeeUsecases {
  final EmployeeRepository repository;

  EmployeeUsecases(this.repository);

  Future<PaginatedResponse<Employee>> getEmployees({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) {
    return repository.getEmployees(
      search: search,
      perPage: perPage,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
    );
  }

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
  }) {
    return repository.getEmployeesFromUrl(
      url: url,
      search: search,
      perPage: perPage,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
