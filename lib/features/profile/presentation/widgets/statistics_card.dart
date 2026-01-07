import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/statistics_item.dart';
import 'package:intl/intl.dart';

class StatisticsCard extends ConsumerWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String _selectedPeriod = DateFormat('yyyy-MM').format(DateTime.now());
    DateTime displayDate = DateFormat('yyyy-MM').parse(_selectedPeriod);
    String formattedDisplayDate = DateFormat('MMMM yyyy').format(displayDate);

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
                      label: 'Days',
                      description: 'Attendance'),
                  _buildDivider(),
                  StatisticsItem(
                      iconAsset: IAssets.timeOff,
                      value: '${data.dayOff.used}/${data.dayOff.quota}',
                      label: 'Days',
                      description: 'Time Off'),
                  _buildDivider(),
                  StatisticsItem(
                      iconAsset: IAssets.overtimeClock,
                      value: '${data.overtime}',
                      label: 'Hours',
                      description: 'Overtime'),
                ],
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text("Error loading stats")),
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
