import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:intl/intl.dart';

class AttendanceCard extends StatelessWidget {
  final AttendanceDetail item;

  const AttendanceCard({super.key, required this.item});

  String _formatDate(BuildContext context, String dateStr) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).toString();
    final date = DateTime.parse(dateStr);
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      final formatDate = DateFormat('MMMM d, y', locale).format(date);
      return l10n.attendanceTodayWithDate(formatDate);
    }
    return DateFormat('E, MMMM d, y', locale).format(date);
  }

  String _formatTime(BuildContext context, String? timeStr) {
    if (timeStr == null) return AppLocalizations.of(context)!.coreNotAvailable;
    try {
      final locale = Localizations.localeOf(context).toString();
      final time = DateFormat('HH:mm').parse(timeStr);
      return DateFormat('hh:mm a', locale).format(time);
    } catch (e) {
      return timeStr;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: IColors.light.grayscale.g10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _formatDate(context, item.attendanceDate),
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTimeColumn(context, l10n.attendanceClockInLabel,
                  _formatTime(context, item.clock.inAt)),
              _buildDurationDisplay(
                  context,
                  item.clock.duration != null
                      ? item.clock.duration.toString()
                      : '0h 0m'),
              IntrinsicHeight(
                child: Row(
                  children: [
                    _buildTimeColumn(
                        context,
                        l10n.attendanceClockOutLabel,
                        _formatTime(context, item.clock.outAt),
                        color: Colors.orange),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: IColors.light.grayscale.g20,
                    ),
                    _buildTimeColumn(
                        context,
                        l10n.attendanceOvertime,
                        item.clock.overtimeDurationFormatted ?? "0h 0m",
                        isEnd: true),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(color: IColors.light.grayscale.g10),
          _buildLocation(context, l10n),
          const SizedBox(height: 16),
          _buildNotes(context, l10n),
        ],
      ),
    );
  }

  Widget _buildTimeColumn(BuildContext context, String label, String value,
      {Color? color, bool isEnd = false}) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 4.sp),
        Text(value,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  Widget _buildDurationDisplay(BuildContext context, String duration) {
    return Column(
      children: [
        SizedBox(height: 20.sp),
        Row(
          children: [
            Container(
                height: 1, width: 20.sp, color: IColors.light.grayscale.g20),
            SizedBox(width: 4.sp),
            Text(duration, style: Theme.of(context).textTheme.bodySmall),
            SizedBox(width: 4.sp),
            Container(
                height: 1, width: 20.sp, color: IColors.light.grayscale.g20),
          ],
        ),
      ],
    );
  }

  Widget _buildLocation(BuildContext context, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceLocation,
            style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: IColors.light.primary.border,
          ),
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: IColors.light.primary.background,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    IAssets.pinLocation,
                    width: 10,
                    height: 18,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                    child: Text(
                  item.metadata.locationName ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: IColors.light.primary.main,
                      ),
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNotes(BuildContext context, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceNotes,
            style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(
          item.notes ?? l10n.coreNotAvailable,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
