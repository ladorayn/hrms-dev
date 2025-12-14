import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_password.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart';

class PayslipPrintRequestScreen extends ConsumerStatefulWidget {
  final PayslipDataList data;

  const PayslipPrintRequestScreen({super.key, required this.data});

  @override
  ConsumerState<PayslipPrintRequestScreen> createState() =>
      _PayslipPrintRequestScreenState();
}

class _PayslipPrintRequestScreenState
    extends ConsumerState<PayslipPrintRequestScreen> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handlePrintPayslip() async {
    final password = _passwordController.text.trim();
    final payslipId = widget.data.id;

    if (password.isEmpty) {
      showCustomToast(context, 'Please enter your password.', ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Please enter your password.')),
      // );
      return;
    }

    if (payslipId == null) {
      showCustomToast(
          context, 'Error: Payslip ID is missing.', ToastType.error);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Error: Payslip ID is missing.')),
      // );
      return;
    }

    final notifier = ref.read(printPayslipRequestProvider.notifier);
    final requestBody = PayslipRequest(password: password);

    try {
      await notifier.requestPrintPayslip(
        request: requestBody,
        id: payslipId,
      );
      if (mounted) {
        showCustomToast(
            context, 'Payslip Print Request Submitted', ToastType.success);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(content: Text('Payslip Print Request Submitted')),
        // );

        globalNavigatorKey.currentContext?.pushNamed(
          RoutePaths.payslipPrintSubmittedName,
          extra: widget.data,
        );
      }
    } catch (e) {
      if (mounted) {
        showCustomToast(
            context,
            'Access Failed: ${e.toString().replaceAll('Exception: ', '')}',
            ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(
        //         'Access Failed: ${e.toString().replaceAll('Exception: ', '')}'),
        //     backgroundColor: Colors.red,
        //   ),
        // );
      }
    } finally {
      notifier.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(payslipViewRequestProvider);
    final isLoading = state.isLoading;

    final payslipLabel = widget.data.payrun?.periodLabel ?? 'Payslip';
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
              SvgPicture.asset(IAssets.payslipLock),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Enter Your Password to Continue",
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
                "For security reasons, please enter your account password to access your selected payslip.",
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF323232),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ITextFieldPassword(
                      controller: _passwordController, // Assign controller
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: IColors.light.primary.main,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: isLoading ? null : _handlePrintPayslip,
                      child: isLoading
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              "Send Print Request",
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                    )
                  ],
                ),
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
