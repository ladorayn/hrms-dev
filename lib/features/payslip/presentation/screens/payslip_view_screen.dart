import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart'; // Import provider file
import 'package:hrms_mobile/features/payslip/presentation/widgets/earnings_deductions_table.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_details_section.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_notes_section.dart';

class PayslipViewScreen extends ConsumerWidget {
  final PayslipDataList payslip;

  const PayslipViewScreen({super.key, required this.payslip});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final headerColor = const Color(0xFF323232);
    final confidentialColor = Colors.red[600];
    final labelColor = const Color(0xFF323232);
    final valueColor = Colors.black;
    final fieldLabelColor = const Color(0xFF8E8E8E);

    final payslipDetailAsync =
        ref.watch(payslipDetailProvider(id: payslip.id!));

    final appBarTitle = "Payslip ${payslip.payrun?.periodLabel ?? 'Loading'}";

    return Scaffold(
      appBar: IAppBar(title: appBarTitle),
      resizeToAvoidBottomInset: false,
      body: payslipDetailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            Center(child: Text('Failed to load payslip detail: $err')),
        data: (detailData) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Payroll Details Section ---
                  PayslipDetailsSection(
                    textTheme: textTheme,
                    headerColor: headerColor,
                    confidentialColor: confidentialColor,
                    labelColor: fieldLabelColor,
                    valueColor: valueColor,
                    detailData: detailData,
                    payslip: payslip,
                  ),
                  SizedBox(height: 24.h),
                  Divider(
                    height: 1,
                    color: IColors.light.grayscale.g20,
                  ),
                  SizedBox(height: 24.h),

                  // ---  Table Earnings Deductions ---
                  EarningsDeductionsTable(
                    textTheme: textTheme,
                    headerColor: headerColor,
                    valueColor: valueColor,
                    detailData: detailData,
                    payslip: payslip,
                  ),
                  SizedBox(height: 24.h),
                  Divider(
                    height: 1,
                    color: IColors.light.grayscale.g20,
                  ),
                  SizedBox(height: 24.h),
                  PayslipNotesSection(
                    textTheme: textTheme,
                    confidentialColor: confidentialColor,
                    labelColor: labelColor,
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
