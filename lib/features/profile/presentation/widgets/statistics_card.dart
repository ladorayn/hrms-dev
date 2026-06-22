import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/statistics_item.dart';
import 'package:intl/intl.dart';

class StatisticsCard extends ConsumerWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).toString();
    String _selectedPeriod = DateFormat('yyyy-MM').format(DateTime.now());
    DateTime displayDate = DateFormat('yyyy-MM').parse(_selectedPeriod);
    String formattedDisplayDate =
        DateFormat('MMMM yyyy', locale).format(displayDate);

    final attendanceStatsState = ref.watch(attendanceStatsProvider(
      period: _selectedPeriod,
    ));

    return Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.focused,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: IColors.light.primary.foreground,
          border: Border.all(color: IColors.light.primary.border, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              formattedDisplayDate,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.sp),
            // Handle loading/error states gracefully
            attendanceStatsState.when(
              data: (data) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatisticsItem(
                      iconAsset: IAssets.attendanceClock,
                      value: data.attended.toString(),
                      label: l10n.profileStatDays,
                      description: l10n.profileStatAttendance),
                  _buildDivider(),
                  StatisticsItem(
                      iconAsset: IAssets.timeOff,
                      value: '${data.dayOff.used}/${data.dayOff.quota}',
                      label: l10n.profileStatDays,
                      description: l10n.profileStatTimeOff),
                  _buildDivider(),
                  StatisticsItem(
                      iconAsset: IAssets.overtimeClock,
                      value: '${data.overtime}',
                      label: l10n.profileStatHours,
                      description: l10n.profileStatOvertime),
                ],
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) =>
                  Center(child: Text(l10n.profileErrorLoadingStats)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 1,
      height: 40.sp,
      color: IColors.light.grayscale.g20,
    );
  }
}
