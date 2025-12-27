import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {
  static bool isSameDay(DateTime d1, DateTime d2) {
    return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
  }

  /// Converts `"2025-08-5"` into `"August 5, 2025"`
  static String formatDate(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("MMMM d, yyyy").format(dateTime);
  }

  /// Converts `"2025-09-30 20:58:00"` into `"30 September, 2025"`
  static String formatDateTime(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("d MMMM, yyyy").format(dateTime);
  }

  /// Converts "2025-12-01T14:27:34.000000Z" into "December 1, 2025 14:27"
  static String formatDateAndTime24H(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("MMMM d, yyyy HH:mm").format(dateTime);
  }

  // Converts "2025-12-01T14:27:34.000000Z" into "02:27 PM"
  static String formatTime(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("hh:mm a").format(dateTime);
  }

  // --- NEW Helper Methods for Assessment Schedule ---

  /// Converts "2025-12-02T00:00:00.000000Z" into "December 2, 2025"
  static String formatDateFromISO(String rawISO) {
    final dateTime = DateTime.parse(rawISO);
    return DateFormat("MMMM d, yyyy").format(dateTime);
  }

  /// Converts a raw time string like "10:30:00" into "10:30 AM"
  static String formatTimeFromRaw(String rawTime) {
    try {
      final parts = rawTime.split(':');
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);

      final now = DateTime.now();
      final dateTimeWithTime =
          DateTime(now.year, now.month, now.day, hour, minute);

      return DateFormat("hh:mm a").format(dateTimeWithTime);
    } catch (_) {
      return rawTime;
    }
  }

  static String getTimeAgo(String? updatedAt) {
    if (updatedAt == null) return "Updated just now";

    try {
      final DateTime updatedDate = DateTime.parse(updatedAt);
      final DateTime now = DateTime.now();
      final Duration diff = now.difference(updatedDate);

      if (diff.isNegative) return "updated just now";

      if (diff.inDays >= 1) {
        return "updated ${diff.inDays}d ago";
      } else if (diff.inHours >= 1) {
        return "updated ${diff.inHours}h ago";
      } else if (diff.inMinutes >= 1) {
        return "updated ${diff.inMinutes}m ago";
      } else {
        return "updated just now";
      }
    } catch (e) {
      return "updated just now";
    }
  }

  static TimeOfDay? parseTimeOfDay(String? time) {
    if (time == null || time.isEmpty) return null;

    try {
      final parts = time.split(':');
      if (parts.length < 2) return null;

      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);

      if (hour < 0 || hour > 23 || minute < 0 || minute > 59) return null;

      return TimeOfDay(hour: hour, minute: minute);
    } catch (_) {
      return null;
    }
  }
}
