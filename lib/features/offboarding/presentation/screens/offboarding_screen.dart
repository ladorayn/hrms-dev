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
import 'package:timeline_tile/timeline_tile.dart';

enum TaskStatus {
  completed,
  inProgress,
  pending,
}

class OffboardingTask {
  final String title;
  final String description;
  final TaskStatus status;
  final String? page; // The screen to navigate to

  OffboardingTask({
    required this.title,
    required this.description,
    required this.status,
    required this.page,
  });
}

class OffboardingScreen extends ConsumerWidget {
  const OffboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final tasks = [
      OffboardingTask(
        title: "Exit Interview Form",
        description:
            "Please complete your exit interview to help us understand your experience.",
        status: TaskStatus.inProgress,
        page: RoutePaths.exitFormName,
      ),
      OffboardingTask(
        title: "Work & Responsibilities Handover",
        description:
            "Transfer your current responsibilities to ensure a smooth transition.",
        status: TaskStatus.inProgress,
        page: RoutePaths.workHandoverName,
      ),
      OffboardingTask(
        title: "Document Handover",
        description:
            "Make sure all necessary files are shared before your last day.",
        status: TaskStatus.inProgress,
        page: RoutePaths.documentHandoverName,
      ),
      OffboardingTask(
        title: "Equipment & Facility Return",
        description:
            "HR will handle the return list for your assigned equipment and facilities. Please make sure all items are ready for collection.",
        status: TaskStatus.pending,
        page: null,
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: IAppBar(title: "Offboarding Process"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Text(
              "Complete Your Offboarding Tasks",
              style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600, color: Colors.black87),
            ),
            SizedBox(height: 4.h),
            Text(
              "Complete your offboarding tasks to ensure a smooth exit",
              style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade600),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  final isLastTask = index == tasks.length - 1;
                  return TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0,
                    isFirst: index == 0,
                    isLast: index == tasks.length - 1,
                    beforeLineStyle: LineStyle(
                      color: task.status == TaskStatus.completed ||
                              task.status == TaskStatus.inProgress
                          ? IColors.light.primary.focused
                          : Colors.grey.shade300,
                      thickness: 2,
                    ),
                    afterLineStyle: LineStyle(
                      color: task.status == TaskStatus.completed
                          ? !isLastTask
                              ? tasks[index + 1].status == TaskStatus.pending
                                  ? Colors.grey.shade300
                                  : IColors.light.primary.focused
                              : Colors.grey.shade300
                          : Colors.grey.shade300,
                      thickness: 2,
                    ),
                    indicatorStyle: IndicatorStyle(
                      width: 30,
                      height: 30,
                      indicator: _buildIndicator(task.status),
                      drawGap: true,
                    ),
                    endChild: _buildTaskContent(context, task),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator(TaskStatus status) {
    switch (status) {
      case TaskStatus.completed:
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: IColors.light.primary.focused, width: 2),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: SvgPicture.asset(
              IAssets.checkBlue,
            ),
          ),
        );
      case TaskStatus.inProgress:
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: IColors.light.primary.focused, width: 1),
          ),
          child: SvgPicture.asset(
            IAssets.timelineInProgressDot,
          ),
        );
      case TaskStatus.pending:
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 2),
          ),
        );
    }
  }

  // Helper widget to build the main content for each task
  Widget _buildTaskContent(BuildContext context, OffboardingTask task) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        if (task.page != null) {
          globalNavigatorKey.currentContext?.pushNamed(task.page!);
        }
      },
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.w, top: 8.h, bottom: 24.h, right: 8.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    task.title,
                    style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: IColors.light.primary.main),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    task.description,
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            if (task.status != TaskStatus.completed && task.page != null)
              ElevatedButton(
                onPressed: () {
                  if (task.page != null) {
                    globalNavigatorKey.currentContext?.pushNamed(task.page!);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: IColors.light.primary.main,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                ),
                child: const Text("Start"),
              )
          ],
        ),
      ),
    );
  }
}
