import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/presentation/providers/inbox_provider.dart';
import 'package:hrms_mobile/features/inbox/presentation/widgets/inbox_message.dart';

class InboxScreen extends ConsumerStatefulWidget {
  const InboxScreen({super.key});

  @override
  ConsumerState<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends ConsumerState<InboxScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        ref.read(recentNotificationsProvider.notifier).loadMore();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notificationsAsync = ref.watch(recentNotificationsProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: IAppBar(
        title: notificationsAsync.when(
          data: (notifications) => "Inbox",
          loading: () => "Inbox",
          error: (_, __) => "Inbox",
        ),
        centerTitle: true,
        noIcon: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: notificationsAsync.when(
            data: (notifications) {
              if (notifications.isEmpty) {
                return Center(
                  child: Text(
                    "No notifications in your inbox.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                );
              }

              final hasMore = ref.watch(recentNotificationsProvider.notifier).hasMore;

              return RefreshIndicator(
                onRefresh: () async {
                  await ref.read(recentNotificationsProvider.notifier).refresh();
                },
                child: ListView.builder(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: notifications.length + (hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == notifications.length) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final notification = notifications[index];
                    final data = notification.data;

                    return InboxMessage(
                      notification: notification,
                      showDivider: index < notifications.length - 1 || hasMore,
                      onTap: () {
                      debugPrint("=== NOTIFICATION TAPPED ===");
                      debugPrint("ID = ${notification.id}");
                      debugPrint("Title = ${data?.title}");
                      debugPrint("Code = ${data?.code}");
                      debugPrint("Payload = ${data?.data}");

                      final payload = data?.data;
                      if (payload is NotificationPayload) {
                        _handleDeepLink(context, payload, data!.code);
                      }
                    },
                  );
                },
              ),
            );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, stack) {
              debugPrint("ERROR: $e");
              return const Center(child: Text("Something went wrong"));
            },
          ),
        ),
      ),
    );
  }

  // ============================
  // 🔗 DEEP LINK HANDLER
  // ============================
  void _handleDeepLink(
    BuildContext context,
    NotificationPayload payload,
    String rawCode,
  ) {
    final code = NotificationCode.values.firstWhere(
      (c) {
        return c.name.toUpperCase() == toCamelCase(rawCode).toUpperCase();
      },
      orElse: () => NotificationCode.unknown,
    );
    switch (code) {
      // =====================================================
      // LEAVE
      // =====================================================
      case NotificationCode.leaveSubmitted:
        payload.mapOrNull(
          leaveSubmitted: (p) {
            globalNavigatorKey.currentContext?.push(RoutePaths.leaveRequest);
          },
        );
        break;

      case NotificationCode.leaveUpdated:
        payload.mapOrNull(
          leaveUpdated: (p) {
            globalNavigatorKey.currentContext?.push(RoutePaths.leaveRequest);
          },
        );
        break;

      case NotificationCode.leaveReminder:
      case NotificationCode.leaveExpiring:
        globalNavigatorKey.currentContext?.push(RoutePaths.leaveRequest);
        break;

      // =====================================================
      // PAYROLL
      // =====================================================
      case NotificationCode.payslipAvailable:
        payload.mapOrNull(
          payslipAvailable: (p) {
            globalNavigatorKey.currentContext
                ?.pushNamed(RoutePaths.payslipName);
          },
        );
        break;

      case NotificationCode.payslipRequestUpdated:
        globalNavigatorKey.currentContext?.pushNamed(RoutePaths.payslipName);
        break;

      // =====================================================
      // PERFORMANCE
      // =====================================================
      case NotificationCode.performanceSubmitted:
        globalNavigatorKey.currentContext?.push(RoutePaths.performance);
        // context.push("/performance");
        break;

      case NotificationCode.performanceFormOpen:
      case NotificationCode.performanceReminder:
      case NotificationCode.performancePublished:
        globalNavigatorKey.currentContext?.push(RoutePaths.performance);
        // context.push("/performance");
        break;

      // =====================================================
      // OVERTIME
      // =====================================================
      case NotificationCode.overtimeSubmitted:
        payload.mapOrNull(
          overtimeSubmitted: (p) {
            globalNavigatorKey.currentContext?.push(RoutePaths.attendance);
            // context.push("/overtime-history");
          },
        );
        break;

      case NotificationCode.overtimeUpdated:
        globalNavigatorKey.currentContext?.push(RoutePaths.attendance);
        // context.push("/overtime-history");
        break;

      // =====================================================
      // PROFILE
      // =====================================================
      case NotificationCode.profileUpdated:
      case NotificationCode.departmentChanged:
      case NotificationCode.managerChanged:
        globalNavigatorKey.currentContext?.push(RoutePaths.profile);
        // context.push("/profile");
        break;

      // =====================================================
      // SECURITY
      // =====================================================
      case NotificationCode.emailVerification:
      case NotificationCode.resetPasswordRequested:
      case NotificationCode.passwordUpdated:
      case NotificationCode.loginDevice:
        // context.push("/security");
        break;

      // =====================================================
      // ATTENDANCE
      // =====================================================
      case NotificationCode.attendanceReminder:
      case NotificationCode.attendanceNotPresent:
        globalNavigatorKey.currentContext?.push(RoutePaths.attendance);
        // context.push("/attendance");
        break;

      // =====================================================
      // OFFBOARDING
      // =====================================================
      case NotificationCode.offboardingStarted:
        globalNavigatorKey.currentContext
            ?.pushNamed(RoutePaths.offboardingName);
        // context.push("/offboarding");
        break;
      case NotificationCode.exitInterviewSchedule:
        payload.mapOrNull(
          exitInterviewSchedule: (p) {
            final payload = p;
            globalNavigatorKey.currentContext
                ?.pushNamed(RoutePaths.exitScheduleName, extra: payload);
          },
        );
        break;
      case NotificationCode.offboardingValidateHandover:
        payload.mapOrNull(
          offboardingValidateHandover: (p) {
            final payload = p;
            globalNavigatorKey.currentContext?.pushNamed(
                RoutePaths.responsibilityHandoverName,
                extra: payload);
          },
        );

      // =====================================================
      // Supervisor Assessment Schedule
      // =====================================================
      case NotificationCode.supervisorAssessmentSchedule:
        payload.mapOrNull(
          supervisorAssessmentSchedule: (p) {
            final payload = p;
            globalNavigatorKey.currentContext?.pushNamed(
                RoutePaths.supervisorAssessmentScheduleName,
                extra: payload);
          },
        );
        break;

      // =====================================================
      // BUSINESS TRIP
      // =====================================================
      case NotificationCode.businessTripStatusUpdated:
        payload.mapOrNull(
          businessTripStatusUpdated: (p) {
            final payload = p;
            final int? id = int.tryParse(payload.businessTripId ?? '');
            globalNavigatorKey.currentContext?.push(
              RoutePaths.businessTripDetail,
              extra: id,
            );
          },
        );
        break;
      // =====================================================
      // DEFAULT
      // =====================================================
      case NotificationCode.unknown:
      default:
        debugPrint("⚠️ Unhandled notification code: $rawCode");
        break;
    }
  }
}
