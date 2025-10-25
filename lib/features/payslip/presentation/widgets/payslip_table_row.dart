import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class PayslipTableRow extends StatelessWidget {
  const PayslipTableRow({
    super.key,
    required this.textTheme,
    required this.valueColor,
    required this.title,
    required this.amount,
  });

  final TextTheme textTheme;
  final Color valueColor;
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textTheme.bodyMedium?.copyWith(color: valueColor),
              ),
              Text(
                amount,
                style: textTheme.bodyMedium?.copyWith(color: valueColor),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: IColors.light.grayscale.g20,
        ),
      ],
    );
  }
}
