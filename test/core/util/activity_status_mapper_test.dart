import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/util/activity_status_mapper.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';

void main() {
  group('mapIntToAttendanceStatus', () {
    test('0 → waitingApproval', () {
      expect(
        mapIntToAttendanceStatus(0),
        AttendanceStatus.waitingApproval,
      );
    });

    test('2 → approved', () {
      expect(mapIntToAttendanceStatus(2), AttendanceStatus.approved);
    });

    test('3 → rejected', () {
      expect(mapIntToAttendanceStatus(3), AttendanceStatus.rejected);
    });

    test('null → waitingApproval', () {
      expect(
        mapIntToAttendanceStatus(null),
        AttendanceStatus.waitingApproval,
      );
    });

    test('unknown int → waitingApproval', () {
      expect(
        mapIntToAttendanceStatus(99),
        AttendanceStatus.waitingApproval,
      );
    });
  });
}
