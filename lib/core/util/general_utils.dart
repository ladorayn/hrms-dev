import 'package:intl/intl.dart';

String calculateDuration(String? clockIn, String? clockOut) {
  if (clockIn == null ||
      clockOut == null ||
      clockIn == '-' ||
      clockOut == '-') {
    return "0h 0m";
  }

  try {
    final inTime = DateFormat("HH:mm").parse(clockIn);
    final outTime = DateFormat("HH:mm").parse(clockOut);
    final diff = outTime.difference(inTime);

    final hours = diff.inHours;
    final minutes = diff.inMinutes % 60;
    return "${hours}h ${minutes}m";
  } catch (_) {
    return "0h 0m";
  }
}
