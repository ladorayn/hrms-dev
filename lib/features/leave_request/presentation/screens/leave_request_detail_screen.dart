import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/leave_request/presentation/providers/leave_provider.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_status_chip.dart';
import 'package:intl/intl.dart';

class LeaveRequestDetailScreen extends ConsumerWidget {
  final int leaveId;

  const LeaveRequestDetailScreen({
    super.key,
    required this.leaveId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final leaveDetailAsync = ref.watch(leaveDataProvider(id: leaveId));

    return Scaffold(
      appBar: IAppBar(title: "Leave Request Detail"),
      body: leaveDetailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error: $err")),
        data: (leave) {
          final startDate = DateTime.parse(leave.startDate);
          final endDate = DateTime.parse(leave.endDate);
          final duration =
              '${DateFormat('MMM d').format(startDate)} - ${DateFormat('MMM d, yyyy').format(endDate)}';

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16.h,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10.h,
                        children: [
                          Text(
                            "Request Detail",
                            style: textTheme.titleMedium
                                ?.copyWith(color: IColors.light.primary.main),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5.h,
                            children: [
                              Text(
                                "Leave Type",
                                style: textTheme.bodySmall?.copyWith(
                                    color: IColors.light.grayscale.g30),
                              ),
                              Row(
                                spacing: 5.h,
                                children: [
                                  Text(
                                    leave.leaveType.name,
                                    style: textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  LeaveStatusChip(
                                    status: leave.status,
                                    statusLabel: leave.statusLabel,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5.h,
                            children: [
                              Text(
                                "Duration",
                                style: textTheme.bodySmall?.copyWith(
                                    color: IColors.light.grayscale.g30),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    duration,
                                    style: textTheme.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '(${leave.day} Days)',
                                    style: textTheme.bodyLarge
                                        ?.copyWith(color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5.h,
                            children: [
                              Text(
                                "Reason",
                                style: textTheme.bodySmall?.copyWith(
                                    color: IColors.light.grayscale.g30),
                              ),
                              Text(
                                leave.reason,
                                style: textTheme.bodyLarge
                                    ?.copyWith(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          if (leave.attachment != null)
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5.h,
                              children: [
                                Text(
                                  "Attachment",
                                  style: textTheme.bodySmall?.copyWith(
                                      color: IColors.light.grayscale.g30),
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.6,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 18.sp,
                                      horizontal: 8.sp,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                    ),
                                    child: Row(
                                      spacing: 3,
                                      children: [
                                        SvgPicture.asset(IAssets.documentSolid),
                                        Expanded(
                                          child: Text(
                                            leave.attachment ?? '=',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10.h,
                        children: [
                          Text(
                            "Approval",
                            style: textTheme.titleMedium
                                ?.copyWith(color: IColors.light.primary.main),
                          ),
                          if (leave.approvers.isEmpty)
                            Text("No approvers assigned.",
                                style: textTheme.bodyLarge)
                          else
                            ...leave.approvers.map((approver) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      spacing: 5.w,
                                      children: [
                                        Text(
                                          approver.user.name, // <-- Data
                                          style: textTheme.bodyLarge?.copyWith(
                                              fontWeight: FontWeight.normal),
                                        ),
                                        // Add position/role if available
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
