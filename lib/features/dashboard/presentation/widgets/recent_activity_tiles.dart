import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_theme.dart';
import 'package:hrms_mobile/core/enums/activity_log_enum.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:intl/intl.dart';

class AttendanceListTile extends StatelessWidget {
  final ActivityLogModel log;

  const AttendanceListTile({
    super.key,
    required this.log,
  });

  @override
  Widget build(BuildContext context) {
    String activityValue;
    int status;
    String statusLabel;
    String titleTile;
    String subtitleTile;
    String iconAsset;

    final locale = Localizations.localeOf(context).toString();
    titleTile = log.eventType ?? '';
    subtitleTile = DateFormat('MMMM d, y', locale).format(log.createdAt!);
    activityValue = getActivityLogValue(log, locale);
    status = getStatus(log);
    statusLabel = getStatusLabel(log);
    iconAsset = getIconAsset(log);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: IColors.light.primary.background,
        radius: 12,
        child: SvgPicture.asset(
          iconAsset,
          height: 18.0,
          width: 18.0,
        ),
      ),
      title: Text(
        titleTile,
        style: ITheme.light.textTheme.headlineMedium?.copyWith(fontSize: 18),
      ),
      subtitle: Text(
        subtitleTile,
        style: ITheme.light.textTheme.labelSmall
            ?.copyWith(color: Color(0xFF8E8E8E)),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            activityValue,
            style: ITheme.light.textTheme.bodyMedium,
          ),
          const SizedBox(height: 4),
          StatusChip(
            status: status,
            statusLabel: statusLabel,
            event: log.event!,
          ),
        ],
      ),
    );
  }
}

String getActivityLogValue(ActivityLogModel log, [String? locale]) {
  final event = ActivityLogEnum.fromString(log.event);
  switch (event) {
    case ActivityLogEnum.clockIn:
      return DateFormat('hh:mm a', locale)
          .format(DateTime.parse(log.properties?.clockInAt ?? ''));
    case ActivityLogEnum.clockOut:
      return DateFormat('hh:mm a', locale)
          .format(DateTime.parse(log.properties?.clockOutAt ?? ''));
    case ActivityLogEnum.overtimeCreated:
      return calculateDurationWithTotal(log.properties?.duration ?? 0);
    default:
      return '';
  }
}

int getStatus(ActivityLogModel log) {
  final event = ActivityLogEnum.fromString(log.event);
  switch (event) {
    case ActivityLogEnum.clockIn:
      return log.properties?.clockInStatus ?? 0;
    case ActivityLogEnum.clockOut:
      return log.properties?.clockOutStatus ?? 0;
    case ActivityLogEnum.overtimeCreated:
    case ActivityLogEnum.overtimeUpdated:
    case ActivityLogEnum.overtimeApproved:
    case ActivityLogEnum.overtimeRejected:
      return log.properties?.status ?? 0;
    default:
      return 0;
  }
}

String getStatusLabel(ActivityLogModel log) {
  final event = ActivityLogEnum.fromString(log.event);
  switch (event) {
    case ActivityLogEnum.clockIn:
      return log.properties?.clockInStatusLabel ?? "";
    case ActivityLogEnum.clockOut:
      return log.properties?.clockOutStatusLabel ?? "";
    case ActivityLogEnum.overtimeCreated:
    case ActivityLogEnum.overtimeUpdated:
    case ActivityLogEnum.overtimeApproved:
    case ActivityLogEnum.overtimeRejected:
      return log.properties?.statusLabel ?? "";
    default:
      return "";
  }
}

String getIconAsset(ActivityLogModel log) {
  final event = ActivityLogEnum.fromString(log.event);
  switch (event) {
    case ActivityLogEnum.clockIn:
      return IAssets.clockIn;
    case ActivityLogEnum.clockOut:
      return IAssets.clockOut;
    case ActivityLogEnum.overtimeCreated:
    case ActivityLogEnum.overtimeUpdated:
    case ActivityLogEnum.overtimeApproved:
    case ActivityLogEnum.overtimeRejected:
      return IAssets.overtimeBlue;
    default:
      return IAssets.overtimeBlue;
  }
}
