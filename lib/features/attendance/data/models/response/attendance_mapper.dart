import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart'
    as data;
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart'
    as detail;

extension AttendanceMapper on detail.AttendanceDetail {
  data.AttendanceData toData() {
    return data.AttendanceData(
      id: id,
      attendanceDate: attendanceDate,
      clock: data.Clock(
        inAt: clock.inAt,
        outAt: clock.outAt,
        duration: clock.duration,
      ),
      duration: duration,
      location: data.Location(
        latitude: location.latitude,
        longitude: location.longitude,
      ),
      status: status,
      clockInStatus: clockInStatus,
      clockOutStatus: clockOutStatus,
      statusLabel: statusLabel,
      clockInStatusLabel: clockInStatusLabel,
      clockOutStatusLabel: clockOutStatusLabel,
      notes: notes,
      approvedAt: approvedAt,
      rejectedReason: rejectedReason,
      remarks: remarks,
      metadata: data.Metadata(
        createdVia: metadata.createdVia,
        createdAt: DateTime.parse(metadata.createdAt),
        shiftId: metadata.shiftId,
        workScheduleId: metadata.workScheduleId,
      ),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
