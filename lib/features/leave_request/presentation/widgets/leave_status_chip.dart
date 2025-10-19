// lib/core/widgets/leave_type_chip.dart

import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/enums/leave_type_enum.dart';

class LeaveTypeChip extends StatelessWidget {
  final LeaveType type;

  const LeaveTypeChip({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    // Logic is now cleanly handled by the extension
    final chipColors = type.colors;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: chipColors.background, // Use color from extension
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        type.displayName, // Use display name from extension
        style: ITheme.light.textTheme.labelSmall?.copyWith(
          color: chipColors.foreground, // Use color from extension
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
