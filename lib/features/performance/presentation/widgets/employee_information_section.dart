import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class EmployeeInformationSection extends StatelessWidget {
  final SupervisorAssessment assessment;

  const EmployeeInformationSection({super.key, required this.assessment});

  @override
  Widget build(BuildContext context) {
    final employeeName = assessment.user?.name ?? 'N/A';
    final currentPosition = assessment.currentPosition?.name ?? 'N/A';
    final currentLevel = assessment.currentLevel?.name ?? 'N/A';
    final targetPosition = assessment.targetPosition?.name ?? 'N/A';
    final targetLevel = assessment.targetLevel?.name ?? 'N/A';

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Employee Information",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: IColors.light.primary.main)),
          SizedBox(height: 12.h),

          // Row 1: Employee Name & Current Position
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child:
                      LabelValue(label: "Employee Name", value: employeeName)),
              SizedBox(width: 16.w),
              Expanded(
                child: LabelValue(
                  label: "Current Position",
                  value: currentPosition,
                ),
              )
            ],
          ),
          SizedBox(height: 16.h),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: "Current Job Level", value: currentLevel)),
              SizedBox(width: 16.w),
              Expanded(
                  child: LabelValue(
                      label: "Target Position", value: targetPosition)),
            ],
          ),
          SizedBox(height: 16.h),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: "Target Job Level", value: targetLevel)),
              SizedBox(width: 16.w),
              Expanded(child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
