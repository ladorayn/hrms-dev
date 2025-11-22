import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/core/widgets/section_title.dart';

class TeamMemberInfoSection extends StatelessWidget {
  const TeamMemberInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final valueColor = Colors.black;

    // String formattedDate = '-';
    // if (profile.dateOfBirth != null) {
    //   try {
    //     formattedDate = DateTimeHelper.formatDate(profile.dateOfBirth!);
    //   } catch (e) {
    //     formattedDate = profile.dateOfBirth!;
    //   }
    // }

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
                          label: "Employee Name", value: "Olivia Rhye")),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: LabelValue(
                      label: "Position",
                      value: "Senior Product Designer",
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
                          label: "Job Level", value: "Senior Staff")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(label: "Department", value: "Product")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: LabelValue(
                          label: "Submitted on",
                          value: "November 4, 2025 14:00")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(
                          label: "Validated on",
                          value: "November 4, 2025 14:00")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
