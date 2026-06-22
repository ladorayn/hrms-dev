import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class WarningEmptyAttendance extends StatelessWidget {
  const WarningEmptyAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: IColors.light.warning.background,
          border: Border.all(color: IColors.light.warning.border),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        spacing: 5.w,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: IColors.light.warning.main,
          ),
          Text(
            l10n.overtimeNoAttendanceLog,
            style: textTheme.bodyMedium?.copyWith(
                color: IColors.light.warning.main, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
