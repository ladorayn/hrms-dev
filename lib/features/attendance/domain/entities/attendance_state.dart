import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';

class AttendanceState extends Equatable {
  final Position? position;
  final String? address;
  final DateTime? clockInTime;
  final DateTime? clockOutTime;
  final AttendanceEnum? activity;
  final bool isLoading;
  final String? error;

  const AttendanceState({
    this.position,
    this.address,
    this.clockInTime,
    this.clockOutTime,
    this.activity,
    this.isLoading = false,
    this.error,
  });

  AttendanceState copyWith({
    Position? position,
    String? address,
    DateTime? clockInTime,
    DateTime? clockOutTime,
    AttendanceEnum? activity,
    bool? isLoading,
    String? error,
  }) {
    return AttendanceState(
      position: position ?? this.position,
      address: address ?? this.address,
      clockInTime: clockInTime ?? this.clockInTime,
      clockOutTime: clockOutTime ?? this.clockOutTime,
      activity: activity ?? this.activity,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        position,
        address,
        clockInTime,
        clockOutTime,
        activity,
        isLoading,
        error
      ];
}
