import 'package:geocoding/geocoding.dart';

String formatPlacemark(Placemark place) {
  final addressParts = [
    place.street,
    place.locality,
    place.subAdministrativeArea,
    place.administrativeArea,
    place.country,
  ];
  final validParts =
      addressParts.where((part) => part != null && part.isNotEmpty);
  return validParts.join(', ');
}

Future<String> getAddressFromLatLng(double latitude, double longitude) async {
  try {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);

    if (placemarks.isNotEmpty) {
      final Placemark firstPlacemark = placemarks[0];
      return formatPlacemark(firstPlacemark);
    } else {
      return "No address found for these coordinates.";
    }
  } catch (e) {
    print("Error getting address: $e");
    return "Could not get address.";
  }
}
