// lib/features/leave_request/presentation/widgets/leave_request_item.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/enums/leave_type_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart'; // Your existing status chip
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_status_chip.dart';
import 'package:intl/intl.dart';

class LeaveRequest {
  final String leaveType;
  final int status;
  final String statusLabel;
  final DateTime startDate;
  final DateTime endDate;

  LeaveRequest({
    required this.leaveType,
    required this.status,
    required this.statusLabel,
    required this.startDate,
    required this.endDate,
  });
}

class LeaveRequestItem extends StatelessWidget {
  final LeaveRequest request;

  const LeaveRequestItem({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // Calculate duration
    final durationInDays =
        request.endDate.difference(request.startDate).inDays + 1;

    // Format dates
    final startFormatted = DateFormat('MMM d').format(request.startDate);
    final endFormatted = DateFormat('MMM d, yyyy').format(request.endDate);

    return GestureDetector(
      onTap: () {
        globalNavigatorKey.currentContext?.push(RoutePaths.leaveDetail);
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
                LeaveTypeChip(type: LeaveType.fromString(request.leaveType)),
                StatusChip(
                  status: request.status,
                  statusLabel: request.statusLabel,
                  event: 'leave', // Assuming 'leave' is the event type
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
