// lib/core/enums/leave_type_enum.dart
import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

// A simple helper class to hold color pairs
class PayslipViewStatusColor {
  final Color background;
  final Color foreground;
  const PayslipViewStatusColor(this.background, this.foreground);
}

enum PayslipViewType {
  locked,
  pending,
  approved,
  unknown;
}


extension PayslipViewTypeExtension on PayslipViewType {

  String get displayName {
    switch (this) {
      case PayslipViewType.locked:
        return 'Locked';
      case PayslipViewType.pending:
        return 'Request has been sent';
      case PayslipViewType.approved:
        return 'Approved';
      case PayslipViewType.unknown:
        return 'Unknown';
      }
  }

  PayslipViewStatusColor get colors {
    switch (this) {
      case PayslipViewType.locked:
      case PayslipViewType.pending:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main); // Blue

      case PayslipViewType.approved:
        return PayslipViewStatusColor(IColors.light.primary.background, IColors.light.primary.main); // Pink

      default:
        return PayslipViewStatusColor(IColors.light.warning.background, IColors.light.warning.main); // Gray
    }
  }
}
