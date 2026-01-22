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
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';
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
  final String? page;

  OffboardingTask({
    required this.title,
    required this.description,
    required this.status,
    required this.page,
  });
}

class OffboardingScreen extends ConsumerWidget {
  final OffboardingStatusResponse data;

  const OffboardingScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressAsync = ref.watch(offboardingProgressPProvider(id: data.id));
    final textTheme = Theme.of(context).textTheme;

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
              child: progressAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
                data: (progressList) {
                  return ListView.builder(
                    itemCount: progressList.length,
                    itemBuilder: (context, index) {
                      final item = progressList[index];

                      // Map API data to TaskStatus
                      final status = item.isCompleted ?? false
                          ? TaskStatus.completed
                          : (data.status == 1
                              ? TaskStatus.inProgress
                              : TaskStatus.pending);

                      // Map API type to RoutePaths
                      final String? page = _getRouteForType('${item.type}');

                      final task = OffboardingTask(
                        title: '${item.label}',
                        description: '${item.description}',
                        status: status,
                        page: page,
                      );

                      return TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0,
                        isFirst: index == 0,
                        isLast: index == progressList.length - 1,
                        beforeLineStyle: LineStyle(
                          color: task.status == TaskStatus.completed ||
                                  task.status == TaskStatus.inProgress
                              ? IColors.light.primary.focused
                              : Colors.grey.shade300,
                          thickness: 2,
                        ),
                        afterLineStyle: LineStyle(
                          color: task.status == TaskStatus.completed
                              ? (index != progressList.length - 1 &&
                                      // Use ?? false to ensure the condition is never null
                                      (progressList[index + 1].isCompleted ??
                                          false))
                                  ? IColors.light.primary.focused
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
                        endChild: _buildTaskContent(
                            context, task, data, '${item.type}'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _getRouteForType(String type) {
    switch (type) {
      case 'exit_interview_form':
        return RoutePaths.exitFormName;
      case 'work_handover':
        return RoutePaths.workHandoverName;
      case 'document_handover':
        return RoutePaths.documentHandoverName;
      default:
        return null;
    }
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

  Widget _buildTaskContent(BuildContext context, OffboardingTask task,
      OffboardingStatusResponse data, String type) {
    final textTheme = Theme.of(context).textTheme;

    final bool isEquipment = type == 'equipment_facility_return';
    final bool isExitForm = type == 'exit_interview_form';
    final bool isHandover =
        type == 'work_handover' || type == 'document_handover';
    final bool isCompleted = task.status == TaskStatus.completed;
    final bool shouldShowButton = !isEquipment && !(isExitForm && isCompleted);
    final String buttonLabel = (isHandover && isCompleted) ? "Edit" : "Start";

    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 8.h, bottom: 24.h, right: 8.w),
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
                      color: isCompleted
                          ? Colors.grey
                          : IColors.light.primary.main),
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
          if (shouldShowButton && task.page != null)
            ElevatedButton(
              onPressed: () {
                globalNavigatorKey.currentContext
                    ?.pushNamed(task.page!, extra: data);
              },
              style: ElevatedButton.styleFrom(
                // Change style to Outline-like if completed (Detail mode)
                backgroundColor:
                    isCompleted ? Colors.white : IColors.light.primary.main,
                foregroundColor:
                    isCompleted ? IColors.light.primary.main : Colors.white,
                side: isCompleted
                    ? BorderSide(color: IColors.light.primary.main)
                    : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
              ),
              child: Text(buttonLabel),
            )
        ],
      ),
    );
  }
}
