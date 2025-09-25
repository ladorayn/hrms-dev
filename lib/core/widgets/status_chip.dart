import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';

enum AttendanceStatus {
  // Success
  onTime,
  approved,
  annualLeave,

  // Warning
  waitingApproval,
  late,

  // Error
  absent,
  rejected,
}

class StatusChip extends StatelessWidget {
  final AttendanceStatus status;

  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    // --- Status Config ---
    final String statusText;
    final String statusIconAsset;
    final Color statusBackgroundColor;
    final Color statusTextColor;

    switch (status) {
      // 🟢 SUCCESS
      case AttendanceStatus.onTime:
        statusText = 'On Time';
        statusIconAsset = IAssets.onTimeClock;
        statusBackgroundColor = IColors.light.success.background;
        statusTextColor = IColors.light.success.hover;
        break;

      case AttendanceStatus.approved:
        statusText = 'Approved';
        statusIconAsset = IAssets.onTimeClock;
        statusBackgroundColor = IColors.light.success.background;
        statusTextColor = IColors.light.success.hover;
        break;

      case AttendanceStatus.annualLeave:
        statusText = 'Annual Leave';
        statusIconAsset = IAssets.onLeave;
        statusBackgroundColor = IColors.light.success.background;
        statusTextColor = IColors.light.success.hover;
        break;

      // 🟡 WARNING
      case AttendanceStatus.waitingApproval:
        statusText = 'Waiting for Approval';
        statusIconAsset = IAssets.warningClock;
        statusBackgroundColor = IColors.light.warning.background;
        statusTextColor = IColors.light.warning.hover;
        break;

      case AttendanceStatus.late:
        statusText = 'Late';
        statusIconAsset = IAssets.warningClock;
        statusBackgroundColor = IColors.light.warning.background;
        statusTextColor = IColors.light.warning.hover;
        break;

      // 🔴 ERROR
      case AttendanceStatus.absent:
        statusText = 'Absent';
        statusIconAsset = IAssets.redClose;
        statusBackgroundColor = IColors.light.error.background;
        statusTextColor = IColors.light.error.main;
        break;

      case AttendanceStatus.rejected:
        statusText = 'Rejected';
        statusIconAsset = IAssets.redClose;
        statusBackgroundColor = IColors.light.error.background;
        statusTextColor = IColors.light.error.main;
        break;
    }

    // --- Chip UI ---
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: statusBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            statusIconAsset,
            height: 14.0,
            width: 14.0,
          ),
          const SizedBox(width: 4.0),
          Text(
            statusText,
            style: ITheme.light.textTheme.labelSmall
                ?.copyWith(color: statusTextColor),
          ),
        ],
      ),
    );
  }
}
