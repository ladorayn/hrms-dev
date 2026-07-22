import 'package:flutter_test/flutter_test.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hrms_mobile/core/util/geocoding_geolocation_mapper.dart';

void main() {
  group('formatPlacemark', () {
    test('joins non-empty address parts with commas', () {
      const place = Placemark(
        street: 'Jl. Sudirman',
        locality: 'Jakarta',
        subAdministrativeArea: 'Jakarta Pusat',
        administrativeArea: 'DKI Jakarta',
        country: 'Indonesia',
      );

      expect(
        formatPlacemark(place),
        'Jl. Sudirman, Jakarta, Jakarta Pusat, DKI Jakarta, Indonesia',
      );
    });

    test('skips null and empty parts', () {
      const place = Placemark(
        street: 'Jl. Thamrin',
        locality: '',
        subAdministrativeArea: null,
        administrativeArea: 'DKI Jakarta',
        country: 'Indonesia',
      );

      expect(
        formatPlacemark(place),
        'Jl. Thamrin, DKI Jakarta, Indonesia',
      );
    });

    test('returns empty string when all parts are empty', () {
      const place = Placemark();
      expect(formatPlacemark(place), isEmpty);
    });
  });
}
