import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/presentation/widgets/business_trip_status_chip.dart';
import 'package:intl/intl.dart';

class BusinessTripItem extends StatelessWidget {
  final BusinessTripData request;

  const BusinessTripItem({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final startDate = request.startDate != null
        ? DateTime.tryParse(request.startDate!)
        : null;
    final endDate =
        request.endDate != null ? DateTime.tryParse(request.endDate!) : null;

    final startFormatted = startDate != null
        ? DateFormat('MMM d').format(startDate)
        : '-';
    final endFormatted = endDate != null
        ? DateFormat('MMM d, yyyy').format(endDate)
        : '-';

    int durationInDays = 0;
    if (startDate != null && endDate != null) {
      durationInDays = endDate.difference(startDate).inDays + 1;
    }

    return GestureDetector(
      onTap: () async {
        await globalNavigatorKey.currentContext
            ?.push(RoutePaths.businessTripDetail, extra: request.id);
        // We need ref here, but we don't have it inside StatelessWidget.
        // Wait, the detail screen already invalidates on cancel!
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    request.destination ?? 'Unknown Destination',
                    style: textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                BusinessTripStatusChip(
                  status: request.status ?? 0,
                  statusLabel: request.statusStr ?? 'Unknown',
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
