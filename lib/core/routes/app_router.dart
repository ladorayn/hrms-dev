// core/navigation/app_router.dart

import 'package:flutter/material.dart'; // Add this import for Placeholder
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/features/app/presentation/screens/splash_screen.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/overtime/overtime_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_and_overtime_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_form_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/attendance_history_edit_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/face_registration_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/face_verification_screen.dart';
import 'package:hrms_mobile/features/attendance/presentation/screens/location_confirmed.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_check_email_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_create_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_screen.dart';
import 'package:hrms_mobile/features/auth/presentation/screens/reset_password/reset_password_success_screen.dart';
import 'package:hrms_mobile/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:hrms_mobile/features/dashboard/presentation/screens/main_screen.dart'; // You will create this file
import 'package:hrms_mobile/features/leave_request/presentation/screens/leave_request_detail_screen.dart';
import 'package:hrms_mobile/features/leave_request/presentation/screens/leave_request_form_screen.dart';
import 'package:hrms_mobile/features/leave_request/presentation/screens/leave_request_screen.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/screens/document_handover_screen.dart';
import 'package:hrms_mobile/features/offboarding/presentation/screens/exit_form_screen.dart';
import 'package:hrms_mobile/features/offboarding/presentation/screens/offboarding_screen.dart';
import 'package:hrms_mobile/features/offboarding/presentation/screens/work_handover_screen.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/screens/overtime_history_edit_screen.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/screens/overtime_request_screen.dart';
import 'package:hrms_mobile/features/payslip/presentation/screens/payslip_print_request_screen.dart';
import 'package:hrms_mobile/features/payslip/presentation/screens/payslip_screen.dart';
import 'package:hrms_mobile/features/payslip/presentation/screens/payslip_view_request_screen.dart';
import 'package:hrms_mobile/features/payslip/presentation/screens/payslip_view_screen.dart';
import 'package:hrms_mobile/features/performance/presentation/screens/assessment_form_manager_screen.dart';
import 'package:hrms_mobile/features/performance/presentation/screens/assessment_form_screen.dart';
import 'package:hrms_mobile/features/performance/presentation/screens/performance_screen.dart';
import 'package:hrms_mobile/features/performance/presentation/screens/self_assessment_manager_screen.dart';
import 'package:hrms_mobile/features/performance/presentation/screens/self_assessment_screen.dart';
import 'package:hrms_mobile/features/profile/presentation/screens/profile_detail_screen.dart';
import 'package:hrms_mobile/features/profile/presentation/screens/profile_edit_screen.dart';
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
        path: RoutePaths.resetPasswordCreate,
        name: RoutePaths.resetPasswordCreateName,
        builder: (context, state) {
          final obj = state.extra as Map<String, dynamic>;
          final email = obj['email'] as String;
          final password = obj['password'] as String;
          final isFirstLogin = obj['isFirstLogin'] as bool;
          return ResetPasswordCreateScreen(
              email: email,
              currentPassword: password,
              isFirstLogin: isFirstLogin);
        },
      ),
      GoRoute(
        path: RoutePaths.resetPassword,
        builder: (context, state) {
          final extras = state.uri.queryParameters as Map<String, dynamic>?;

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
        name: RoutePaths.attendanceEditName,
        builder: (context, state) {
          final attendance = state.extra as AttendanceDetail;
          return AttendanceHistoryEditScreen(attendance: attendance);
        },
      ),
      GoRoute(
        path: RoutePaths.overtimeEdit,
        name: RoutePaths.overtimeEditName,
        builder: (context, state) {
          final overtime = state.extra as OvertimeDetail;
          return OvertimeHistoryEditScreen(overtime: overtime);
        },
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
      GoRoute(
        path: RoutePaths.overtimeRequest,
        name: RoutePaths.overtimeRequest,
        builder: (context, state) {
          return OvertimeRequestScreen();
        },
      ),
      GoRoute(
        path: RoutePaths.leaveRequestForm,
        name: RoutePaths.leaveRequestFormName,
        builder: (context, state) {
          return LeaveRequestFormScreen();
        },
      ),
      GoRoute(
        path: RoutePaths.leaveDetail,
        name: RoutePaths.leaveDetailName,
        builder: (context, state) {
          final id = state.extra as int;
          return LeaveRequestDetailScreen(
            leaveId: id,
          );
        },
      ),
      GoRoute(
        path: RoutePaths.offboarding,
        name: RoutePaths.offboardingName,
        builder: (context, state) {
          final data = state.extra as OffboardingStatusResponse;
          return OffboardingScreen(
            data: data,
          );
        },
      ),
      GoRoute(
        path: RoutePaths.exitForm,
        name: RoutePaths.exitFormName,
        builder: (context, state) {
          final data = state.extra as OffboardingStatusResponse;
          return ExitFormScreen(data: data);
        },
      ),
      GoRoute(
        path: RoutePaths.workHandover,
        name: RoutePaths.workHandoverName,
        builder: (context, state) {
          final data = state.extra as OffboardingStatusResponse;
          return WorkHandoverScreen(
            data: data,
          );
        },
      ),
      GoRoute(
        path: RoutePaths.documentHandover,
        name: RoutePaths.documentHandoverName,
        builder: (context, state) {
          final data = state.extra as OffboardingStatusResponse;
          return DocumentHandoverScreen(data: data);
        },
      ),
      GoRoute(
        path: RoutePaths.payslip,
        name: RoutePaths.payslipName,
        builder: (context, state) => const PayslipScreen(),
      ),
      GoRoute(
        path: RoutePaths.payslipViewRequest,
        name: RoutePaths.payslipViewRequestName,
        builder: (context, state) => const PayslipViewRequestScreen(),
      ),
      GoRoute(
        path: RoutePaths.payslipView,
        name: RoutePaths.payslipViewName,
        builder: (context, state) => const PayslipViewScreen(),
      ),
      GoRoute(
        path: RoutePaths.payslipPrintRequest,
        name: RoutePaths.payslipPrintRequestName,
        builder: (context, state) => const PayslipPrintRequestScreen(),
      ),
      GoRoute(
        path: RoutePaths.attendance,
        name: RoutePaths.attendance,
        builder: (context, state) => const AttendanceOvertimeScreen(),
      ),
      GoRoute(
        path: RoutePaths.profileDetail,
        name: RoutePaths.profileDetailName,
        builder: (context, state) => const ProfileDetailScreen(),
      ),
      GoRoute(
        path: RoutePaths.profileEdit,
        name: RoutePaths.profileEditName,
        builder: (context, state) {
          final profile = state.extra as EmployeeProfile;
          return ProfileEditScreen(profile: profile);
        },
      ),
      GoRoute(
        path: RoutePaths.selfAssessment,
        name: RoutePaths.selfAssessmentName,
        builder: (context, state) =>
            const SelfAssessmentScreen(), // Replace with your EmployeesScreen
      ),
      GoRoute(
        path: RoutePaths.assessmentForm,
        name: RoutePaths.assessmentFormName,
        builder: (context, state) =>
            const AssessmentFormScreen(), // Replace with your EmployeesScreen
      ),
      GoRoute(
        path: RoutePaths.managerAssessment,
        name: RoutePaths.managerAssessmentName,
        builder: (context, state) => const ManagerAssessmentLandingScreen(
            quarterTitle: "Self Assessment-Q4 2025"),
      ),
      GoRoute(
        path: RoutePaths.assessmentManagerForm,
        name: RoutePaths.assessmentManagerFormName,
        builder: (context, state) =>
            const AssessmentFormManagerScreen(), // Replace with your EmployeesScreen
      ),
      // --- ROUTES WITH THE BOTTOM NAV BAR (Using ShellRoute) ---
      ShellRoute(
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        routes: [
          // "Home" tab
          GoRoute(
            path: RoutePaths.dashboard,
            builder: (context, state) => const DashboardScreen(),
          ),
          // "Performance" tab
          GoRoute(
            path: RoutePaths.performance,
            builder: (context, state) =>
                const PerformanceScreen(), // Replace with your EmployeesScreen
          ),
          // "Leave Request" tab
          GoRoute(
            path: RoutePaths.leaveRequest,
            builder: (context, state) => const LeaveRequestScreen(),
          ),
          // "Inbox" tab
          GoRoute(
            path: RoutePaths.inbox,
            builder: (context, state) =>
                const Scaffold(body: Center(child: Text('Inbox'))),
          ),
          // "Profile" tab
          GoRoute(
            path: RoutePaths.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
});
