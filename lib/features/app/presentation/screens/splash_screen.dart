import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/app/application_init.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final init = ref.watch(appStartupProvider);

    return Scaffold(
      body: Center(
        child: init.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text("Error: $err"),
          data: (isLoggedIn) {
            print("HEHEHEHEHHEE");
            Future.microtask(() {
              final next = isLoggedIn ? RoutePaths.dashboard : RoutePaths.login;
              context.go(next);
            });
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
