import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/routes/app_router.dart';
import 'package:hrms_mobile/core/widgets/alice_fab.dart'; // ✅ Add this

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'HRMS App',
      theme: ITheme.light,
      darkTheme: ITheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: router,

      // ✅ Inject Alice inspector button globally
      builder: (context, child) {
        return Stack(
          children: [
            child ?? const SizedBox.shrink(),
            const AliceFab(), // shows FAB globally
          ],
        );
      },
    );
  }
}
