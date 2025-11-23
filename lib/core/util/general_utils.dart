import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;

String calculateDuration(String? clockIn, String? clockOut) {
  if (clockIn == null ||
      clockOut == null ||
      clockIn == '-' ||
      clockOut == '-') {
    return "0h 0m";
  }

  print("CLOCK IN ${clockIn}");
  print("CLOCK OUT ${clockOut}");

  try {
    final inTime = DateFormat("HH:mm").parse(clockIn);
    final outTime = DateFormat("HH:mm").parse(clockOut);
    print("inTime ${inTime}");
    print("outTime ${outTime}");
    final diff = outTime.difference(inTime);

    final hours = diff.inHours;
    final minutes = diff.inMinutes % 60;
    return "${hours}h ${minutes}m";
  } catch (_) {
    return "0h 0m";
  }
}

String calculateDurationWithTotal(int durationMinutes) {
  if (durationMinutes == 0) {
    return "0h 0m";
  }

  try {
    final hours = durationMinutes ~/ 60;
    final minutes = durationMinutes % 60;
    return "${hours}h ${minutes}m";
  } catch (_) {
    return "0h 0m";
  }
}

String? formatTimeForAPI(TimeOfDay? time) {
  if (time == null) return null;
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}

String formatDateForAPI(DateTime? date) {
  if (date == null) return '';
  return DateFormat('yyyy-MM-dd').format(date);
}

Future<PlatformFile?> convertFileToPlatformFile(File? file) async {
  if (file == null) {
    return null;
  }
  // Get metadata from the File object
  final String fileName = path.basename(file.path);
  final int fileSize = await file.length();

  // You must provide the path. The bytes are optional.
  final PlatformFile platformFile = PlatformFile(
    name: fileName,
    path: file.path,
    size: fileSize,
    bytes: null, // Set to null for files not loaded into memory
  );

  return platformFile;
}
