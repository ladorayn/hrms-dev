import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/widgets/label_value.dart';
import 'package:hrms_mobile/core/widgets/section_title.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

class TeamMemberInfoSection extends StatelessWidget {
  final TeamMember member;

  const TeamMemberInfoSection({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(l10n.performanceTeamMemberInformation),
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
                          label: l10n.performanceEmployeeName,
                          value: member.userName ?? l10n.performanceNotAvailable)),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: LabelValue(
                      label: l10n.performancePosition,
                      value: member.jobPositionName ?? l10n.performanceNotAvailable,
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
                          label: l10n.performanceJobLevel,
                          value: member.jobLevelName ?? l10n.performanceNotAvailable)),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(
                          label: l10n.performanceDepartment,
                          value: member.departmentName ?? l10n.performanceNotAvailable)),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: LabelValue(
                          label: l10n.performanceSubmittedOn,
                          value: member.submittedAt != null
                              ? DateTimeHelper.formatDateAndTime24H(
                                  member.submittedAt!,
                                  context: context)
                              : l10n.performanceNotAvailable)),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: LabelValue(
                          label: l10n.performanceValidatedOn,
                          value: member.validatedAt != null
                              ? DateTimeHelper.formatDateAndTime24H(
                                  member.validatedAt!,
                                  context: context)
                              : l10n.performanceNotAvailable)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
