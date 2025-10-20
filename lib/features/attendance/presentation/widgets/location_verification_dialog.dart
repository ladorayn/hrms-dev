import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/validate_location/validate_location_request_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';

Future<void> handleLocationVerification(
    BuildContext context, AttendanceEnum activity, WidgetRef ref) async {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 24),
              Text(
                '${activity.title} Verification in Progress',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "We're verifying your current location before completing the ${activity.sentence} process. Please make sure location access is enabled and you're within the allowed work area.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  try {
    ref.read(attendanceProvider.notifier).setActivity(activity);

    await Future.delayed(const Duration(seconds: 2));

    Position position = await _determinePosition();
    print(
        'Location retrieved: Lat: ${position.latitude}, Long: ${position.longitude}');

    final validationRequest = ValidateLocationRequestModel(
      latitude: position.latitude.toString(),
      longitude: position.longitude.toString(),
    );

    final validationResult =
        await ref.read(validateLocationProvider(validationRequest).future);

    if (validationResult.isValid != true) {
      globalNavigatorKey.currentContext?.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Location is not valid. You are ~${validationResult.distance?.toStringAsFixed(0)}m away. Max radius is ${validationResult.maxRadius}m.')),
      );
      return;
    }

    ref.read(attendanceProvider.notifier).updatePosition(position);

    if (activity == AttendanceEnum.clockIn) {
      ref.read(attendanceProvider.notifier).setClockInTime();
    }

    if (activity == AttendanceEnum.clockOut) {
      ref.read(attendanceProvider.notifier).setClockOutTime();
    }

    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    if (placemarks.isNotEmpty) {
      final Placemark p = placemarks.first;
      final String formattedAddress =
          "${p.street}, ${p.subLocality}, ${p.locality}, ${p.administrativeArea}";

      print('✅ Address Found: $formattedAddress');

      // Save the address string to the provider
      ref.read(attendanceProvider.notifier).updateAddress(formattedAddress);
    }

    globalNavigatorKey.currentContext?.pop();

    if (position.latitude != 0 && position.longitude != 0) {
      globalNavigatorKey.currentContext?.pushNamed(
        RoutePaths.locationConfirmed,
        extra: activity,
      );
    }
  } catch (e) {
    print('Error during location verification: $e');
    globalNavigatorKey.currentContext?.pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: Could not get location. ${e.toString()}')),
    );
  }
}

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  return await Geolocator.getCurrentPosition(
    locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
  );
}
