import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/employee_info_section.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_header.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_info_section.dart';

class ProfileDetailScreen extends ConsumerWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: IAppBar(title: "My Profile"),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            SizedBox(height: 8.h),
            const PersonalInfoSection(),
            SizedBox(height: 8.h),
            const EmployeeInfoSection(),
            SizedBox(height: 8.h), // Bottom padding
          ],
        ),
      ),
    );
  }
}
