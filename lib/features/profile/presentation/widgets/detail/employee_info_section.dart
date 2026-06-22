import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_detail_item.dart';

class EmployeeInfoSection extends StatelessWidget {
  final UserProfile profile;

  const EmployeeInfoSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final employment = profile.user?.employment;

    final primaryReportNames = profile
            .user?.employeeProfile?.reportingRelationships
            ?.where((r) => r.relationshipType == 'primary')
            .map((r) => r.name ?? l10n.profileUnknown)
            .toList() ??
        [];
    final primaryReportValue =
        primaryReportNames.isEmpty ? '-' : primaryReportNames.join('; ');

    final additionalReportNames = profile
            .user?.employeeProfile?.reportingRelationships
            ?.where((r) => r.relationshipType != 'primary')
            .map((r) => r.name ?? l10n.profileUnknown)
            .toList() ??
        [];
    final additionalReportValue =
        additionalReportNames.isEmpty ? '-' : additionalReportNames.join('; ');

    final teams = profile.user?.employeeProfile?.teamMembers ?? [];

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: l10n.profilePosition,
                          value: employment?.jobPosition?.name ?? '-')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: l10n.profileDepartment,
                          value: employment?.department?.name ?? '-')),
                ],
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                  label: l10n.profileJobLevel, value: employment?.jobLevel?.name ?? '-'),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                label: l10n.profilePrimaryDirectReport,
                value: primaryReportValue,
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                label: l10n.profileAdditionalDirectReport,
                value: additionalReportValue,
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                label: l10n.profileTeam,
                value: teams.isEmpty ? l10n.profileNoTeamAssigned : null,
              ),
              if (teams.isNotEmpty)
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children: [
                    ...teams.map((team) => _buildTeamChip(team.name ?? '-')),
                  ],
                ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: l10n.profileEmploymentStartDate,
                          value: DateTimeHelper.formatDate(
                              employment?.startDate ?? '-'))),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: l10n.profileEmploymentEndDate,
                          value: DateTimeHelper.formatDate(
                              employment?.endDate ?? '-'))),
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
