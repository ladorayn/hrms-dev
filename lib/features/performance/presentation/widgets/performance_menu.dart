import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class PerformanceMenu extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool showDivider;
  final String? dueDate;

  const PerformanceMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.showDivider = true,
    this.dueDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: SvgPicture.asset(icon),
          title:
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle:
              dueDate != null ? _buildDueDateLabel(context, dueDate!) : null,
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: IColors.light.grayscale.g20,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        if (showDivider) Divider(height: 1, color: IColors.light.grayscale.g10),
      ],
    );
  }

  Widget _buildDueDateLabel(BuildContext context, String date) {
    final textTheme = Theme.of(context).textTheme;
    final warningColor = IColors.light.warning.main;

    final baseStyle = textTheme.bodySmall?.copyWith(
      color: warningColor,
      fontWeight: FontWeight.w500,
    );

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: IColors.light.warning.background,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: IColors.light.warning.hover,
              size: 14.sp,
            ),
            SizedBox(width: 4.w),
            Text.rich(
              TextSpan(
                style: baseStyle,
                children: [
                  const TextSpan(text: 'Due Date '),
                  TextSpan(
                    text: date,
                    style: baseStyle?.copyWith(
                      color: IColors.light.warning.hover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
