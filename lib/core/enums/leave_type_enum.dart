import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';

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

extension LeaveTypeExtension on LeaveType {
  String displayName(AppLocalizations l10n) {
    switch (this) {
      case LeaveType.annualLeave:
        return l10n.leaveTypeAnnualLeave;
      case LeaveType.sickLeave:
        return l10n.leaveTypeSickLeave;
      case LeaveType.maternityLeave:
        return l10n.leaveTypeMaternityLeave;
      case LeaveType.menstrualLeave:
        return l10n.leaveTypeMenstrualLeave;
      case LeaveType.marriageLeave:
        return l10n.leaveTypeMarriageLeave;
      case LeaveType.childsMarriageLeave:
        return l10n.leaveTypeChildsMarriageLeave;
      case LeaveType.paternityLeave:
        return l10n.leaveTypePaternityLeave;
      case LeaveType.bereavementLeave:
        return l10n.leaveTypeBereavementLeave;
      case LeaveType.naturalDisasterLeave:
        return l10n.leaveTypeNaturalDisasterLeave;
      case LeaveType.unpaidLeave:
        return l10n.leaveTypeUnpaidLeave;
      case LeaveType.extendedLeave:
        return l10n.leaveTypeExtendedLeave;
      case LeaveType.studyLeave:
        return l10n.leaveTypeStudyLeave;
      case LeaveType.religiousLeave:
        return l10n.leaveTypeReligiousLeave;
      case LeaveType.unknown:
        return l10n.leaveTypeUnknown;
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
            Color(0xFFEDF6FC), Color(0xFF18618B));

      case LeaveType.sickLeave:
      case LeaveType.menstrualLeave:
        return const LeaveTypeColors(
            Color(0xFFF7E9F2), Color(0xFFC964A2));

      case LeaveType.bereavementLeave:
      case LeaveType.naturalDisasterLeave:
      case LeaveType.unpaidLeave:
        return const LeaveTypeColors(
            Color(0xFFF5F5F5), Color(0xFF616161));

      case LeaveType.extendedLeave:
      case LeaveType.studyLeave:
      case LeaveType.religiousLeave:
        return const LeaveTypeColors(
            Color(0xFFE8F5E9), Color(0xFF388E3C));

      default:
        return const LeaveTypeColors(
            Color(0xFFF5F5F5), Color(0xFF616161));
    }
  }
}
