import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {
  static bool isSameDay(DateTime d1, DateTime d2) {
    return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
  }

  static String _localeFor(BuildContext? context) {
    if (context == null) return 'en';
    return Localizations.localeOf(context).toString();
  }

  static String _fallback() => '-';

  /// Converts `"2025-08-5"` into locale-aware date string.
  static String formatDate(String? rawDate, {BuildContext? context}) {
    if (rawDate == null || rawDate.isEmpty) return _fallback();
    final dateTime = DateTime.tryParse(rawDate);
    if (dateTime == null) return rawDate;
    return DateFormat('MMMM d, yyyy', _localeFor(context)).format(dateTime);
  }

  /// Converts `"2025-09-30 20:58:00"` into locale-aware date string.
  static String formatDateTime(String? rawDate, {BuildContext? context}) {
    if (rawDate == null || rawDate.isEmpty) return _fallback();
    final dateTime = DateTime.tryParse(rawDate);
    if (dateTime == null) return rawDate;
    return DateFormat('d MMMM, yyyy', _localeFor(context)).format(dateTime);
  }

  /// Converts ISO datetime into locale-aware date + 24h time.
  static String formatDateAndTime24H(String? rawDate, {BuildContext? context}) {
    if (rawDate == null || rawDate.isEmpty) return _fallback();
    final dateTime = DateTime.tryParse(rawDate);
    if (dateTime == null) return rawDate;
    return DateFormat('MMMM d, yyyy HH:mm', _localeFor(context))
        .format(dateTime);
  }

  static String formatTime(String? rawDate, {BuildContext? context}) {
    if (rawDate == null || rawDate.isEmpty) return _fallback();
    final dateTime = DateTime.tryParse(rawDate);
    if (dateTime == null) return rawDate;
    return DateFormat('hh:mm a', _localeFor(context)).format(dateTime);
  }

  static String formatDateFromISO(String? rawISO, {BuildContext? context}) {
    if (rawISO == null || rawISO.isEmpty) return _fallback();
    final dateTime = DateTime.tryParse(rawISO);
    if (dateTime == null) return rawISO;
    return DateFormat('MMMM d, yyyy', _localeFor(context)).format(dateTime);
  }

  static String formatTimeFromRaw(String rawTime, {BuildContext? context}) {
    try {
      final parts = rawTime.split(':');
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);

      final now = DateTime.now();
      final dateTimeWithTime =
          DateTime(now.year, now.month, now.day, hour, minute);

      return DateFormat('hh:mm a', _localeFor(context))
          .format(dateTimeWithTime);
    } catch (_) {
      return rawTime;
    }
  }

  static String getTimeAgo(String? updatedAt, AppLocalizations l10n) {
    if (updatedAt == null) return l10n.coreUpdatedJustNow;

    try {
      final DateTime updatedDate = DateTime.parse(updatedAt);
      final DateTime now = DateTime.now();
      final Duration diff = now.difference(updatedDate);

      if (diff.isNegative) return l10n.coreUpdatedJustNow;

      if (diff.inDays >= 1) {
        return l10n.coreUpdatedDaysAgo(diff.inDays);
      } else if (diff.inHours >= 1) {
        return l10n.coreUpdatedHoursAgo(diff.inHours);
      } else if (diff.inMinutes >= 1) {
        return l10n.coreUpdatedMinutesAgo(diff.inMinutes);
      } else {
        return l10n.coreUpdatedJustNow;
      }
    } catch (_) {
      return l10n.coreUpdatedJustNow;
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
