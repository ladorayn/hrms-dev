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

class ManagerAssessmentLandingScreen extends ConsumerWidget {
  final String quarterTitle;

  const ManagerAssessmentLandingScreen({
    super.key,
    required this.quarterTitle,
  });

  // --- Dummy Data ---
  final Map<String, dynamic> _myAssessmentData = const {
    'title': 'Q4 2025',
    'status': 'Incomplete',
    'dueDate': 'November 2, 2025'
  };

  final List<Map<String, String>> _dummyTeamMembers = const [
    {
      'name': 'Olivia Rhye',
      'role': 'Senior Product Designer',
      'status': 'Incomplete',
      'avatarUrl': 'https://i.pravatar.cc/150?img=1', // Placeholder
      'alert': 'true',
    },
    {
      'name': 'Candice Wu',
      'role': 'Senior Product Designer',
      'status': 'Incomplete',
      'avatarUrl': 'https://i.pravatar.cc/150?img=2',
      'alert': 'true',
    },
    {
      'name': 'Demi Wilkinson',
      'role': 'Senior Product Designer',
      'status': 'Complete',
      'avatarUrl': 'https://i.pravatar.cc/150?img=3',
      'alert': 'true',
    },
    {
      'name': 'Natali Craig',
      'role': 'Junior Product Designer',
      'status': 'Complete',
      'avatarUrl': 'https://i.pravatar.cc/150?img=4',
      'alert': 'false',
    },
    {
      'name': 'Phoenix Baker',
      'role': 'Junior Product Designer',
      'status': 'Validated',
      'avatarUrl': 'https://i.pravatar.cc/150?img=5',
      'alert': 'false',
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: IAppBar(title: "Self Assessment - $quarterTitle"),
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
                    item: _myAssessmentData,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentFormName,
                        extra: {'assessmentId': 'manager_self'},
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              _buildAssessmentSection(
                context,
                title: 'Team Member Self Assessment',
                children: _dummyTeamMembers.map((member) {
                  return _buildTeamMemberTile(
                    context,
                    member: member,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentFormName,
                        extra: {'assessmentId': member['name']},
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
    required Map<String, dynamic> item,
    required VoidCallback onTap,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final title = item['title']!;
    final status = item['status']!;
    final dueDate = item['dueDate'];

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
            if (dueDate != null) _buildDueDateLabel(context, dueDate),
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
    required Map<String, String> member,
    required VoidCallback onTap,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final bool showAlert = member['alert'] == 'true';

    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        leading: CircleAvatar(
          radius: 20.r,
          backgroundImage: NetworkImage(member['avatarUrl']!),
        ),
        title: Wrap(
          spacing: 8.w,
          runSpacing: 4.h,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              member['name']!,
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            _buildStatusChip(context, member['status']!),
            if (showAlert) ...[
              SvgPicture.asset(IAssets.alert),
            ],
          ],
        ),
        subtitle: Text(
          member['role']!,
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

  Widget _buildStatusChip(BuildContext context, String status) {
    final textTheme = Theme.of(context).textTheme;

    Color color;
    Color bgColor;

    switch (status) {
      case 'Complete':
        color = IColors.light.primary.hover;
        bgColor = IColors.light.primary.background;
        break;
      case 'Validated':
        color = IColors.light.success.hover;
        bgColor = IColors.light.success.background;
        break;
      case 'Incomplete':
        color = IColors.light.error.hover;
        bgColor = IColors.light.error.background;
        break;
      default:
        color = IColors.light.warning.main;
        bgColor = IColors.light.warning.background;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        status,
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
