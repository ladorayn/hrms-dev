import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart'; // Contains SupervisorAssessmentDetail

class AssessmentScheduleWidget extends StatelessWidget {
  final SupervisorAssessmentDetail assessmentDetail;

  const AssessmentScheduleWidget({super.key, required this.assessmentDetail});

  @override
  Widget build(BuildContext context) {
    final schedule = assessmentDetail.schedule;

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

    final scheduleNotes = schedule?.notes ?? '-';

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Assessment Schedule",
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
          LabelValue(label: "Notes", value: scheduleNotes),

          /// it commented out, it might be needed in the future
          // SizedBox(height: 16.h),

          // Text("Participants",
          //     style: Theme.of(context).textTheme.titleSmall?.copyWith(
          //         fontWeight: FontWeight.bold,
          //         color: IColors.light.primary.main)),
          // SizedBox(height: 8.h),
          // if (schedule?.participants != null &&
          //     schedule!.participants!.isNotEmpty)
          //   ...schedule.participants!
          //       .map((p) => Padding(
          //             padding: EdgeInsets.only(bottom: 4.h),
          //             child: Text(
          //               '• ${p.name ?? 'Unknown'} (${p.employeeCode ?? 'N/A'})',
          //               style: Theme.of(context).textTheme.bodyMedium,
          //             ),
          //           ))
          //       .toList()
          // else
          //   Text('No participants scheduled.',
          //       style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
