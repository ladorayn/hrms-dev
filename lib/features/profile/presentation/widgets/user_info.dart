import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

class UserInfo extends ConsumerWidget {
  final UserProfile? profile;

  const UserInfo({super.key, this.profile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authP = ref.watch(authProvider);
    return Column(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage:
              (profile?.user?.employeeProfile.photoProfileUrl) != null
                  ? NetworkImage(
                      profile?.user?.employeeProfile.photoProfileUrl ?? '')
                  : null,
          child: profile?.user?.employeeProfile.photoProfileUrl == null
              ? const Icon(Icons.person, size: 80, color: Colors.white)
              : null,
        ),
        SizedBox(height: 8.sp),
        Text(
          authP.value?.name ?? '-',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.sp),
        Text(
          'Employee ID: ${authP.value?.employeeId}',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14.sp),
        ),
        SizedBox(height: 4.sp),
        Text(
          '${authP.value?.employment?.jobPosition?.name}',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14.sp),
        ),
      ],
    );
  }
}
