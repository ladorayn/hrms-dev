import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';

class InboxMessage extends StatelessWidget {
  final NotificationResponse notification;
  final VoidCallback onTap;
  final bool showDivider;

  const InboxMessage({
    super.key,
    required this.notification,
    required this.onTap,
    this.showDivider = true,
  });

  DateTime? _parseTimestamp(String? timestamp) {
    if (timestamp == null) return null;
    return DateTime.tryParse(timestamp)?.toLocal();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final isRead = notification.readAt != null;
    final timestamp = _parseTimestamp(notification.createdAt);

    final data = notification.data;
    final title = data?.title ?? l10n.inboxNoTitle;
    final body = data?.message ?? l10n.inboxNoContent;

    final unreadColor = IColors.light.grayscale.g80;
    final readColor = IColors.light.grayscale.g50;

    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Icon(
              Icons.circle,
              size: 8.sp,
              color: isRead ? Colors.transparent : IColors.light.primary.main,
            ),
          ),
          title: Text(
            title,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: isRead ? FontWeight.w500 : FontWeight.w700,
              color: unreadColor,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.h),
              Text(
                body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium?.copyWith(
                  color: readColor,
                  fontWeight: isRead ? FontWeight.w400 : FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
            ],
          ),
          trailing: _buildTrailingContent(context, timestamp, isRead, l10n),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
        ),
        if (showDivider) Divider(height: 1, color: IColors.light.grayscale.g10),
      ],
    );
  }

  Widget _buildTrailingContent(BuildContext context, DateTime? timestamp,
      bool isRead, AppLocalizations l10n) {
    final textTheme = Theme.of(context).textTheme;

    String dateLabel = l10n.inboxNotAvailable;
    if (timestamp != null) {
      dateLabel =
          "${timestamp.month.toString().padLeft(2, '0')}/${timestamp.day.toString().padLeft(2, '0')}";
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: 8.h),
        Text(
          dateLabel,
          style: textTheme.bodySmall?.copyWith(
            color: IColors.light.grayscale.g50,
            fontWeight: isRead ? FontWeight.w400 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
