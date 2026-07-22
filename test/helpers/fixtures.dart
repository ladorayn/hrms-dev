import 'package:hrms_mobile/features/auth/data/models/login/response/login_response.dart';
import 'package:hrms_mobile/features/auth/data/models/user.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';

const testUser = User(
  name: 'Ada Lovelace',
  email: 'ada@example.com',
  isFirstLogin: false,
);

const testLoginResponse = LoginResponse(
  user: testUser,
  token: 'fake-jwt-token',
);

const sampleLeaveRequest = LeaveRequest(
  leaveTypeId: 1,
  startDate: '2024-07-01',
  endDate: '2024-07-02',
  reason: 'Vacation',
);

const sampleBusinessTripRequest = BusinessTripRequest(
  startDate: '2024-08-01',
  endDate: '2024-08-03',
  destination: 'Jakarta',
  reason: 'Client meeting',
);

const sampleOvertimeRequest = OvertimeRequest(
  overtimeDate: '2024-07-01',
  startTime: '18:00',
  endTime: '20:00',
  notes: 'Deadline',
);

const samplePayslipRequest = PayslipRequest(
  password: 'secret',
);
