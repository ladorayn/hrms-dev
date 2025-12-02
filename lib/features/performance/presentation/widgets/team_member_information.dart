import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/core/widgets/section_title.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

class TeamMemberInfoSection extends StatelessWidget {
  final TeamMember member;

  const TeamMemberInfoSection({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final valueColor = Colors.black;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle("Team Member Information"),
          SizedBox(
            height: 4.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: LabelValue(
                          label: "Employee Name",
                          value: member.userName ?? 'N/A')),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: LabelValue(
                      label: "Position",
                      value: member.jobPositionName ?? 'N/A',
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
                          label: "Job Level",
                          value: member.jobLevelName ?? 'N/A')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(
                          label: "Department",
                          value: member.departmentName ?? 'N/A')),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: LabelValue(
                          label: "Submitted on",
                          value: member.submittedAt != null
                              ? DateTimeHelper.formatDateAndTime24H(
                                  member.submittedAt!)
                              : 'N/A')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(
                          label: "Validated on",
                          value: member.validatedAt != null
                              ? DateTimeHelper.formatDateAndTime24H(
                                  member.validatedAt!)
                              : 'N/A')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
