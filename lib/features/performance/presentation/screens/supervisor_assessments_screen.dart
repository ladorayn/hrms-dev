import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class SupervisorAssessmentsScreen extends ConsumerWidget {
  final List<SupervisorAssessment> assessments;

  const SupervisorAssessmentsScreen({super.key, required this.assessments});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment"),
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

                    final employeeName = item.user?.name ?? 'Employee N/A';

                    final assessmentPeriod = 'Assessment N/A';

                    final statusLabel = item.statusLabel ?? 'Unknown Status';

                    final dueDate = "N/A";

                    const isManagerView = true;

                    return GestureDetector(
                      onTap: () {
                        globalNavigatorKey.currentContext?.pushNamed(
                          RoutePaths.supervisorAssessmentDetailName,
                          extra: item,
                        );
                      },
                      child: ListTile(
                        dense: false,
                        visualDensity: VisualDensity.compact,
                        subtitle: Text(
                          assessmentPeriod,
                          style: textTheme.bodySmall?.copyWith(
                            color: IColors.light.grayscale.g60,
                          ),
                        ),
                        title: Wrap(
                          spacing: 8.w,
                          runSpacing: 4.h,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              employeeName,
                              style: textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
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
