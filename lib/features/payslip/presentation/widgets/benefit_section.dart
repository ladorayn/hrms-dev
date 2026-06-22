import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_table_row.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_total_row.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({
    super.key,
    required this.textTheme,
    required this.headerColor,
    required this.labelColor,
    required this.valueColor,
  });

  final TextTheme textTheme;
  final Color headerColor;
  final Color? labelColor;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.payslipBenefits,
          style: textTheme.titleMedium?.copyWith(
            color: IColors.light.primary.main,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          l10n.payslipBenefitsDescription,
          style: textTheme.bodyMedium?.copyWith(color: labelColor),
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: IColors.light.grayscale.g20),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: l10n.payslipBenefitWorkAccident,
                  amount: "Rp 200.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: l10n.payslipBenefitDeath,
                  amount: "Rp 50.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: l10n.payslipBenefitOldAge,
                  amount: "Rp 120.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: l10n.payslipBenefitPension,
                  amount: "Rp 100.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: l10n.payslipBenefitHealth,
                  amount: "Rp 100.000"),
              PayslipTotalRow(
                  textTheme: textTheme,
                  title: l10n.payslipTotalBenefits,
                  amount: "Rp 570.000"),
            ],
          ),
        ),
      ],
    );
  }
}
