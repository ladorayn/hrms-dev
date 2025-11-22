import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/routes/app_router.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';
import 'package:no_screenshot/no_screenshot.dart';

Future<void> main() async {
  // Will be used later
  WidgetsFlutterBinding.ensureInitialized();

  await LocalNotificationService.initializePlatformNotifications();

  // LOCK ORIENTATION DEVICE
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  final _noScreenshot = NoScreenshot.instance;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _noScreenshot.screenshotOff();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _noScreenshot.screenshotOff();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _noScreenshot.screenshotOn();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'HRMS App',
            theme: ITheme.light,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            themeMode: ThemeMode.system,
            routerConfig: router,
            builder: (context, child) => child!,
          );
        });
  }
}
