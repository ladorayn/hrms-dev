import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/features/app/presentation/screens/splash_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:hrms_mobile/features/dashboard/presentation/screens/dashboard_screen.dart';

import 'route_paths.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    navigatorKey: globalNavigatorKey,
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutePaths.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutePaths.dashboard,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: RoutePaths.attendance,
        builder: (context, state) => const AttendanceScreen(),
      ),
    ],
  );
});
