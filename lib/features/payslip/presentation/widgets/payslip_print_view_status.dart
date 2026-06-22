import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/enums/payslip_view_enum.dart';

class PrintViewStatus extends StatelessWidget {
  final PrintViewType type;

  const PrintViewStatus({
    super.key,
    required this.type,
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
          Text(
            type.displayName(l10n),
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
