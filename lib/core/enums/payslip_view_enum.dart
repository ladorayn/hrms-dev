import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';

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
  String displayName(AppLocalizations l10n) {
    switch (this) {
      case PrintViewType.processed:
        return l10n.payslipPrintStatusProcessed;
      case PrintViewType.pending:
        return l10n.payslipPrintStatusPending;
      case PrintViewType.ready:
        return l10n.payslipPrintStatusReady;
      case PrintViewType.unknown:
        return l10n.payslipStatusUnknown;
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

      case PrintViewType.unknown:
        return PayslipViewStatusColor(
            IColors.light.warning.background, IColors.light.warning.main);
    }
  }
}

extension PayslipViewTypeExtension on PayslipViewType {
  String displayName(AppLocalizations l10n, PayslipDataList payslip) {
    switch (this) {
      case PayslipViewType.pending:
      case PayslipViewType.expired:
        return l10n.payslipStatusLocked;
      case PayslipViewType.processed:
        return l10n.payslipStatusRequestSent;
      case PayslipViewType.granted:
        return l10n.payslipStatusDaysLeft(
            payslip.viewAccessDaysRemaining ?? 0);
      case PayslipViewType.unknown:
        return l10n.payslipStatusUnknown;
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

      case PayslipViewType.expired:
      case PayslipViewType.unknown:
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
      case PayslipViewType.expired:
      case PayslipViewType.unknown:
        return IAssets.lock;
    }
  }
}
