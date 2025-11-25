import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payroll Details",
              style: textTheme.titleMedium?.copyWith(
                color: IColors.light.primary.main,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "*CONFIDENTIAL",
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
            // Left Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem(textTheme, labelColor, valueColor,
                      "Payroll Period", payslip?.payrun?.periodLabel ?? '-'),
                  SizedBox(height: 16.h),
                  _buildDetailItem(textTheme, labelColor, valueColor,
                      "Employee ID", "${detailData?.employee?.id ?? "N/A"}"),
                  SizedBox(height: 16.h),
                  _buildDetailItem(textTheme, labelColor, valueColor,
                      "Job Level", detailData?.employee?.jobLevel ?? "N/A"),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      "Taxpayer ID Number (NPWP)",
                      detailData?.employee?.npwp ?? "N/A"),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            // Right Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem(textTheme, labelColor, valueColor,
                      "Employee Name", detailData?.employee?.name ?? "N/A"),
                  SizedBox(height: 16.h),
                  _buildDetailItem(textTheme, labelColor, valueColor,
                      "Position", detailData?.employee?.jobTitle ?? "N/A"),
                  SizedBox(height: 16.h),
                  _buildDetailItem(
                      textTheme,
                      labelColor,
                      valueColor,
                      "Department",
                      detailData?.employee?.department?.name ?? "N/A"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Helper widget is now private to this file
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
