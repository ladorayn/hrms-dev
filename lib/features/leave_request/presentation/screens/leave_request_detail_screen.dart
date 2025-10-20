import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/leave_type_enum.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_status_chip.dart';

class LeaveRequestDetailScreen extends ConsumerWidget {
  const LeaveRequestDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Leave Request Detail"),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                            style: textTheme.bodySmall
                                ?.copyWith(color: IColors.light.grayscale.g30),
                          ),
                          Row(
                            spacing: 5.h,
                            children: [
                              LeaveTypeChip(
                                  type: LeaveType.fromString("Annual Leave")),
                              StatusChip(
                                status: 3,
                                statusLabel: "Waiting for approval",
                                event:
                                    'leave', // Assuming 'leave' is the event type
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
                            style: textTheme.bodySmall
                                ?.copyWith(color: IColors.light.grayscale.g30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Dec 2 - Dec 4, 2025',
                                style: textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.normal),
                              ),
                              Text(
                                '(3 Days)',
                                style: textTheme.bodyMedium
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
                            "Attachment",
                            style: textTheme.bodySmall
                                ?.copyWith(color: IColors.light.grayscale.g30),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "File Uploaded",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  "2.3 MB",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          )
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 5.w,
                            children: [
                              Text(
                                "Demi Wilkinson",
                                style: textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "(COO)",
                                style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: IColors.light.grayscale.g30),
                              ),
                            ],
                          ),
                          StatusChip(
                            status: 1,
                            statusLabel: "Approved",
                            event:
                                'leave', // Assuming 'leave' is the event type
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
