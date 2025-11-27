import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';

abstract class InboxRepository {
  Future<List<NotificationResponse>> getNotifications();
}
