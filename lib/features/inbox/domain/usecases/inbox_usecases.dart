import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';

class InboxUsecases {
  final InboxRepository repository;

  InboxUsecases(this.repository);

  Future<List<NotificationResponse>> getNotifications() {
    return repository.getNotifications();
  }
}
