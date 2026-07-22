import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/util/i_strings_utils.dart';

void main() {
  group('IStringUtils.emailValidation', () {
    test('accepts valid emails', () {
      expect(IStringUtils.emailValidation('ada@example.com'), isTrue);
      expect(IStringUtils.emailValidation('user.name+tag@domain.co'), isTrue);
    });

    test('rejects invalid emails', () {
      expect(IStringUtils.emailValidation('not-an-email'), isFalse);
      expect(IStringUtils.emailValidation(''), isFalse);
      expect(IStringUtils.emailValidation('@missing.local'), isFalse);
    });
  });

  group('IStringUtils.getRandomString', () {
    test('returns string of requested length', () {
      expect(IStringUtils.getRandomString(8).length, 8);
      expect(IStringUtils.getRandomString(0), isEmpty);
    });
  });

  group('IStringUtils.convertNumber', () {
    test('prefixes country code for longer numbers', () {
      expect(IStringUtils.convertNumber('628123456789'), '+62 8123456789');
    });

    test('returns short numbers unchanged', () {
      expect(IStringUtils.convertNumber('62'), '62');
      expect(IStringUtils.convertNumber('6'), '6');
    });
  });
}
