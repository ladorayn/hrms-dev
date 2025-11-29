import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/presentation/providers/inbox_provider.dart';
import 'package:hrms_mobile/features/inbox/presentation/widgets/inbox_message.dart';

class InboxScreen extends ConsumerWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

              return ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  final data = notification.data;

                  return InboxMessage(
                    notification: notification,
                    showDivider: index < notifications.length - 1,
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
    // Convert UPPERCASE BE → enum camelCase
    final code = NotificationCode.values.firstWhere(
      (c) => c.name.toUpperCase() == rawCode.toUpperCase(),
      orElse: () => NotificationCode.unknown,
    );

    switch (code) {
      // =====================================================
      // LEAVE
      // =====================================================
      case NotificationCode.leaveSubmitted:
        payload.mapOrNull(
          leaveSubmitted: (p) {
            // context.push("/leave-history");
          },
        );
        break;

      case NotificationCode.leaveUpdated:
        payload.mapOrNull(
          leaveUpdated: (p) {
            // context.push("/leave-history");
          },
        );
        break;

      case NotificationCode.leaveReminder:
      case NotificationCode.leaveExpiring:
        // context.push("/leave-balance");
        break;

      // =====================================================
      // PAYROLL
      // =====================================================
      case NotificationCode.payslipAvailable:
        payload.mapOrNull(
          payslipAvailable: (p) {
            // context.push("/payslip/${p.period}");
          },
        );
        break;

      case NotificationCode.payslipRequestUpdated:
        // context.push("/payslip");
        break;

      // =====================================================
      // PERFORMANCE
      // =====================================================
      case NotificationCode.performanceSubmitted:
        // context.push("/performance");
        break;

      case NotificationCode.performanceFormOpen:
      case NotificationCode.performanceReminder:
      case NotificationCode.performancePublished:
        // context.push("/performance");
        break;

      // =====================================================
      // OVERTIME
      // =====================================================
      case NotificationCode.overtimeSubmitted:
        payload.mapOrNull(
          overtimeSubmitted: (p) {
            // context.push("/overtime-history");
          },
        );
        break;

      case NotificationCode.overtimeUpdated:
        // context.push("/overtime-history");
        break;

      // =====================================================
      // PROFILE
      // =====================================================
      case NotificationCode.profileUpdated:
      case NotificationCode.departmentChanged:
      case NotificationCode.managerChanged:
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
        // context.push("/attendance");
        break;

      // =====================================================
      // OFFBOARDING
      // =====================================================
      case NotificationCode.offboardingStarted:
      case NotificationCode.exitInterviewSchedule:
        // context.push("/offboarding");
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
