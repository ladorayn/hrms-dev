import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';

// Define your IColors and IAssets paths here for the code to work
// class IColors { ... }
// class IAssets { ... }

/// A type-safe way to represent attendance status.
enum AttendanceStatus {
  onTime,
  waitingApproval,
  late,
}

/// A reusable ListTile for displaying attendance records.
class AttendanceListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String leadingIconAsset;
  final AttendanceStatus status;

  const AttendanceListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.leadingIconAsset,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    // --- Logic to determine style based on status ---
    final String statusText;
    final String statusIconAsset;
    final Color statusBackgroundColor;
    final Color statusTextColor;

    switch (status) {
      case AttendanceStatus.onTime:
        statusText = 'On Time';
        statusIconAsset = IAssets.onTimeClock;
        statusBackgroundColor = IColors.light.success.background;
        statusTextColor = IColors.light.success.hover;
        break;
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
    }

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: IColors.light.primary.background,
        radius: 12,
        child: SvgPicture.asset(
          leadingIconAsset,
          height: 18.0,
          width: 18.0,
        ),
      ),
      title: Text(
        title,
        style: ITheme.light.textTheme.headlineMedium?.copyWith(fontSize: 18),
      ),
      subtitle: Text(
        subtitle,
        style: ITheme.light.textTheme.labelSmall
            ?.copyWith(color: Color(0xFF8E8E8E)),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: ITheme.light.textTheme.bodyMedium,
          ),
          const SizedBox(height: 4),
          Container(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
