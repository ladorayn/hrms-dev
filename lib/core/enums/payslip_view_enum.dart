// lib/core/enums/leave_type_enum.dart
import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';

// A simple helper class to hold color pairs
class PayslipViewStatusColor {
  final Color background;
  final Color foreground;

  const PayslipViewStatusColor(this.background, this.foreground);
}

enum PayslipViewType {
  pending,
  processed,
  granted,
  expired,
  unknown;
}

const _payslipTypeMap = {
  0: PayslipViewType.pending,
  1: PayslipViewType.processed,
  2: PayslipViewType.granted,
  3: PayslipViewType.expired,
  4: PayslipViewType.unknown,
};

PayslipViewType getPayslipViewType(int code) {
  return _payslipTypeMap[code] ?? PayslipViewType.unknown;
}

enum PrintViewType {
  pending,
  processed,
  ready,
  unknown;
}

const _printViewTypeMap = {
  0: PrintViewType.pending,
  1: PrintViewType.processed,
  2: PrintViewType.ready,
  3: PrintViewType.unknown,
};

PrintViewType getPrintViewType(int code) {
  return _printViewTypeMap[code] ?? PrintViewType.unknown;
}

extension PrintViewTypeExtension on PrintViewType {
  String get displayName {
    switch (this) {
      case PrintViewType.processed:
        return 'Processed';
      case PrintViewType.pending:
        return 'Pending';
      case PrintViewType.ready:
        return 'Ready';
      case PrintViewType.unknown:
        return 'Unknown';
    }
  }

  int get code {
    switch (this) {
      case PrintViewType.pending:
        return 0;
      case PrintViewType.processed:
        return 1;
      case PrintViewType.ready:
        return 2;
      case PrintViewType.unknown:
        return 3;
    }
  }

  PayslipViewStatusColor get colors {
    switch (this) {
      case PrintViewType.pending:
      case PrintViewType.processed:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main);

      case PrintViewType.ready:
        return PayslipViewStatusColor(
            IColors.light.primary.background, IColors.light.primary.main);

      default:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main);
    }
  }
}

extension PayslipViewTypeExtension on PayslipViewType {
  String displayName(PayslipDataList payslip) {
    switch (this) {
      case PayslipViewType.pending:
        return 'Locked';
      case PayslipViewType.processed:
        return 'Request has been sent';
      case PayslipViewType.granted:
        return '${payslip.viewAccessDaysRemaining} Days Left';
      case PayslipViewType.expired:
        return 'Locked';
      case PayslipViewType.unknown:
        return 'Unknown';
    }
  }

  int get code {
    switch (this) {
      case PayslipViewType.pending:
        return 0;
      case PayslipViewType.processed:
        return 1;
      case PayslipViewType.granted:
        return 2;
      case PayslipViewType.expired:
        return 3;
      case PayslipViewType.unknown:
        return 4;
    }
  }

  PayslipViewStatusColor get colors {
    switch (this) {
      case PayslipViewType.pending:
      case PayslipViewType.processed:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main);

      case PayslipViewType.granted:
        return PayslipViewStatusColor(
            IColors.light.primary.background, IColors.light.primary.main);

      default:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main);
    }
  }

  String get icons {
    switch (this) {
      case PayslipViewType.pending:
        return IAssets.lock;
      case PayslipViewType.processed:
      case PayslipViewType.granted:
        return IAssets.warningClock;
      default:
        return IAssets.lock;
    }
  }
}
