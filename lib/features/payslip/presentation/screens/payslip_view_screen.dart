import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/earnings_deductions_table.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_details_section.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_notes_section.dart';
import 'package:no_screenshot/no_screenshot.dart';

class PayslipViewScreen extends ConsumerStatefulWidget {
  const PayslipViewScreen({super.key});

  @override
  ConsumerState<PayslipViewScreen> createState() => _PayslipViewScreenState();
}

class _PayslipViewScreenState extends ConsumerState<PayslipViewScreen>
    with WidgetsBindingObserver {
  final _noScreenshot = NoScreenshot.instance;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _noScreenshot.screenshotOff();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _noScreenshot.screenshotOff();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _noScreenshot.screenshotOn();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headerColor = Color(0xFF323232);
    final confidentialColor = Colors.red[600];
    final labelColor = Color(0xFF323232);
    final valueColor = Colors.black;
    final fieldLabelColor = Color(0xFF8E8E8E);

    return Scaffold(
      appBar: IAppBar(title: "Payslip August 2025"),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- 1. Payroll Details Section ---
              PayslipDetailsSection(
                textTheme: textTheme,
                headerColor: headerColor,
                confidentialColor: confidentialColor,
                labelColor: fieldLabelColor,
                valueColor: valueColor,
              ),
              SizedBox(height: 24.h),
              Divider(
                height: 1,
                color: IColors.light.grayscale.g20,
              ),
              SizedBox(height: 24.h),

              // --- 2. Table Earnings Deductions ---
              EarningsDeductionsTable(
                textTheme: textTheme,
                headerColor: headerColor,
                valueColor: valueColor,
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
      ),
    );
  }
}
