import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';

// Define your IColors and IAssets paths here for the code to work
// class IColors { ... }
// class IAssets { ... }

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
          StatusChip(status: status),
        ],
      ),
    );
  }
}
