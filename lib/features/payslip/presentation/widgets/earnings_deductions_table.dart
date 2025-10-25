import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_table_row.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_total_row.dart';

class EarningsDeductionsTable extends StatelessWidget {
  const EarningsDeductionsTable({
    super.key,
    required this.textTheme,
    required this.headerColor,
    required this.valueColor,
  });

  final TextTheme textTheme;
  final Color headerColor;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: IColors.light.grayscale.g20)),
      child: Column(
        children: [
          _buildSectionHeader(textTheme, headerColor, "Earnings"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Basic Salary",
              amount: "Rp 24.000.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Telecommunication Allowance",
              amount: "Rp 500.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Transport Allowance",
              amount: "Rp 300.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Position Allowance",
              amount: "Rp 200.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Bonus",
              amount: "Rp 10.000.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Reimbursement",
              amount: "Rp 2.000.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Overtime (10 Hours)",
              amount: "Rp 1.000.000"),
          _buildSectionHeader(textTheme, headerColor, "Deductions"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "BPJS Kesehatan",
              amount: "Rp 240.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Jaminan Hari Tua",
              amount: "Rp 740.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Jaminan Pensiun",
              amount: "Rp 240.000"),
          PayslipTableRow(
              textTheme: textTheme,
              valueColor: valueColor,
              title: "Taxes (PPH 21)",
              amount: "Rp 2.000.000"),
          PayslipTotalRow(
              textTheme: textTheme,
              title: "Take Home Pay",
              amount: "Rp 32.000.000"),
        ],
      ),
    );
  }

  // This helper is only used by this widget, so it stays private here
  Widget _buildSectionHeader(
      TextTheme textTheme, Color headerColor, String title) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.w, bottom: 8.w),
      decoration: BoxDecoration(
          color: IColors.light.grayscale.g10,
          borderRadius: title == 'Earnings'
              ? BorderRadius.only(
                  topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r))
              : BorderRadius.zero),
      width: double.infinity,
      child: Text(
        title,
        style: textTheme.titleMedium?.copyWith(
          color: headerColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
