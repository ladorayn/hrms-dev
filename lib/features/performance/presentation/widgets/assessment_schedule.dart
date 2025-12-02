import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class AssessmentScheduleWidget extends StatelessWidget {
  final SupervisorAssessment assessment;

  const AssessmentScheduleWidget({super.key, required this.assessment});

  @override
  Widget build(BuildContext context) {
    final scheduleDate = 'December 31, 2025';
    final scheduleTime = '08:00 AM - 09:00 AM';
    final scheduleNotes = assessment.schedule ?? '-';

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
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
          SizedBox(height: 20.h),

          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.link, color: IColors.light.primary.main),
                  label: Text('Copy Link',
                      style: TextStyle(color: IColors.light.primary.main)),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                    side: BorderSide(color: IColors.light.primary.main),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    /* Handle Join Meeting */
                  },
                  icon: const Icon(Icons.group, color: Colors.white),
                  label: Text('Join Meeting',
                      style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: IColors.light.primary.main,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
