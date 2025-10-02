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
        ? responseData['message'] as String
        : 'An error occurred.';

    switch (statusCode) {
      case 401:
      case 403:
        return UnauthorizedException(message);

      case 422:
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('errors')) {
          final errorsData = responseData['errors'] as Map<String, dynamic>;
          final Map<String, List<String>> parsedErrors = {};
          errorsData.forEach((key, value) {
            if (value is List) {
              parsedErrors[key] = value.map((e) => e.toString()).toList();
            }
          });
          return ValidationException(message, parsedErrors);
        }
        return ValidationException(message, {});
      case 500:
      case 502:
        return ServerException(message); // Removed ?? as message has a fallback
      default:
        return Exception(message);
    }
  }

  return Exception('An unexpected error occurred.');
}
