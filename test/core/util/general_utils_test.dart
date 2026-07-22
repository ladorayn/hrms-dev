import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';

void main() {
  group('calculateDuration', () {
    test('returns duration between valid times', () {
      expect(calculateDuration('09:00', '17:30'), '8h 30m');
    });

    test('returns 0h 0m when either value is null', () {
      expect(calculateDuration(null, '17:00'), '0h 0m');
      expect(calculateDuration('09:00', null), '0h 0m');
    });

    test('returns 0h 0m when either value is dash', () {
      expect(calculateDuration('-', '17:00'), '0h 0m');
      expect(calculateDuration('09:00', '-'), '0h 0m');
    });

    test('returns 0h 0m for invalid format', () {
      expect(calculateDuration('invalid', '17:00'), '0h 0m');
    });
  });

  group('calculateDurationWithTotal', () {
    test('returns 0h 0m for zero minutes', () {
      expect(calculateDurationWithTotal(0), '0h 0m');
    });

    test('formats hours and minutes', () {
      expect(calculateDurationWithTotal(90), '1h 30m');
      expect(calculateDurationWithTotal(45), '0h 45m');
      expect(calculateDurationWithTotal(120), '2h 0m');
    });
  });

  group('formatDateForAPI', () {
    test('formats date as yyyy-MM-dd', () {
      expect(formatDateForAPI(DateTime(2024, 7, 1)), '2024-07-01');
    });

    test('returns empty string for null', () {
      expect(formatDateForAPI(null), '');
    });
  });

  group('formatTimeForAPI', () {
    test('formats TimeOfDay as HH:mm', () {
      expect(
        formatTimeForAPI(const TimeOfDay(hour: 9, minute: 5)),
        '09:05',
      );
      expect(
        formatTimeForAPI(const TimeOfDay(hour: 18, minute: 30)),
        '18:30',
      );
    });

    test('returns null for null TimeOfDay', () {
      expect(formatTimeForAPI(null), isNull);
    });
  });
}
