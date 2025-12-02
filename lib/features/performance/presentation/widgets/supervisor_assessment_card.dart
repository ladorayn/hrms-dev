import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';

class AssessmentFormCard extends StatelessWidget {
  final SupervisorAssessment assessment;
  final VoidCallback onTap;

  const AssessmentFormCard(
      {super.key, required this.assessment, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final formName = assessment.form?.name ?? 'Assessment Form';
    final statusLabel = assessment.statusLabel ?? 'N/A';

    Color statusColor;
    Color statusBgColor;

    if (statusLabel.toLowerCase() == 'not started') {
      statusColor = IColors.light.warning.main;
      statusBgColor = IColors.light.warning.background;
    } else {
      statusColor = IColors.light.success.main;
      statusBgColor = IColors.light.success.background;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: IColors.light.grayscale.g20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(IAssets.supervisorAssessment),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formName,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: IColors.light.primary.main,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.h),
                  // Status Chip
                  _buildStatusChip(context, statusLabel),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios,
                size: 16.sp, color: IColors.light.grayscale.g60),
          ],
        ),
      ),
    );
  }
}

Widget _buildStatusChip(BuildContext context, String statusLabel) {
  final textTheme = Theme.of(context).textTheme;
  final bool isComplete = statusLabel.toLowerCase() == 'completed' ||
      statusLabel.toLowerCase() == 'validated';
  final bool isNotStarted = statusLabel.toLowerCase() == 'not started';

  Color color;
  Color bgColor;

  if (isComplete) {
    color = IColors.light.success.main;
    bgColor = IColors.light.success.background;
  } else if (isNotStarted) {
    color = IColors.light.grayscale.g60;
    bgColor = IColors.light.grayscale.g10;
  } else {
    color = IColors.light.warning.main;
    bgColor = IColors.light.warning.background;
  }

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Text(
      statusLabel,
      style: textTheme.bodySmall?.copyWith(
        color: color,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
