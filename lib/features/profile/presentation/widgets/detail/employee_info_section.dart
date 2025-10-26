import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_detail_item.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/section_title.dart';

class EmployeeInfoSection extends StatelessWidget {
  const EmployeeInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle("Employee Information"),
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Position", value: "Product Designer")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Department", value: "Managerial")),
                ],
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(label: "Job Level", value: "Staff"),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                  label: "Primary Direct Report",
                  value:
                      "Demi Wilkinson (Head of Product Designer); Phoenix Baker (COO)"),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                  label: "Additional Direct Report",
                  value: "Glenn Robert (CPO)"),
              SizedBox(height: 16.h),
              ProfileDetailItem(label: "Team", value: null),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: [
                  _buildTeamChip("Team Creative"),
                  _buildTeamChip("Team Marketing"),
                  _buildTeamChip("Team Production"),
                  _buildTeamChip("Team Production"),
                  _buildTeamChip("Team Production"),
                  _buildTeamChip("Team Production"),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Employment Start Date",
                          value: "December 2, 2018")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Employment End Date", value: "-")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Helper for Team Chips
  Widget _buildTeamChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: IColors.light.primary.background,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        label,
        style: ITheme.light.textTheme.labelSmall?.copyWith(
          color: IColors.light.primary.hover,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
