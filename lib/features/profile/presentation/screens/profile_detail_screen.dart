import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/employee_info_section.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_header.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_info_section.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/section_title.dart';

class ProfileDetailScreen extends ConsumerWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final authP = ref.watch(authProvider);
    final profileAsync =
        ref.watch(employeeDetailProvider(id: authP.value?.id ?? 0));

    return Scaffold(
      appBar: IAppBar(title: l10n.profileMyProfile),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: profileAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            Center(child: Text(l10n.profileFailedToLoad(err.toString()))),
        data: (profile) {
          return ListView(
            children: [
              ProfileHeader(profile: profile),
              SizedBox(height: 8.h),
              ExpansionTile(
                collapsedIconColor: IColors.light.primary.main,
                expansionAnimationStyle: AnimationStyle(
                  duration: const Duration(milliseconds: 700),
                  reverseDuration: const Duration(milliseconds: 700),
                  curve: Curves.decelerate,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                backgroundColor: Colors.white,
                title: SectionTitle(l10n.profilePersonalInformation),
                children: [
                  PersonalInfoSection(profile: profile),
                ],
              ),
              SizedBox(height: 8.h),
              ExpansionTile(
                collapsedIconColor: IColors.light.primary.main,
                expansionAnimationStyle: AnimationStyle(
                  duration: const Duration(milliseconds: 700),
                  reverseDuration: const Duration(milliseconds: 700),
                  curve: Curves.decelerate,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                collapsedBackgroundColor: Colors.white,
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                backgroundColor: Colors.white,
                title: SectionTitle(l10n.profileEmployeeInformation),
                children: [
                  EmployeeInfoSection(profile: profile),
                ],
              ),
              SizedBox(height: 8.h), // Bottom padding
            ],
          );
        },
      ),
    );
  }
}
