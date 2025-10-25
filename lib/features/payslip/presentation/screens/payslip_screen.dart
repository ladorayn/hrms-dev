import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/payslip_view_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_view_status.dart';

class PayslipScreen extends ConsumerWidget {
  const PayslipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final months = [
      "August 2025",
      "July 2025",
      "June 2025",
    ];

    void showModalPayslip(String title) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        builder: (context) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: IColors.light.primary.main)),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: Row(
                    spacing: 24.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8.w,
                        children: [
                          Icon(
                            Icons.visibility,
                            color: IColors.light.primary.main,
                          ),
                          Text("View Payslip"),
                          PayslipViewStatus(type: PayslipViewType.locked),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: IColors.light.primary.main,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          globalNavigatorKey.currentContext
                              ?.pushNamed(RoutePaths.payslipViewRequestName);
                        },
                        child: Text(
                          "Request Access",
                          style: textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(color: IColors.light.grayscale.g10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: Row(
                    spacing: 24.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8.w,
                        children: [
                          SvgPicture.asset(IAssets.printer),
                          Text("Print Request"),
                          PayslipViewStatus(type: PayslipViewType.locked),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: IColors.light.primary.main,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          globalNavigatorKey.currentContext
                              ?.pushNamed(RoutePaths.payslipPrintRequestName);
                        },
                        child: Text(
                          "Request Access",
                          style: textTheme.labelSmall?.copyWith(
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
        ),
      );
    }

    return Scaffold(
      appBar: IAppBar(title: "My Payslip"),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Text(
                          "Last ${months.length} Month",
                          style: textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8E8E8E)),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  showModalPayslip(months[index]);
                                },
                                child: ListTile(
                                  title: Text(months[index]),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: IColors.light.grayscale.g20,
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                  color: IColors.light.grayscale.g10);
                            },
                            itemCount: months.length),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
