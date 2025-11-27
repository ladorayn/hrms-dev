import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/presentation/providers/inbox_provider.dart'; // <--- NEW IMPORT
import 'package:hrms_mobile/features/inbox/presentation/widgets/inbox_message.dart';

// Removed unused import:
// import 'package:hrms_mobile/core/services/notifications/notification_model.dart';

class InboxScreen extends ConsumerWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. Watch the live data from the Riverpod provider
    final notificationsAsync = ref.watch(recentNotificationsProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: IAppBar(
        // Title will be calculated dynamically based on loading state
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

              // We don't need the local notifier here, as marking read will be a use case call
              // final notifier = ref.read(notificationStoreProvider.notifier);

              return ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];

                  return InboxMessage(
                    notification: notification,
                    showDivider: index < notifications.length - 1,
                    onTap: () {
                      // TODO: Implement Mark As Read UseCase call here
                      // e.g., ref.read(inboxUseCaseProvider).markAsRead(notification.id!);

                      // TODO: Implement Deep Linking based on the NotificationData
                      final payload = notification.data?.data;
                      if (payload != null) {
                        debugPrint(
                            "Tapped notification: ${notification.id}. Payload: $payload");
                        // PushNotificationService.navigateFromNotification(payload);
                      }
                    },
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(
              child: Text("No notifications in your inbox."),
            ),
          ),
        ),
      ),
    );
  }
}
