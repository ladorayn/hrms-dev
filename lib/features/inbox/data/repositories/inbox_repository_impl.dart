import 'package:hrms_mobile/features/inbox/data/data_sources/inbox_remote_source.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';

class InboxRepositoryImpl implements InboxRepository {
  final InboxRemoteSource remoteSource;

  InboxRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<List<NotificationResponse>> getNotifications() async {
    final response = await remoteSource.getNotifications();
    return response.data;
  }
}
