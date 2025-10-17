class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(this.message);

  @override
  String toString() => 'UnauthorizedException: $message';
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class ServerException implements Exception {
  final String message;
  ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

class ValidationException implements Exception {
  final String message;
  final Map<String, List<String>> errors;

  ValidationException(this.message, this.errors);

  String? getFirstError(String field) {
    return errors[field]?.first;
  }

  @override
  String toString() => 'ValidationException: $message, Errors: $errors';
}
