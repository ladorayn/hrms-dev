import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';

class BusinessTripStatusChip extends StatelessWidget {
  final int status;
  final String statusLabel;
  final double? fontSize;

  const BusinessTripStatusChip({
    super.key,
    required this.status,
    required this.statusLabel,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final String statusText;
    final String statusIconAsset;
    final Color statusBackgroundColor;
    final Color statusTextColor;

    switch (status) {
      case 0:
        statusText = statusLabel;
        statusIconAsset = IAssets.warningClock;
        statusBackgroundColor = IColors.light.warning.background;
        statusTextColor = IColors.light.warning.hover;
        break;
      case 1:
        statusText = statusLabel;
        statusIconAsset = IAssets.onTimeClock;
        statusBackgroundColor = IColors.light.success.background;
        statusTextColor = IColors.light.success.hover;
        break;
      case 2:
        statusText = statusLabel;
        statusIconAsset = IAssets.redClose;
        statusBackgroundColor = IColors.light.error.background;
        statusTextColor = IColors.light.error.hover;
        break;
      default:
        statusText = statusLabel;
        statusIconAsset = IAssets.warningClock;
        statusBackgroundColor = IColors.light.warning.background;
        statusTextColor = IColors.light.warning.hover;
        break;
    }

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
                ?.copyWith(color: statusTextColor, fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
