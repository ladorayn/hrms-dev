// core/navigation/app_router.dart

import 'package:flutter/material.dart'; // Add this import for Placeholder
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/features/app/presentation/screens/splash_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_and_overtime_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_form_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_history_edit_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/face_registration_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/face_verification_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/location_confirmed.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/overtime_history_edit_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_check_email_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_create_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_success_screen.dart';
import 'package:hrms_mobile/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:hrms_mobile/features/dashboard/presentation/screens/main_screen.dart'; // You will create this file
import 'package:hrms_mobile/features/profile/presentation/screens/profile_screen.dart';

import 'route_paths.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  const authRoutes = [
    RoutePaths.splash,
    RoutePaths.login,
  ];

  const publicRoutes = [
    RoutePaths.splash,
    RoutePaths.login,
    RoutePaths.resetPassword,
    RoutePaths.resetPasswordSuccess,
    RoutePaths.resetPasswordCreate,
  ];

  return GoRouter(
    initialLocation: RoutePaths.splash,
    navigatorKey: globalNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (BuildContext context, GoRouterState state) {
      final isOnLogin = state.matchedLocation == RoutePaths.login;
      final isOnSplash = state.matchedLocation == RoutePaths.splash;

      final bool isLoggedIn = authState.hasValue && authState.value != null;
      if (authState.isLoading) {
        return null;
      }
      final isGoingToPublicRoute = publicRoutes.any(
        (route) {
          return state.matchedLocation.startsWith(route);
        },
      );

      if (!isLoggedIn) {
        if (isOnLogin) return null;
        if (isOnSplash) return RoutePaths.login;
        if (!isGoingToPublicRoute) return RoutePaths.login;
      }

      final isGoingToAuthRoute = authRoutes.contains(state.matchedLocation);
      if (isLoggedIn && isGoingToAuthRoute) {
        return RoutePaths.dashboard;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
          path: RoutePaths.login,
          builder: (context, state) {
            return LoginScreen();
          }),
      GoRoute(
        path: RoutePaths.resetPassword,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;

          final token = extras?['token'] as String?;
          final email = extras?['email'] as String?;

          if (token != null && email != null) {
            return ResetPasswordCreateScreen(token: token, email: email);
          }
          return const ResetPasswordEmailScreen();
        },
        routes: [
          GoRoute(
            path: RoutePaths.resetPasswordCheckEmail,
            name: RoutePaths.resetPasswordCheckEmailName,
            builder: (context, state) {
              final email = state.extra as String;
              return ResetPasswordCheckEmailScreen(email: email);
            },
          ),
          GoRoute(
            path: RoutePaths.resetPasswordSuccess,
            name: RoutePaths.resetPasswordSuccessName,
            builder: (context, state) => const ResetPasswordSuccessScreen(),
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.attendanceEdit,
        name: RoutePaths.attendanceEdit,
        builder: (context, state) => const AttendanceHistoryEditScreen(),
      ),
      GoRoute(
        path: RoutePaths.overtimeEdit,
        name: RoutePaths.overtimeEdit,
        builder: (context, state) => const OvertimeHistoryEditScreen(),
      ),
      GoRoute(
        path: RoutePaths.locationConfirmed,
        name: RoutePaths.locationConfirmed,
        builder: (context, state) {
          final activity = state.extra as AttendanceEnum;
          return LocationConfirmedScreen(activity: activity);
        },
      ),
      GoRoute(
        path: RoutePaths.faceRegistration,
        name: RoutePaths.faceRegistration,
        builder: (context, state) {
          final activity = state.extra as AttendanceEnum;
          return FaceRegistrationScreen(activity: activity);
        },
      ),
      GoRoute(
        path: RoutePaths.faceVerification,
        name: RoutePaths.faceVerification,
        builder: (context, state) {
          final activity = state.extra as AttendanceEnum;
          return FaceVerificationScreen(activity: activity);
        },
      ),
      GoRoute(
        path: RoutePaths.attendanceForm,
        name: RoutePaths.attendanceForm,
        builder: (context, state) {
          final activity = state.extra as AttendanceEnum;
          return AttendanceFormScreen(activity: activity);
        },
      ),
      // --- ROUTES WITH THE BOTTOM NAV BAR (Using ShellRoute) ---
      ShellRoute(
        // The 'builder' returns the UI shell (your MainScreen with the Scaffold and BottomNavBar).
        // The 'child' is the screen for the currently active route.
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        routes: [
          // This is the "Home" tab
          GoRoute(
            path: RoutePaths.dashboard,
            builder: (context, state) => const DashboardScreen(),
          ),
          // "Employees" tab
          GoRoute(
            path: RoutePaths.employees,
            builder: (context, state) => const Scaffold(
                body: Center(
                    child: Text(
                        'Employees'))), // Replace with your EmployeesScreen
          ),
          // "Leave Request" tab
          GoRoute(
            path: RoutePaths.leaveRequest,
            builder: (context, state) => const Scaffold(
                body: Center(
                    child: Text(
                        'Leave Request'))), // Replace with your LeaveRequestScreen
          ),
          // "Inbox" tab
          GoRoute(
            path: RoutePaths.inbox,
            builder: (context, state) => const Scaffold(
                body: Center(
                    child: Text('Inbox'))), // Replace with your InboxScreen
          ),
          // "Profile" tab
          GoRoute(
            path: RoutePaths.profile,
            builder: (context, state) => const ProfileScreen(),
            routes: [
              GoRoute(
                path: RoutePaths.attendance,
                name: RoutePaths.attendance,
                builder: (context, state) => const AttendanceOvertimeScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
