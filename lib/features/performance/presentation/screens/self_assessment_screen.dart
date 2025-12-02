import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

class SelfAssessmentScreen extends ConsumerWidget {
  final List<AssessmentList> assessments;

  const SelfAssessmentScreen({super.key, required this.assessments});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Self Assessment"),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 20.h),
                  itemBuilder: (context, index) {
                    final item = assessments[index];
                    final title = item.period ?? 'N/A';
                    final status = item.status ?? 'unknown';

                    final statusLabel = item.status ?? status;
                    final dueDate = item.dueDate;

                    final isManagerView =
                        item.teamMember != null && item.teamMember!.isNotEmpty;

                    return GestureDetector(
                      onTap: () {
                        globalNavigatorKey.currentContext?.pushNamed(
                          !isManagerView
                              ? RoutePaths.assessmentFormName
                              : RoutePaths.managerAssessmentName,
                          extra: item,
                        );
                      },
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
                              style: textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),
                            _buildStatusChip(context, statusLabel),
                            if (dueDate != null && dueDate.isNotEmpty)
                              _buildDueDateLabel(context, dueDate),
                          ],
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: IColors.light.grayscale.g20,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: IColors.light.grayscale.g10,
                      indent: 16.w,
                      endIndent: 16.w,
                    );
                  },
                  itemCount: assessments.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context, String statusLabel) {
    final textTheme = Theme.of(context).textTheme;
    final bool isComplete = statusLabel.toLowerCase() == 'completed' ||
        statusLabel.toLowerCase() == 'validated';
    final bool isNotStarted = statusLabel.toLowerCase() == 'not started';

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
