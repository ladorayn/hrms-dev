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
          data: (notifications) {
            final unreadCount =
                notifications.where((n) => n.readAt == null).length;
            // return "Inbox ($unreadCount)";
            return "Inbox";
          },
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

                      if (data?.data != null) {
                        _handleDeepLink(context, data!.data, data.code);
                      }
                    },
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, stack) {
              return const Center(child: Text("Something went wrong"));
            },
          ),
        ),
      ),
    );
  }

  // NEXT DEVELOPMENT
  void _handleDeepLink(
    BuildContext context,
    NotificationPayload payload,
    String rawCode,
  ) {
    final code = NotificationCode.values.firstWhere(
      (c) => c.name == rawCode,
      orElse: () => NotificationCode.UNKNOWN,
    );

    switch (code) {
      case NotificationCode.LEAVE_SUBMITTED:
        // payload.mapOrNull(
        //   leaveSubmitted: (p) {
        //     context.push("/leave-history"); // Or details page if you have it
        //   },
        // );
        break;

      // -------------------------
      // LEAVE UPDATED
      // -------------------------
      case NotificationCode.LEAVE_UPDATED:
        // payload.mapOrNull(
        //   leaveUpdated: (p) {
        //     context.push("/leave-history");
        //   },
        // );
        break;

      // -------------------------
      // PAYSLIP AVAILABLE
      // -------------------------
      case NotificationCode.PAYSLIP_AVAILABLE:
        // payload.mapOrNull(
        //   payslipAvailable: (p) {
        //     context.push("/payslip/${p.period}");
        //   },
        // );
        break;

      // -------------------------
      // PERFORMANCE SUBMITTED
      // -------------------------
      case NotificationCode.PERFORMANCE_SUBMITTED:
        // context.push("/performance");
        break;

      // -------------------------
      // OVERTIME SUBMITTED
      // -------------------------
      case NotificationCode.OVERTIME_SUBMITTED:
        // payload.mapOrNull(
        //   overtimeSubmitted: (p) {
        //     context.push("/overtime-history");
        //   },
        // );
        break;

      // -------------------------
      // UNKNOWN OR UNHANDLED
      // -------------------------
      case NotificationCode.UNKNOWN:
      default:
        debugPrint("⚠️ Unhandled notification code: $rawCode");
        break;
    }
  }
}
