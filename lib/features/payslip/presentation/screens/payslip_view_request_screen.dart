import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_password.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart';

class PayslipViewRequestScreen extends ConsumerStatefulWidget {
  final PayslipDataList data;

  const PayslipViewRequestScreen({super.key, required this.data});

  @override
  ConsumerState<PayslipViewRequestScreen> createState() =>
      _PayslipViewRequestScreenState();
}

class _PayslipViewRequestScreenState
    extends ConsumerState<PayslipViewRequestScreen> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleAccessPayslip() async {
    final l10n = AppLocalizations.of(context)!;
    final password = _passwordController.text.trim();
    final payslipId = widget.data.id;

    if (password.isEmpty) {
      showCustomToast(context, l10n.payslipEnterPassword, ToastType.info);
      return;
    }

    if (payslipId == null) {
      showCustomToast(context, l10n.payslipIdMissing, ToastType.error);
      return;
    }

    final notifier = ref.read(payslipViewRequestProvider.notifier);
    final requestBody = PayslipRequest(password: password);

    try {
      notifier.setLoading();
      final message = await notifier.requestViewPayslip(
        request: requestBody,
        id: payslipId,
      );
      if (mounted) {
        ref.invalidate(payslipListProvider);
        showCustomToast(context, message, ToastType.success);
        globalNavigatorKey.currentContext?.pop();
      }
    } catch (e) {
      if (mounted) {
        showCustomToast(
            context,
            l10n.payslipAccessFailed(
                e.toString().replaceAll('Exception: ', '')),
            ToastType.error);
      }
    } finally {
      notifier.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(payslipViewRequestProvider);
    final isLoading = state.isLoading;

    final payslipLabel =
        widget.data.payrun?.periodLabel ?? l10n.payslipFallbackLabel;

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
                l10n.payslipViewPayslip,
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
                l10n.payslipEnterPasswordToContinue,
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
                l10n.payslipPasswordSecurityMessage,
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
                      controller: _passwordController,
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
                      onPressed: isLoading ? null : _handleAccessPayslip,
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
                              l10n.payslipAccessPayslip,
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
