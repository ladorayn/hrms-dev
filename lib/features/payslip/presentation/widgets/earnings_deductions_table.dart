import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_table_row.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_total_row.dart';

class EarningsDeductionsTable extends StatelessWidget {
  const EarningsDeductionsTable({
    super.key,
    required this.textTheme,
    required this.headerColor,
    required this.valueColor,
    required this.detailData,
    required this.payslip,
  });

  final TextTheme textTheme;
  final Color headerColor;
  final Color valueColor;
  final PayslipDetailResponse? detailData;
  final PayslipDataList? payslip;

  String _formatCurrency(dynamic amount) {
    if (amount == null) return '-';
    return 'Rp ${amount.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  List<Widget> _buildItemList(List<PayslipItem>? items) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.name ?? 'N/A';
      final amount = _formatCurrency(e.amount);

      return PayslipTableRow(
        textTheme: textTheme,
        valueColor: valueColor,
        title: title,
        amount: amount,
      );
    }).toList();
  }

  List<Widget> _buildItemListAllowance(List<PayslipItem>? items) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.allowanceName ?? 'N/A';
      final amount = _formatCurrency(e.allowanceValue);

      return PayslipTableRow(
        textTheme: textTheme,
        valueColor: valueColor,
        title: title,
        amount: amount,
      );
    }).toList();
  }

  List<Widget> _buildItemListAdditonalEarning(List<AdditionalEarning>? items) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.name ?? 'N/A';
      final amount = _formatCurrency(e.amount);

      return PayslipTableRow(
        textTheme: textTheme,
        valueColor: valueColor,
        title: title,
        amount: amount,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> earningsRows = [
      PayslipTableRow(
          textTheme: textTheme,
          valueColor: valueColor,
          title: "Basic Salary",
          amount: _formatCurrency(detailData?.employee?.baseSalary)),
      ..._buildItemListAllowance(detailData?.allowance),
      ...[
        PayslipTableRow(
            textTheme: textTheme,
            valueColor: valueColor,
            title: "Overtime",
            amount: _formatCurrency(detailData?.totalOvertime)),
      ],
      ..._buildItemListAdditonalEarning(detailData?.additionalEarning),
    ];

    final List<Widget> deductionsRows = [
      ..._buildItemList(detailData?.deduction),
    ];

    final netPayAmount = _formatCurrency(detailData?.netPay);

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: IColors.light.grayscale.g20)),
      child: Column(
        children: [
          // --- EARNINGS ---
          _buildSectionHeader(textTheme, headerColor, "Earnings"),
          ...earningsRows,

          // --- DEDUCTIONS ---
          _buildSectionHeader(textTheme, headerColor, "Deductions"),
          ...deductionsRows,

          // --- NET PAY TOTAL ---
          PayslipTotalRow(
              textTheme: textTheme,
              title: "Take Home Pay",
              amount: netPayAmount),
        ],
      ),
    );
  }

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
