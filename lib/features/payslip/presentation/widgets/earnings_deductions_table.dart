import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
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

  List<Widget> _buildItemList(
      List<PayslipItem>? items, String notAvailable) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.name ?? notAvailable;
      final amount = _formatCurrency(e.amount);

      return PayslipTableRow(
        textTheme: textTheme,
        valueColor: valueColor,
        title: title,
        amount: amount,
      );
    }).toList();
  }

  List<Widget> _buildItemListAllowance(
      List<PayslipItem>? items, String notAvailable) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.allowanceName ?? notAvailable;
      final amount = _formatCurrency(e.allowanceValue);

      return PayslipTableRow(
        textTheme: textTheme,
        valueColor: valueColor,
        title: title,
        amount: amount,
      );
    }).toList();
  }

  List<Widget> _buildItemListAdditonalEarning(
      List<AdditionalEarning>? items, String notAvailable) {
    if (items == null || items.isEmpty) {
      return [];
    }

    return items.map((e) {
      final title = e.name ?? notAvailable;
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
    final l10n = AppLocalizations.of(context)!;
    final notAvailable = l10n.payslipNotAvailable;

    final List<Widget> earningsRows = [
      PayslipTableRow(
          textTheme: textTheme,
          valueColor: valueColor,
          title: l10n.payslipBasicSalary,
          amount: _formatCurrency(detailData?.employee?.baseSalary)),
      ..._buildItemListAllowance(detailData?.allowance, notAvailable),
      ...[
        PayslipTableRow(
            textTheme: textTheme,
            valueColor: valueColor,
            title: l10n.payslipOvertime,
            amount: _formatCurrency(detailData?.totalOvertime)),
      ],
      ..._buildItemListAdditonalEarning(
          detailData?.additionalEarning, notAvailable),
    ];

    final List<Widget> deductionsRows = [
      ..._buildItemList(detailData?.deduction, notAvailable),
    ];

    final netPayAmount = _formatCurrency(detailData?.netPay);

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: IColors.light.grayscale.g20)),
      child: Column(
        children: [
          _buildSectionHeader(
              textTheme, headerColor, l10n.payslipEarnings, isFirst: true),
          ...earningsRows,
          _buildSectionHeader(
              textTheme, headerColor, l10n.payslipDeductions, isFirst: false),
          ...deductionsRows,
          PayslipTotalRow(
              textTheme: textTheme,
              title: l10n.payslipTakeHomePay,
              amount: netPayAmount),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(
      TextTheme textTheme, Color headerColor, String title,
      {required bool isFirst}) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.w, bottom: 8.w),
      decoration: BoxDecoration(
          color: IColors.light.grayscale.g10,
          borderRadius: isFirst
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
