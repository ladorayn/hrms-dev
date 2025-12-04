import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart'; // Contains SupervisorAssessmentDetail

class EmployeeInformationSection extends StatelessWidget {
  final SupervisorAssessmentDetail assessmentDetail;

  const EmployeeInformationSection({super.key, required this.assessmentDetail});

  @override
  Widget build(BuildContext context) {
    final employeeName = assessmentDetail.user?.name ?? 'N/A';
    final employeeId = assessmentDetail.user?.id ?? 'N/A';
    final currentPosition = assessmentDetail.currentPosition?.name ?? 'N/A';
    final currentLevel = assessmentDetail.currentLevel?.name ?? 'N/A';
    final targetPosition = assessmentDetail.targetPosition?.name ?? 'N/A';
    final targetLevel = assessmentDetail.targetLevel?.name ?? 'N/A';
    final employeeStartDate = assessmentDetail.employeeStartDate != null
        ? DateTimeHelper.formatDate(assessmentDetail.employeeStartDate!)
        : 'N/A';
    final departmentName = assessmentDetail.currentDepartment?.name ?? 'N/A';

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: "Employee Name",
                      value: '$employeeName ($employeeId)')),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  child:
                      LabelValue(label: "Department", value: departmentName)),
              SizedBox(width: 16.w),
              Expanded(
                  child: LabelValue(
                      label: "Current Job Level", value: currentLevel)),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: "Target Position", value: targetPosition)),
              SizedBox(width: 16.w),
              Expanded(
                  child: LabelValue(
                      label: "Target Job Level", value: targetLevel)),
            ],
          ),
          SizedBox(height: 16.h),
          LabelValue(label: "Employee Start Date", value: employeeStartDate),
        ],
      ),
    );
  }
}
