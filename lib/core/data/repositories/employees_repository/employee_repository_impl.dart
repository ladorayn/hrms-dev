import 'package:hrms_mobile/core/data/data_source/employees_remote_source.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';
import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository.dart';

class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeesRemoteSource remoteSource;

  EmployeeRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<PaginatedResponse<Employee>> getEmployees({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) async {
    final response = await remoteSource.getEmployees(
      search: search,
      perPage: perPage,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
    );
    return response.data;
  }

  @override
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
  }) async {
    final response = await remoteSource.getEmployeesFromUrl(
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
    return response.data;
  }
}
