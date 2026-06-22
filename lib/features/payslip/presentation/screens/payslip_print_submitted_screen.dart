import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';

class PayslipPrintSubmittedScreen extends ConsumerWidget {
  final PayslipDataList data;

  const PayslipPrintSubmittedScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final payslipLabel = data.payrun?.periodLabel ?? l10n.payslipFallbackLabel;
    return Scaffold(
      appBar: IAppBar(title: l10n.payslipTitleWithPeriod(payslipLabel)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Text(
                l10n.payslipPrintPayslipRequest,
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
                l10n.payslipPrintRequestSubmitted,
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
                l10n.payslipPrintRequestSubmittedBody,
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
