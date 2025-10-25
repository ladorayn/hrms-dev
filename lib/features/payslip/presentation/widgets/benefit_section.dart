import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Benefits",
          style: textTheme.titleMedium?.copyWith(
            color: IColors.light.primary.main,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          "These are the benefits you'll get from the company, but not included in your take-home pay (THP).",
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
                  title: "Jaminan Kecelakaan Kerja",
                  amount: "Rp 200.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: "Jaminan Kematian",
                  amount: "Rp 50.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: "Jaminan Hari Tua",
                  amount: "Rp 120.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: "Jaminan Pensiun",
                  amount: "Rp 100.000"),
              PayslipTableRow(
                  textTheme: textTheme,
                  valueColor: valueColor,
                  title: "BPJS Kesehatan",
                  amount: "Rp 100.000"),
              PayslipTotalRow(
                  textTheme: textTheme,
                  title: "Total Benefits",
                  amount: "Rp 570.000"),
            ],
          ),
        ),
      ],
    );
  }
}
