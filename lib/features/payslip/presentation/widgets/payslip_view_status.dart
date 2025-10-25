// lib/core/widgets/leave_type_chip.dart

import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/enums/leave_type_enum.dart';
import 'package:hrms_mobile/core/enums/payslip_view_enum.dart';

class PayslipViewStatus extends StatelessWidget {
  final PayslipViewType type;

  const PayslipViewStatus({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final chipColors = type.colors;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: chipColors.background,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Text(
            type.displayName,
            style: ITheme.light.textTheme.labelSmall?.copyWith(
              color: chipColors.foreground,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
