import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

class UserInfo extends ConsumerWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authP = ref.watch(authProvider);
    return Column(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: (authP.value?.photoProfileUrl?.isNotEmpty ?? false)
              ? NetworkImage(authP.value!.photoProfileUrl!)
              : null,
          child: (authP.value?.photoProfileUrl?.isEmpty ?? true)
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
