import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/payslip_view_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/presentation/providers/payslip_provider.dart';
import 'package:hrms_mobile/features/payslip/presentation/widgets/payslip_view_status.dart';

class PayslipScreen extends ConsumerWidget {
  const PayslipScreen({super.key});

  void showModalPayslip(
      BuildContext context, PayslipDataList payslip, AppLocalizations l10n) {
    final title = payslip.payrun?.periodLabel ?? l10n.payslipPeriodFallback;
    final textTheme = Theme.of(context).textTheme;

    final isViewGranted = payslip.viewAccessGranted ?? false;
    final showRequestAccess =
        (payslip.viewAccessStatus == 0 || payslip.viewAccessStatus == 3);
    final viewType = getPayslipViewType(payslip.viewAccessStatus ?? 4);
    final showRequestPrintAccess = payslip.printAccessStatus == 0;
    final isPrintGranted = payslip.printAccessStatus != 0;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
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
              GestureDetector(
                onTap: () {
                  if (isViewGranted) {
                    globalNavigatorKey.currentContext?.pushNamed(
                      RoutePaths.payslipViewName,
                      extra: payslip,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.visibility,
                            color: IColors.light.primary.main,
                          ),
                          SizedBox(width: 8.w),
                          Text(l10n.payslipViewPayslip),
                          SizedBox(width: 8.w),
                          PayslipViewStatus(
                            type: viewType,
                            payslip: payslip,
                          ),
                        ],
                      ),
                      if (showRequestAccess)
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: IColors.light.primary.main,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            globalNavigatorKey.currentContext?.pushNamed(
                              RoutePaths.payslipViewRequestName,
                              extra: payslip,
                            );
                          },
                          child: Text(
                            l10n.payslipRequestAccess,
                            style: textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        )
                      else if (isViewGranted)
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: IColors.light.grayscale.g30,
                          ),
                          onPressed: () {
                            globalNavigatorKey.currentContext?.pushNamed(
                              RoutePaths.payslipViewName,
                              extra: payslip,
                            );
                          },
                        )
                    ],
                  ),
                ),
              ),
              Divider(color: IColors.light.grayscale.g10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(IAssets.printer),
                        SizedBox(width: 8.w),
                        Text(l10n.payslipPrintRequest),
                      ],
                    ),
                    if (showRequestPrintAccess)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: IColors.light.primary.main,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          globalNavigatorKey.currentContext?.pushNamed(
                              RoutePaths.payslipPrintRequestName,
                              extra: payslip);
                        },
                        child: Text(
                          l10n.payslipRequestAccess,
                          style: textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      )
                    else if (isPrintGranted)
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: IColors.light.grayscale.g30,
                        ),
                        onPressed: () {
                          globalNavigatorKey.currentContext?.pushNamed(
                            RoutePaths.payslipPrintSubmittedName,
                            extra: payslip,
                          );
                        },
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final payslipListAsync = ref.watch(payslipListProvider);

    return Scaffold(
      appBar: IAppBar(title: l10n.payslipMyPayslip),
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
                child: payslipListAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(
                      child: Text(l10n.payslipListError(err.toString()))),
                  data: (payslips) {
                    final dataList = payslips
                        .where((p) => p.payrun?.periodLabel != null)
                        .toList();
                    final count = dataList.length;

                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              l10n.payslipLastMonths(count),
                              style: textTheme.bodySmall
                                  ?.copyWith(color: const Color(0xFF8E8E8E)),
                            ),
                          ),
                          Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  final payslip = dataList[index];
                                  final title = payslip.payrun?.periodLabel ??
                                      l10n.payslipNotAvailable;

                                  return GestureDetector(
                                    onTap: () {
                                      showModalPayslip(context, payslip, l10n);
                                    },
                                    child: ListTile(
                                      title: Text(title),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                        color: IColors.light.grayscale.g20,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 30.w),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Divider(
                                      color: IColors.light.grayscale.g10);
                                },
                                itemCount: count),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
