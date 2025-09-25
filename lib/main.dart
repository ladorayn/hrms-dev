import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/routes/app_router.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/services/notifications/local_notification_service.dart';

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

class _MyAppState extends ConsumerState<MyApp> {
  late final AppLinks _appLinks;
  StreamSubscription<Uri>? _uriSubscription;

  @override
  void initState() {
    super.initState();
    _initDeepLinks();
  }

  Future<void> _initDeepLinks() async {
    _appLinks = AppLinks();

    final initialUri = await _appLinks.getInitialLink();
    if (initialUri != null) {
      _handleUri(initialUri);
    }

    _uriSubscription = _appLinks.uriLinkStream.listen((uri) {
      _handleUri(uri);
    }, onError: (err) {
      debugPrint("Deep link error: $err");
    });
  }

  void _handleUri(Uri uri) {
    debugPrint("Received deep link: $uri - ${uri.host} - ${uri.query}");

    final router = ref.read(appRouterProvider);

    if (uri.host == "reset-password") {
      final token = uri.queryParameters['token'];
      final email = uri.queryParameters['email'];

      router.go(
        RoutePaths.resetPassword,
        extra: {
          'token': token,
          'email': email,
        },
      );
    }
  }

  @override
  void dispose() {
    _uriSubscription?.cancel();
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
            darkTheme: ITheme.dark,
            themeMode: ThemeMode.system,
            routerConfig: router,
          );
        });
  }
}
