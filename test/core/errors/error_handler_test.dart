import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';

void main() {
  final requestOptions = RequestOptions(path: '/test');

  DioException dioWith({
    required DioExceptionType type,
    Response? response,
  }) {
    return DioException(
      requestOptions: requestOptions,
      type: type,
      response: response,
    );
  }

  Response responseWith({
    required int statusCode,
    dynamic data,
  }) {
    return Response(
      requestOptions: requestOptions,
      statusCode: statusCode,
      data: data,
    );
  }

  group('handleDioError — network / timeout', () {
    test('connectionTimeout → NetworkException', () {
      final result = handleDioError(
        dioWith(type: DioExceptionType.connectionTimeout),
      );
      expect(result, isA<NetworkException>());
      expect(result.toString(), 'Please check your internet connection.');
    });

    test('connectionError → NetworkException', () {
      expect(
        handleDioError(dioWith(type: DioExceptionType.connectionError)),
        isA<NetworkException>(),
      );
    });

    test('sendTimeout → NetworkException', () {
      expect(
        handleDioError(dioWith(type: DioExceptionType.sendTimeout)),
        isA<NetworkException>(),
      );
    });

    test('receiveTimeout → NetworkException', () {
      expect(
        handleDioError(dioWith(type: DioExceptionType.receiveTimeout)),
        isA<NetworkException>(),
      );
    });
  });

  group('handleDioError — HTTP 401 / 403', () {
    test('401 → UnauthorizedException', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 401,
            data: {'message': 'Token expired'},
          ),
        ),
      );
      expect(result, isA<UnauthorizedException>());
      expect(result.toString(), 'Token expired');
    });

    test('403 → UnauthorizedException', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 403,
            data: {'message': 'Forbidden'},
          ),
        ),
      );
      expect(result, isA<UnauthorizedException>());
    });
  });

  group('handleDioError — HTTP 422', () {
    test('422 with errors map → ValidationException', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 422,
            data: {
              'message': 'The given data was invalid.',
              'errors': {
                'email': ['The email field is required.'],
                'password': ['Too short', 'Needs a number'],
              },
            },
          ),
        ),
      );
      expect(result, isA<ValidationException>());
      final validation = result as ValidationException;
      expect(validation.message, 'The given data was invalid.');
      expect(validation.errors['email'], ['The email field is required.']);
      expect(validation.getFirstError('email'), 'The email field is required.');
    });

    test('422 without errors key → empty map', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 422,
            data: {'message': 'Invalid'},
          ),
        ),
      ) as ValidationException;
      expect(result.errors, isEmpty);
    });
  });

  group('handleDioError — HTTP 500 / 502', () {
    test('500 → ServerException', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 500,
            data: {'message': 'Internal error'},
          ),
        ),
      );
      expect(result, isA<ServerException>());
    });

    test('502 → ServerException', () {
      expect(
        handleDioError(
          dioWith(
            type: DioExceptionType.badResponse,
            response: responseWith(
              statusCode: 502,
              data: {'message': 'Bad gateway'},
            ),
          ),
        ),
        isA<ServerException>(),
      );
    });
  });

  group('handleDioError — other / fallbacks', () {
    test('404 → BadResponseException', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(
            statusCode: 404,
            data: {'message': 'Not found'},
          ),
        ),
      );
      expect(result, isA<BadResponseException>());
    });

    test('response without message → fallback', () {
      final result = handleDioError(
        dioWith(
          type: DioExceptionType.badResponse,
          response: responseWith(statusCode: 404, data: {'code': 'x'}),
        ),
      );
      expect(result.toString(), 'An error occurred.');
    });

    test('no response non-timeout → generic Exception', () {
      final result = handleDioError(dioWith(type: DioExceptionType.cancel));
      expect(result.toString(), contains('An unexpected error occurred.'));
      expect(result, isNot(isA<NetworkException>()));
    });
  });
}
