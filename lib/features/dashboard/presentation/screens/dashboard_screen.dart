import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logoutState = ref.watch(logoutProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            icon: logoutState.isLoading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.logout),
            onPressed: logoutState.isLoading
                ? null
                : () async {
                    final notifier = ref.read(logoutProvider.notifier);
                    await notifier.submit();

                    final state = ref.read(logoutProvider);

                    if (!state.hasError) {
                      if (context.mounted) {
                        context.pushReplacement(RoutePaths.login);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Logout failed: ${state.error}"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push(RoutePaths.attendance);
          },
          child: const Text("Go to Attendance"),
        ),
      ),
    );
  }
}
