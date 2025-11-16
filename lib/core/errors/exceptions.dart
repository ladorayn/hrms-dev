class DataNotFoundException implements Exception {
  final String message;

  DataNotFoundException([this.message = "The requested data was not found."]);

  @override
  String toString() => "$message";
}

class BadResponseException implements Exception {
  final String message;

  BadResponseException(this.message);

  @override
  String toString() => message;
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException(this.message);

  @override
  String toString() => '$message';
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() => '$message';
}

class ServerException implements Exception {
  final String message;

  ServerException(this.message);

  @override
  String toString() => '$message';
}

class ValidationException implements Exception {
  final String message;
  final Map<String, List<String>> errors;

  ValidationException(this.message, this.errors);

  String? getFirstError(String field) {
    return errors[field]?.first;
  }

  @override
  String toString() => '$message, Errors: $errors';
}
