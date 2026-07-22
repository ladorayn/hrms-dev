import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';

void main() {
  group('ValidationException.getFirstError', () {
    test('returns first error for existing field', () {
      final exception = ValidationException(
        'Invalid',
        {
          'email': ['The email field is required.', 'Must be valid'],
          'password': ['Too short'],
        },
      );

      expect(exception.getFirstError('email'), 'The email field is required.');
      expect(exception.getFirstError('password'), 'Too short');
    });

    test('returns null for missing field', () {
      final exception = ValidationException(
        'Invalid',
        {
          'email': ['required'],
        },
      );

      expect(exception.getFirstError('name'), isNull);
    });
  });
}
