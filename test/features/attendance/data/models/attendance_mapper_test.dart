import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance_mapper.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';

void main() {
  group('AttendanceMapper.toData', () {
    test('maps detail fields to AttendanceData', () {
      const detail = AttendanceDetail(
        id: 1,
        attendanceDate: '2024-07-01',
        clock: Clock(
          inAt: '09:00',
          outAt: '18:00',
          duration: '9h',
          overtimeDuration: 30,
          overtimeDurationFormatted: '0h 30m',
        ),
        duration: '9h',
        location: Location(latitude: '-6.2', longitude: '106.8'),
        status: 2,
        clockInStatus: 1,
        clockOutStatus: 1,
        statusLabel: 'Approved',
        clockInStatusLabel: 'On Time',
        clockOutStatusLabel: 'On Time',
        notes: 'Office',
        approvedAt: '2024-07-01T10:00:00Z',
        rejectedReason: null,
        remarks: 'ok',
        metadata: Metadata(
          createdVia: 'mobile',
          createdAt: '2024-07-01T09:00:00Z',
          generatedVia: 'app',
          shiftId: 3,
          shiftName: 'Regular',
          dayOfWeek: 1,
          toleranceMinutes: 15,
          workScheduleId: 4,
          locationName: 'HQ',
          coordinates: Coordinates(latitude: -6.2, longitude: 106.8),
        ),
        createdAt: '2024-07-01T09:00:00Z',
        updatedAt: '2024-07-01T18:00:00Z',
      );

      final data = detail.toData();

      expect(data.id, 1);
      expect(data.attendanceDate, '2024-07-01');
      expect(data.clock?.inAt, '09:00');
      expect(data.clock?.outAt, '18:00');
      expect(data.location?.latitude, '-6.2');
      expect(data.status, 2);
      expect(data.metadata?.shiftName, 'Regular');
      expect(data.metadata?.coordinates?.latitude, -6.2);
      expect(data.metadata?.coordinates?.longitude, 106.8);
    });

    test('null coordinates → 0.0', () {
      const detail = AttendanceDetail(
        id: 2,
        attendanceDate: '2024-07-02',
        clock: Clock(inAt: '09:00', outAt: '17:00'),
        location: Location(latitude: null, longitude: null),
        status: 0,
        statusLabel: 'Waiting',
        metadata: Metadata(coordinates: null),
        createdAt: '2024-07-02T09:00:00Z',
        updatedAt: '2024-07-02T09:00:00Z',
      );

      final data = detail.toData();

      expect(data.metadata?.coordinates?.latitude, 0.0);
      expect(data.metadata?.coordinates?.longitude, 0.0);
    });
  });
}
