import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';

class InboxRemoteSource {
  final Dio _dio;

  InboxRemoteSource(this._dio);

  Future<BasePaginatedResponse<NotificationResponse>> getNotifications() async {
    try {
      final response = await _dio.get('api/v1/user/notifications');

      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => NotificationResponse.fromJson(json as Map<String, dynamic>),
        emptyT: () => List.empty(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
