import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart';

class PayslipPrintSubmittedScreen extends ConsumerWidget {
  final PayslipDataList data;

  const PayslipPrintSubmittedScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(payslipViewRequestProvider);

    final payslipLabel = data.payrun?.periodLabel ?? 'Payslip';
    return Scaffold(
      appBar: IAppBar(title: "Payslip $payslipLabel"), // Use dynamic label
      // Removed: resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Text(
                "Print Payslip Request",
                style: textTheme.titleLarge?.copyWith(
                  color: IColors.light.primary.main,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SvgPicture.asset(IAssets.docSuccess),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Payslip Print Request Submitted",
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "We’ve received your request to print the payslip. Please wait while we process it, you’ll be informed when it’s ready to pick up.",
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF323232),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height:
                      MediaQuery.of(context).viewInsets.bottom > 0 ? 20.h : 0),
            ],
          ),
        ),
      ),
    );
  }
}
