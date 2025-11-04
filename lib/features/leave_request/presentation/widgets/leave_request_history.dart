import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_status_chip.dart';
import 'package:intl/intl.dart';

class LeaveRequestItem extends StatelessWidget {
  final LeaveHistoryItem request;

  const LeaveRequestItem({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final durationInDays = request.day;

    final startDate = DateTime.parse(request.startDate);
    final endDate = DateTime.parse(request.endDate);

    // Format dates
    final startFormatted = DateFormat('MMM d').format(startDate);
    final endFormatted = DateFormat('MMM d, yyyy').format(endDate);

    return GestureDetector(
      onTap: () {
        globalNavigatorKey.currentContext
            ?.push(RoutePaths.leaveDetail, extra: request.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 5.h,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  request.leaveType.name, // Use display name from extension
                  style: textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                LeaveStatusChip(
                  status: request.status,
                  statusLabel: request.statusLabel,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Duration', style: textTheme.bodySmall),
                    const SizedBox(height: 4),
                    Text(
                      '$startFormatted - $endFormatted',
                      style: textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Text(
                  '($durationInDays Days)',
                  style: textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey.shade600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
