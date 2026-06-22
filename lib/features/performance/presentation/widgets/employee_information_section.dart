import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class EmployeeInformationSection extends StatelessWidget {
  final SupervisorAssessmentDetail assessmentDetail;

  const EmployeeInformationSection({super.key, required this.assessmentDetail});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final employeeName =
        assessmentDetail.user?.name ?? l10n.performanceNotAvailable;
    final employeeId =
        assessmentDetail.user?.id ?? l10n.performanceNotAvailable;
    final currentPosition =
        assessmentDetail.currentPosition?.name ?? l10n.performanceNotAvailable;
    final currentLevel =
        assessmentDetail.currentLevel?.name ?? l10n.performanceNotAvailable;
    final targetPosition =
        assessmentDetail.targetPosition?.name ?? l10n.performanceNotAvailable;
    final targetLevel =
        assessmentDetail.targetLevel?.name ?? l10n.performanceNotAvailable;
    final employeeStartDate = assessmentDetail.employeeStartDate != null
        ? DateTimeHelper.formatDate(assessmentDetail.employeeStartDate!,
            context: context)
        : l10n.performanceNotAvailable;
    final departmentName = assessmentDetail.currentDepartment?.name ??
        l10n.performanceNotAvailable;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.performanceEmployeeInformation,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: IColors.light.primary.main)),
          SizedBox(height: 12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: l10n.performanceEmployeeName,
                      value: '$employeeName ($employeeId)')),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LabelValue(
                  label: l10n.performanceCurrentPosition,
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
                      label: l10n.performanceDepartment, value: departmentName)),
              SizedBox(width: 16.w),
              Expanded(
                  child: LabelValue(
                      label: l10n.performanceCurrentJobLevel,
                      value: currentLevel)),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: LabelValue(
                      label: l10n.performanceTargetPosition,
                      value: targetPosition)),
              SizedBox(width: 16.w),
              Expanded(
                  child: LabelValue(
                      label: l10n.performanceTargetJobLevel,
                      value: targetLevel)),
            ],
          ),
          SizedBox(height: 16.h),
          LabelValue(
              label: l10n.performanceEmployeeStartDate,
              value: employeeStartDate),
        ],
      ),
    );
  }
}
