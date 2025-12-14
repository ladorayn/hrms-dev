import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_schedule.dart';

class OffboardingScheduleWidget extends StatelessWidget {
  final OffboardingSchedule? schedulePayload;

  const OffboardingScheduleWidget({super.key, this.schedulePayload});

  @override
  Widget build(BuildContext context) {
    final schedule = schedulePayload;

    final hasSchedule = schedule != null;

    final scheduleDate = hasSchedule && schedule.date != null
        ? DateTimeHelper.formatDateFromISO(schedule.date!)
        : '-';

    String scheduleTime;
    if (hasSchedule && schedule.startTime != null && schedule.endTime != null) {
      final startTime = DateTimeHelper.formatTimeFromRaw(schedule.startTime!);
      final endTime = DateTimeHelper.formatTimeFromRaw(schedule.endTime!);
      scheduleTime = '$startTime - $endTime';
    } else {
      scheduleTime = '-';
    }

    final scheduleInterviewer = schedule?.interviewer ?? '-';

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Exit Interview Schedule",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: IColors.light.primary.main)),
          SizedBox(height: 12.h),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: LabelValue(label: "Date", value: scheduleDate)),
              SizedBox(width: 16.w),
              Expanded(
                child: LabelValue(
                  label: "Time",
                  value: scheduleTime,
                ),
              )
            ],
          ),
          SizedBox(height: 16.h),

          // Notes
          LabelValue(label: "Interviewer", value: scheduleInterviewer),
        ],
      ),
    );
  }
}
