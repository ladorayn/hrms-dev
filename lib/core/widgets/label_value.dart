import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelValue extends StatelessWidget {
  const LabelValue({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final labelColor = Color(0xFF8E8E8E);
    final valueColor = Colors.black;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textTheme.bodySmall?.copyWith(
            color: labelColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 4.h),
        if (value != null) ...[
          Text(
            value!,
            style: textTheme.bodyMedium?.copyWith(
              color: valueColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]
      ],
    );
  }
}
