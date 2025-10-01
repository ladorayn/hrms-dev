import 'package:hrms_mobile/core/widgets/status_chip.dart';

AttendanceStatus mapIntToAttendanceStatus(int? status) {
  switch (status) {
    case 0:
      return AttendanceStatus.waitingApproval;
    case 2:
      return AttendanceStatus.approved;
    case 3:
      return AttendanceStatus.rejected;
    default:
      return AttendanceStatus.waitingApproval;
  }
}
