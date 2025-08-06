import 'dart:convert';
import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/attendance.dart';

class AttendanceLocalSource {
  Future<List<Attendance>> getAttendance() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(StorageKeys.attendanceList);
    if (data == null) return [];
    final list = jsonDecode(data) as List;
    return list.map((e) => Attendance.fromJson(e)).toList();
  }

  Future<void> saveAttendance(List<Attendance> list) async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = jsonEncode(list.map((e) => e.toJson()).toList());
    await prefs.setString(StorageKeys.attendanceList, encoded);
  }
}
