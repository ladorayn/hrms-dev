import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';

class OffboardingStatusCard extends StatelessWidget {
  final OffboardingStatusResponse data;

  const OffboardingStatusCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: IColors.light.warning.focused,
        borderRadius: BorderRadius.circular(12),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(4.w),
      child: Container(
        decoration: BoxDecoration(
          color: IColors.light.warning.background,
          border: Border.all(
            color: IColors.light.warning.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.dashboardOffboardingTitle,
                style: textTheme.titleSmall
                    ?.copyWith(color: IColors.light.primary.main),
              ),
              Text(
                l10n.dashboardOffboardingSubtitle,
                style: textTheme.bodySmall,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
                  backgroundColor: WidgetStateProperty.all<Color>(
                      IColors.light.primary.main),
                ),
                onPressed: () {
                  globalNavigatorKey.currentContext
                      ?.pushNamed(RoutePaths.offboardingName, extra: data);
                },
                child: Text(
                  l10n.dashboardOffboardingStartButton,
                  style: textTheme.bodySmall?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
