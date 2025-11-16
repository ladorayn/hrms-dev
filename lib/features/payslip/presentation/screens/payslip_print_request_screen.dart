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
import 'package:no_screenshot/no_screenshot.dart';

class PayslipPrintRequestScreen extends ConsumerStatefulWidget {
  const PayslipPrintRequestScreen({super.key});

  @override
  ConsumerState<PayslipPrintRequestScreen> createState() =>
      _PayslipPrintRequestScreenState();
}

class _PayslipPrintRequestScreenState
    extends ConsumerState<PayslipPrintRequestScreen>
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

    return Scaffold(
      appBar: IAppBar(title: "Payslip August 2025"),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                color: Color(0xFF323232),
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
                    onPressed: () {
                      globalNavigatorKey.currentContext
                          ?.pushNamed(RoutePaths.payslipViewName);
                    },
                    child: Text(
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
          ],
        ),
      ),
    );
  }
}
