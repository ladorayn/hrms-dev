import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';

class PayslipDetailsSection extends StatelessWidget {
  const PayslipDetailsSection({
    super.key,
    required this.textTheme,
    required this.headerColor,
    required this.confidentialColor,
    required this.labelColor,
    required this.valueColor,
    required this.detailData,
    required this.payslip,
  });

  final TextTheme textTheme;
  final Color headerColor;
  final Color? confidentialColor;
  final Color? labelColor;
  final Color valueColor;
  final PayslipDetailResponse? detailData;
  final PayslipDataList? payslip;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final notAvailable = l10n.payslipNotAvailable;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.payslipPayrollDetails,
              style: textTheme.titleMedium?.copyWith(
                color: IColors.light.primary.main,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              l10n.payslipConfidential,
              style: textTheme.labelMedium?.copyWith(
                color: confidentialColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipPayrollPeriod,
                      payslip?.payrun?.periodLabel ?? '-'),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipEmployeeId,
                      '${detailData?.employee?.id ?? notAvailable}'),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipJobLevel,
                      detailData?.employee?.jobLevel ?? notAvailable),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipTaxpayerId,
                      detailData?.employee?.npwp ?? notAvailable),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipEmployeeName,
                      detailData?.employee?.name ?? notAvailable),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipPosition,
                      detailData?.employee?.jobTitle ?? notAvailable),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      l10n.payslipDepartment,
                      detailData?.employee?.department ?? notAvailable),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailItem(
    TextTheme textTheme,
    Color? labelColor,
    Color valueColor,
    String label,
    String value,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textTheme.bodySmall?.copyWith(color: labelColor),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: textTheme.bodyMedium?.copyWith(
            color: valueColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
