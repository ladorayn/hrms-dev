import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

class ManagerAssessmentLandingScreen extends ConsumerWidget {
  final AssessmentList assessment;

  const ManagerAssessmentLandingScreen({
    super.key,
    required this.assessment,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamMembers = assessment.teamMember ?? [];
    return Scaffold(
      appBar: IAppBar(title: "Self Assessment - ${assessment.period}"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAssessmentSection(
                context,
                title: 'My Self Assessment',
                children: [
                  _buildAssessmentTile(
                    context,
                    item: assessment,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentFormName,
                        extra: assessment,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              _buildAssessmentSection(
                context,
                title: 'Team Member Self Assessment',
                children: teamMembers.map((member) {
                  return _buildTeamMemberTile(
                    context,
                    member: member,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentManagerFormName,
                        extra: {
                          "member": member,
                          "period": assessment.period,
                        },
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAssessmentSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: IColors.light.primary.main,
          ),
        ),
        SizedBox(height: 12.h),
        ...children,
      ],
    );
  }

  Widget _buildAssessmentTile(
    BuildContext context, {
    required AssessmentList item,
    required VoidCallback onTap,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final title = item.period ?? 'N/A';
    final status = item.status ?? item.status ?? 'N/A'; // Use status label
    final dueDate = item.dueDate ?? 'N/A';

    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        subtitle: null,
        title: Wrap(
          spacing: 8.w,
          runSpacing: 4.h,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              title,
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            _buildStatusChip(context, status),
            _buildDueDateLabel(context, dueDate),
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: IColors.light.grayscale.g20,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  Widget _buildTeamMemberTile(
    BuildContext context, {
    required TeamMember member,
    required VoidCallback onTap,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final bool showAlert = false;
    final statusLabel = member.statusLabel ?? 'N/A';

    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        leading: _buildProfileAvatar(
          member.photoProfile,
          member.userName,
          20.r,
        ),
        title: Wrap(
          spacing: 8.w,
          runSpacing: 4.h,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              member.userName ?? 'N/A',
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            _buildStatusChip(context, statusLabel),
            if (showAlert) ...[
              SvgPicture.asset(IAssets.alert),
            ],
          ],
        ),
        subtitle: Text(
          member.jobPositionName ?? 'N/A',
          style: textTheme.bodyMedium?.copyWith(
            color: IColors.light.grayscale.g60,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: IColors.light.grayscale.g20,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  Widget _buildProfileAvatar(String? photoUrl, String? name, double radius) {
    final hasValidUrl =
        photoUrl != null && Uri.tryParse(photoUrl)?.hasAbsolutePath == true;
    final initials =
        name != null && name.isNotEmpty ? name[0].toUpperCase() : '?';

    if (hasValidUrl) {
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(photoUrl!),
        onBackgroundImageError: (exception, stackTrace) {},
        child: Container(),
      );
    } else {
      return CircleAvatar(
        radius: radius,
        backgroundColor: IColors.light.primary.background,
        child: Text(
          initials,
          style: TextStyle(
            color: IColors.light.primary.main,
            fontWeight: FontWeight.bold,
            fontSize: radius,
          ),
        ),
      );
    }
  }

  Widget _buildStatusChip(BuildContext context, String statusLabel) {
    final textTheme = Theme.of(context).textTheme;
    final String status = statusLabel.toLowerCase();
    final bool isComplete = status == 'complete';
    final bool isNotStarted = status == 'not started';

    Color color;
    Color bgColor;

    if (isComplete) {
      color = IColors.light.success.main;
      bgColor = IColors.light.success.background;
    } else if (isNotStarted) {
      color = IColors.light.grayscale.g60;
      bgColor = IColors.light.grayscale.g10;
    } else {
      color = IColors.light.warning.main;
      bgColor = IColors.light.warning.background;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        statusLabel,
        style: textTheme.bodySmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDueDateLabel(BuildContext context, String date) {
    final textTheme = Theme.of(context).textTheme;
    final warningColor = IColors.light.warning.main;

    final baseStyle = textTheme.bodySmall?.copyWith(
      color: warningColor,
      fontWeight: FontWeight.w500,
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: IColors.light.warning.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: IColors.light.warning.hover,
            size: 14.sp,
          ),
          SizedBox(width: 4.w),
          Text.rich(
            TextSpan(
              style: baseStyle,
              children: [
                const TextSpan(text: 'Due Date '),
                TextSpan(
                  text: date,
                  style: baseStyle?.copyWith(
                    color: IColors.light.warning.hover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
