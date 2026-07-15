// features/profile/presentation/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/l10n/locale_provider.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/language_picker_bottom_sheet.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/statistics_card.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/user_info.dart';

import 'package:package_info_plus/package_info_plus.dart';

import '../widgets/profile_menu_item.dart';

final packageInfoProvider = FutureProvider<PackageInfo>((ref) async {
  return await PackageInfo.fromPlatform();
});

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  String _currentLanguageLabel(AppLocalizations l10n, String? languageCode) {
    return languageCode == 'id' ? l10n.languageIndonesian : l10n.languageEnglish;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final localeAsync = ref.watch(localeProvider);
    final authP = ref.watch(authProvider);
    final profileAsync =
        ref.watch(employeeDetailProvider(id: authP.value?.id ?? 0));
    final packageInfoAsync = ref.watch(packageInfoProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfileAppBar(),
            ),
            SizedBox(height: 8.sp),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: UserInfo(
                profile: profileAsync.value,
              ),
            ),
            SizedBox(height: 8.sp),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: StatisticsCard(),
            ),
            SizedBox(height: 12.sp),
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.person_outline,
                          title: l10n.profileMyProfile,
                          onTap: () {
                            globalNavigatorKey.currentContext
                                ?.pushNamed(RoutePaths.profileDetailName);
                          },
                        ),
                        ProfileMenuItem(
                          icon: Icons.history_toggle_off_outlined,
                          title: l10n.profileAttendanceAndOvertime,
                          onTap: () {
                            globalNavigatorKey.currentContext
                                ?.pushNamed(RoutePaths.attendance);
                          },
                        ),
                        ProfileMenuItem(
                          icon: Icons.card_travel_outlined,
                          title: l10n.businessTripTitle,
                          onTap: () {
                            globalNavigatorKey.currentContext
                                ?.pushNamed(RoutePaths.businessTripName);
                          },
                        ),
                        ProfileMenuItem(
                          icon: Icons.wallet_outlined,
                          title: l10n.profileMyPayslip,
                          onTap: () {
                            globalNavigatorKey.currentContext
                                ?.pushNamed(RoutePaths.payslipName);
                          },
                        ),
                        ProfileMenuItem(
                          icon: Icons.language,
                          title: l10n.profileChangeLanguage,
                          subtitle: _currentLanguageLabel(
                            l10n,
                            localeAsync.value?.languageCode,
                          ),
                          onTap: () => showLanguagePickerBottomSheet(
                            context,
                            ref,
                          ),
                          showDivider: false,
                        ),
                        packageInfoAsync.when(
                          data: (info) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.sp),
                            child: Text(
                              'Version ${info.version}+${info.buildNumber}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                          loading: () => const SizedBox.shrink(),
                          error: (_, __) => const SizedBox.shrink(),
                        ),
                      ],
                    ),
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
