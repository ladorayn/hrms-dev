// features/profile/presentation/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/statistics_card.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/user_info.dart';

import '../widgets/profile_menu_item.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authP = ref.watch(authProvider);
    final profileAsync =
        ref.watch(employeeDetailProvider(id: authP.value?.id ?? 0));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
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
                                  // --- Menu Items ---
                                  ProfileMenuItem(
                                    icon: Icons.person_outline,
                                    title: 'My Profile',
                                    onTap: () {
                                      globalNavigatorKey.currentContext
                                          ?.pushNamed(
                                              RoutePaths.profileDetailName);
                                    },
                                  ),
                                  ProfileMenuItem(
                                    icon: Icons.history_toggle_off_outlined,
                                    title: 'Attendance and Overtime',
                                    onTap: () {
                                      globalNavigatorKey.currentContext
                                          ?.pushNamed(RoutePaths.attendance);
                                    },
                                  ),
                                  ProfileMenuItem(
                                    icon: Icons.wallet_outlined,
                                    title: 'My Payslip',
                                    onTap: () {
                                      globalNavigatorKey.currentContext
                                          ?.pushNamed(RoutePaths.payslipName);
                                    },
                                  ),
                                  ProfileMenuItem(
                                    icon: Icons.description_outlined,
                                    title: 'Document',
                                    onTap: () {},
                                  ),
                                  ProfileMenuItem(
                                    icon: Icons.gavel_outlined,
                                    title: 'Penalty',
                                    onTap: () {},
                                    showDivider: false,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
