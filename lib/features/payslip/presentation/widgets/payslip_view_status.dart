import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/enums/payslip_view_enum.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';

class PayslipViewStatus extends StatelessWidget {
  final PayslipViewType type;
  final PayslipDataList payslip;

  const PayslipViewStatus({
    super.key,
    required this.type,
    required this.payslip,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final chipColors = type.colors;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: chipColors.background,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            type.icons,
            colorFilter:
                ColorFilter.mode(type.colors.foreground, BlendMode.srcIn),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            type.displayName(l10n, payslip),
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
