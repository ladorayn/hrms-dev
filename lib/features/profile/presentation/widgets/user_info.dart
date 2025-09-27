import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

class UserInfo extends ConsumerWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authP = ref.watch(authProvider);
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: (authP.value?.photoProfileUrl?.isNotEmpty ?? false)
              ? NetworkImage(authP.value!.photoProfileUrl!)
              : null,
          child: (authP.value?.photoProfileUrl?.isEmpty ?? true)
              ? const Icon(Icons.person, size: 80, color: Colors.white)
              : null,
        ),
        const SizedBox(height: 16),
        Text(
          authP.value?.name ?? '-',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Employee ID: ${authP.value?.employeeId}',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          '${authP.value?.employment?.jobPosition?.name}',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        ),
      ],
    );
  }
}
