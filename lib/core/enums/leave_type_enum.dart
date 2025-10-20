// lib/core/enums/leave_type_enum.dart
import 'package:flutter/material.dart';

// A simple helper class to hold color pairs
class LeaveTypeColors {
  final Color background;
  final Color foreground;
  const LeaveTypeColors(this.background, this.foreground);
}

enum LeaveType {
  annualLeave,
  sickLeave,
  maternityLeave,
  menstrualLeave,
  marriageLeave,
  childsMarriageLeave,
  paternityLeave,
  bereavementLeave,
  naturalDisasterLeave,
  unpaidLeave,
  extendedLeave,
  studyLeave,
  religiousLeave,
  unknown;

  /// Safely parses a string from an API into a LeaveType enum.
  factory LeaveType.fromString(String? type) {
    switch (type) {
      case 'Annual Leave':
        return LeaveType.annualLeave;
      case 'Sick Leave':
        return LeaveType.sickLeave;
      default:
        return LeaveType.unknown;
    }
  }
}

// Add this extension in the same file as the enum

extension LeaveTypeExtension on LeaveType {
  /// Provides a user-friendly string for display in the UI.
  String get displayName {
    switch (this) {
      case LeaveType.annualLeave:
        return 'Annual Leave';
      case LeaveType.sickLeave:
        return 'Sick Leave';
      case LeaveType.maternityLeave:
        return 'Maternity Leave';
      case LeaveType.menstrualLeave:
        return 'Menstrual Leave';
      case LeaveType.marriageLeave:
        return 'Marriage Leave';
      case LeaveType.childsMarriageLeave:
        return 'Child\'s Marriage Leave';
      case LeaveType.paternityLeave:
        return 'Paternity Leave';
      case LeaveType.bereavementLeave:
        return 'Bereavement Leave';
      case LeaveType.naturalDisasterLeave:
        return 'Natural Disaster Leave';
      case LeaveType.unpaidLeave:
        return 'Unpaid Leave';
      case LeaveType.extendedLeave:
        return 'Extended Leave';
      case LeaveType.studyLeave:
        return 'Study Leave';
      case LeaveType.religiousLeave:
        return 'Religious Leave';
      case LeaveType.unknown:
        return 'Unknown';
    }
  }

  LeaveTypeColors get colors {
    switch (this) {
      case LeaveType.annualLeave:
      case LeaveType.maternityLeave:
      case LeaveType.paternityLeave:
      case LeaveType.marriageLeave:
      case LeaveType.childsMarriageLeave:
        return const LeaveTypeColors(
            Color(0xFFEDF6FC), Color(0xFF18618B)); // Blue

      case LeaveType.sickLeave:
      case LeaveType.menstrualLeave:
        return const LeaveTypeColors(
            Color(0xFFF7E9F2), Color(0xFFC964A2)); // Pink

      case LeaveType.bereavementLeave:
      case LeaveType.naturalDisasterLeave:
      case LeaveType.unpaidLeave:
        return const LeaveTypeColors(
            Color(0xFFF5F5F5), Color(0xFF616161)); // Gray

      case LeaveType.extendedLeave:
      case LeaveType.studyLeave:
      case LeaveType.religiousLeave:
        return const LeaveTypeColors(
            Color(0xFFE8F5E9), Color(0xFF388E3C)); // Green

      default:
        return const LeaveTypeColors(
            Color(0xFFF5F5F5), Color(0xFF616161)); // Gray
    }
  }
}
