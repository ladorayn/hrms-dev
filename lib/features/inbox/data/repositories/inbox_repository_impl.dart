import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/features/inbox/data/data_sources/inbox_remote_source.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';

class InboxRepositoryImpl implements InboxRepository {
  final InboxRemoteSource remoteSource;

  InboxRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<BasePaginatedResponse<NotificationResponse>> getNotifications({int page = 1}) async {
    return await remoteSource.getNotifications(page: page);
  }
}
