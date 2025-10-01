import 'package:intl/intl.dart';

class DateTimeHelper {
  static bool isSameDay(DateTime d1, DateTime d2) {
    return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
  }

  /// Converts `"2025-09-30 20:58:00"` into `"5 August, 2025"`
  static String formatDate(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("d MMMM, yyyy").format(dateTime);
  }

  static String formatTime(String rawDate) {
    final dateTime = DateTime.parse(rawDate);
    return DateFormat("hh:mm a").format(dateTime);
  }
}
