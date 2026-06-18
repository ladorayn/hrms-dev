import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';

abstract class InboxRepository {
  Future<BasePaginatedResponse<NotificationResponse>> getNotifications({int page = 1});
}
