import 'package:hrms_mobile/core/data/repositories/employees_repository/employee_repository.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/business_trip/domain/repositories/business_trip_repository.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';
import 'package:hrms_mobile/features/leave_request/domain/repositories/leave_repository.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';
import 'package:hrms_mobile/features/overtime_request/domain/repositories/overtime_repository.dart';
import 'package:hrms_mobile/features/payslip/domain/repositories/payslip_repository.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockLeaveRepository extends Mock implements LeaveRepository {}

class MockBusinessTripRepository extends Mock
    implements BusinessTripRepository {}

class MockOvertimeRepository extends Mock implements OvertimeRepository {}

class MockPayslipRepository extends Mock implements PayslipRepository {}

class MockInboxRepository extends Mock implements InboxRepository {}

class MockOffboardingRepository extends Mock implements OffboardingRepository {}

class MockPerformanceRepository extends Mock
    implements PerformanceRepository {}

class MockEmployeeRepository extends Mock implements EmployeeRepository {}

class MockGeneralRepository extends Mock implements GeneralRepository {}

class MockAttendanceRepository extends Mock implements AttendanceRepository {}
