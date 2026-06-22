import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';

class InboxUsecases {
  final InboxRepository repository;

  InboxUsecases(this.repository);

  Future<BasePaginatedResponse<NotificationResponse>> getNotifications({int page = 1}) {
    return repository.getNotifications(page: page);
  }
}
