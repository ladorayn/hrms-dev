import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/l10n/locale_provider.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/routes/app_router.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';
import 'package:hrms_mobile/firebase_options.dart';
import 'package:no_screenshot/no_screenshot.dart';

import 'package:hrms_mobile/core/services/notifications/providers/fcm_token_sync_provider.dart';

import 'core/services/notifications/providers/push_notification_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await dotenv.load(fileName: ".env.$flavor");

  if (!Platform.isIOS) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await LocalNotificationService.initializePlatformNotifications();
  }
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
    bool isNoScreenshot = dotenv.get('NO_SCREENSHOT') == 'true';
    if (isNoScreenshot) {
      _noScreenshot.screenshotOff();
    }

    if (!Platform.isIOS) {
      final pushService = ref.read(pushNotificationServiceProvider);
      pushService.initializePushNotifications();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    bool isNoScreenshot = dotenv.get('NO_SCREENSHOT') == 'true';
    if (isNoScreenshot) {
      _noScreenshot.screenshotOff();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _noScreenshot.screenshotOn();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(fcmTokenSyncProvider);
    final router = ref.watch(appRouterProvider);
    final localeAsync = ref.watch(localeProvider);

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: ' ESS CPS',
            theme: ITheme.light,
            locale: localeAsync.value,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            themeMode: ThemeMode.system,
            routerConfig: router,
            builder: (context, child) => child!,
          );
        });
  }
}
