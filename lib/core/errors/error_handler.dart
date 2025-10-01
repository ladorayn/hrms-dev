import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';

Exception handleDioError(DioException e) {
  if (e.type == DioExceptionType.connectionError ||
      e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.sendTimeout ||
      e.type == DioExceptionType.receiveTimeout) {
    return NetworkException('Please check your internet connection.');
  }

  if (e.response != null) {
    final statusCode = e.response!.statusCode;
    final responseData = e.response!.data;

    final message = (responseData is Map<String, dynamic> &&
            responseData.containsKey('message'))
        ? responseData['message']
        : 'An error occurred.';

    switch (statusCode) {
      case 401:
      case 403:
        return UnauthorizedException(message);
      case 500:
      case 502:
        return ServerException(
            message ?? 'Server error, please try again later.');
      default:
        return Exception(message);
    }
  }

  return Exception('An unexpected error occurred.');
}
