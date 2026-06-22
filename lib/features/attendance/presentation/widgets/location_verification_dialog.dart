import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/core/config/manual_capture.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/validate_location/validate_location_request_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

Future<void> handleLocationVerification(
    BuildContext context, AttendanceEnum activity, WidgetRef ref,
    {int? selectedBranchId}) async {
  final l10n = AppLocalizations.of(context)!;
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
                l10n.attendanceVerificationInProgress(activity.title(l10n)),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                l10n.attendanceLocationVerificationBody(
                    activity.sentence(l10n)),
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

    if (isManualCaptureBypassActive) {
      await Future.delayed(const Duration(milliseconds: 800));
      final position = Position(
        latitude: -6.2088,
        longitude: 106.8456,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 0,
        altitudeAccuracy: 0,
        heading: 0,
        headingAccuracy: 0,
        speed: 0,
        speedAccuracy: 0,
      );
      ref.read(attendanceProvider.notifier).updatePosition(position);
      if (activity == AttendanceEnum.clockIn) {
        ref.read(attendanceProvider.notifier).setClockInTime();
      }
      if (activity == AttendanceEnum.clockOut) {
        ref.read(attendanceProvider.notifier).setClockOutTime();
      }
      ref
          .read(attendanceProvider.notifier)
          .updateAddress(l10n.attendanceManualCaptureBypass);
      globalNavigatorKey.currentContext?.pop();
      globalNavigatorKey.currentContext?.pushNamed(
        RoutePaths.locationConfirmed,
        extra: activity,
      );
      return;
    }

<<<<<<< HEAD
=======
    final authP = ref.watch(authProvider);

>>>>>>> 38de224c4ccbd8079953178061790c3290e8310f
    await Future.delayed(const Duration(seconds: 2));

    Position position = await _determinePosition(l10n);
    print(
        'Location retrieved: Lat: ${position.latitude}, Long: ${position.longitude}');

    final validationRequest = ValidateLocationRequestModel(
      latitude: position.latitude.toString(),
      longitude: position.longitude.toString(),
      branchId: selectedBranchId ?? authP.value?.branch?.id,
    );

    final validationResult =
        await ref.read(validateLocationProvider(validationRequest).future);

    if (validationResult.isValid != true) {
      globalNavigatorKey.currentContext?.pop();
      showCustomToast(
          context,
          l10n.attendanceLocationNotValid(
            validationResult.distance?.toStringAsFixed(0) ?? '0',
            validationResult.maxRadius?.toString() ?? '0',
          ),
          ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //       content: Text(
      //           'Location is not valid. You are ~${validationResult.distance?.toStringAsFixed(0)}m away. Max radius is ${validationResult.maxRadius}m.')),
      // );
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
    showCustomToast(context, l10n.attendanceCouldNotGetLocation(e.toString()),
        ToastType.error);
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text('Error: Could not get location. ${e.toString()}')),
    // );
  }
}

Future<Position> _determinePosition(AppLocalizations l10n) async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error(l10n.attendanceLocationServicesDisabled);
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error(l10n.attendanceLocationPermissionDenied);
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(l10n.attendanceLocationPermissionDeniedForever);
  }

  return await Geolocator.getCurrentPosition(
    locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
  );
}
