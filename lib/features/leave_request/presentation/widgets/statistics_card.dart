import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/statistics_item.dart';

class StatisticsCard extends ConsumerWidget {
  final LeaveBalanceResponse balance;

  const StatisticsCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.focused,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: IColors.light.primary.foreground,
          border: Border.all(
            color: IColors.light.primary.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              Text(
                'Leave Balance',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: IColors.light.primary.main),
              ),
              SizedBox(height: 12.sp),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatisticsItem(
                      value: balance.timeOffUsed.toString(),
                      label: 'Days',
                      description: 'Time Off Used',
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: IColors.light.grayscale.g20,
                    ),
                    StatisticsItem(
                      value: balance.availableTimeOff.toString(),
                      label: 'Days',
                      description: 'Time Off',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
