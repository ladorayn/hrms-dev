import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';

void main() {
  group('DateTimeHelper.isSameDay', () {
    test('returns true for same calendar day', () {
      final a = DateTime(2024, 7, 1, 8, 0);
      final b = DateTime(2024, 7, 1, 23, 59);
      expect(DateTimeHelper.isSameDay(a, b), isTrue);
    });

    test('returns false for different days', () {
      final a = DateTime(2024, 7, 1);
      final b = DateTime(2024, 7, 2);
      expect(DateTimeHelper.isSameDay(a, b), isFalse);
    });

    test('returns false for different months or years', () {
      expect(
        DateTimeHelper.isSameDay(DateTime(2024, 7, 1), DateTime(2024, 8, 1)),
        isFalse,
      );
      expect(
        DateTimeHelper.isSameDay(DateTime(2024, 7, 1), DateTime(2025, 7, 1)),
        isFalse,
      );
    });
  });

  group('DateTimeHelper.parseTimeOfDay', () {
    test('parses HH:mm', () {
      expect(
        DateTimeHelper.parseTimeOfDay('09:05'),
        const TimeOfDay(hour: 9, minute: 5),
      );
      expect(
        DateTimeHelper.parseTimeOfDay('18:30:00'),
        const TimeOfDay(hour: 18, minute: 30),
      );
    });

    test('returns null for null or empty', () {
      expect(DateTimeHelper.parseTimeOfDay(null), isNull);
      expect(DateTimeHelper.parseTimeOfDay(''), isNull);
    });

    test('returns null for invalid values', () {
      expect(DateTimeHelper.parseTimeOfDay('25:00'), isNull);
      expect(DateTimeHelper.parseTimeOfDay('12:99'), isNull);
      expect(DateTimeHelper.parseTimeOfDay('noon'), isNull);
      expect(DateTimeHelper.parseTimeOfDay('12'), isNull);
    });
  });
}
