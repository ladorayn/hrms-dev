import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';

class PayslipNotesSection extends StatelessWidget {
  const PayslipNotesSection({
    super.key,
    required this.textTheme,
    required this.confidentialColor,
    required this.labelColor,
  });

  final TextTheme textTheme;
  final Color? confidentialColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.payslipNotes,
          style: textTheme.bodySmall?.copyWith(
            color: confidentialColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          l10n.payslipNotesDisclaimer,
          style: textTheme.bodySmall?.copyWith(color: labelColor),
        ),
      ],
    );
  }
}
