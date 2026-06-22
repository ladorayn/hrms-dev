import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4.h,
      children: [
        Text(
          l10n.performanceObjective,
          style: textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: IColors.light.grayscale.gNew,
          ),
        ),
        Text(
          title,
          style: textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: IColors.light.primary.main,
          ),
        ),
      ],
    );
  }
}
