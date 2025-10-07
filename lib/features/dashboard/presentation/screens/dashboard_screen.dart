// features/dashboard/presentation/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/location_verification_dialog.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/company_profile/company_profile_provider.dart';
import 'package:hrms_mobile/features/dashboard/presentation/widgets/recent_activity_tiles.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final todayAttendanceState = ref.watch(todayAttendanceProvider);
    final authP = ref.watch(authProvider);
    final companyP = ref.watch(companyProfileProvider);
    final recentActivityState = ref.watch(recentActivityProvider(limit: 4));
    final getDetail = ref.watch(getDetailAttendanceProvider(
        attendanceId: todayAttendanceState.value?.id.toString() ?? ''));

    ref.listen<AsyncValue<List<ActivityLogModel>>>(
        recentActivityProvider(limit: 4), (previous, next) {
      if (next.hasError && !next.isLoading) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error.toString()),
          ),
        );
      }
      if (next is AsyncData<List<ActivityLogModel>>) {
        final logs = next.value;
        if (logs.isNotEmpty) {
          final today = DateTime.now();
          ActivityLogModel? todayLog;
          try {
            todayLog = logs.firstWhere(
              (log) =>
                  log.createdAt.year == today.year &&
                  log.createdAt.month == today.month &&
                  log.createdAt.day == today.day,
            );
          } catch (_) {
            todayLog = null;
          }

          if (todayLog != null) {
            final attendanceId = todayLog.properties.attendanceId.toString();
            ref
                .read(todayAttendanceProvider.notifier)
                .refreshFromServer(attendanceId);
          }
        }
      }
    });

    ref.listen<AsyncValue<AttendanceData?>>(todayAttendanceProvider,
        (previous, next) {
      if (next.hasError && !next.isLoading) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error.toString()),
          ),
        );
      }
    });

    final String todayDate = DateFormat('MMMM d, y').format(DateTime.now());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF8F8F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  IColors.light.primary.main,
                  IColors.light.primary.main.withValues(alpha: 0.9),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.9),
                  IColors.light.primary.hover,
                ],
                stops: const [
                  0.0,
                  0.15,
                  0.35,
                  0.37,
                  0.39,
                  0.42,
                  0.44,
                  0.46,
                  0.65,
                  1
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      companyP.value?.name ?? '-',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              authP.value?.name ?? '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              authP.value?.employment?.jobPosition?.name ?? '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: IColors.dark.accent,
                          backgroundImage:
                              (authP.value?.photoProfileUrl?.isNotEmpty ??
                                      false)
                                  ? NetworkImage(authP.value!.photoProfileUrl!)
                                  : null,
                          child: (authP.value?.photoProfileUrl?.isEmpty ?? true)
                              ? const Icon(Icons.person,
                                  size: 30, color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todayDate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                todayAttendanceState.when(
                    skipLoadingOnRefresh: true,
                    skipLoadingOnReload: true,
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, stack) {
                      debugPrint('Error in todayAttendanceProvider: $err');
                      return _buildInitialState(context, ref);
                    },
                    data: (attendanceData) {
                      print("Attendance DAta ${attendanceData?.clock.outAt}");
                      return Container(
                        decoration: BoxDecoration(
                          color: IColors.light.primary.focused,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: IColors.light.primary.foreground,
                            border: Border.all(
                              color: IColors.light.primary.border,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: IColors
                                                  .light.primary.background,
                                              radius: 15,
                                              child: SvgPicture.asset(
                                                IAssets.clockIn,
                                                height: 24.0,
                                                width: 24.0,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Clock In',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF8E8E8E)),
                                                  ),
                                                  SizedBox(
                                                    height: (attendanceData
                                                                    ?.clock
                                                                    .outAt ==
                                                                null &&
                                                            attendanceData
                                                                    ?.clock
                                                                    .inAt !=
                                                                null)
                                                        ? 15
                                                        : 4,
                                                  ),
                                                  if (attendanceData == null)
                                                    _buildClockInButton(
                                                        context, ref)
                                                  else
                                                    _buildTimeDisplay(
                                                        attendanceData
                                                                .clock.inAt ??
                                                            ''),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      VerticalDivider(
                                        width: 20,
                                        thickness: 2,
                                        color: IColors.light.grayscale.g20,
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: IColors
                                                  .light.primary.background,
                                              radius: 15,
                                              child: SvgPicture.asset(
                                                IAssets.clockOut,
                                                height: 24.0,
                                                width: 24.0,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Clock Out',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF8E8E8E)),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  if (attendanceData == null)
                                                    _buildClockOutButton(
                                                        context, ref,
                                                        enabled: false)
                                                  else if (attendanceData
                                                          .clock.outAt ==
                                                      null)
                                                    _buildClockOutButton(
                                                        context, ref,
                                                        enabled: true)
                                                  else
                                                    // Already clocked out, show the time
                                                    _buildTimeDisplay(
                                                        attendanceData
                                                            .clock.outAt!),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              getDetail.when(
                                loading: () => const SizedBox
                                    .shrink(), // Show nothing while loading
                                error: (err, stack) {
                                  // Log the error for debugging, but don't show anything in the UI
                                  debugPrint(
                                      'Failed to get attendance detail for duration display: $err');
                                  return const SizedBox
                                      .shrink(); // Show nothing on error
                                },
                                data: (detail) {
                                  // Now that we have data, we can safely check if the duration exists
                                  if (detail?.clock.duration != null) {
                                    // This is the success case, return the original UI
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: IColors.light.primary.main,
                                        border: Border.all(
                                          color: IColors.light.primary.border,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(6),
                                            bottomLeft: Radius.circular(6)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: IntrinsicHeight(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  spacing: 8,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        "Working Time Duration",
                                                        style: textTheme
                                                            .labelSmall
                                                            ?.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                        ),
                                                        overflow: TextOverflow
                                                            .visible,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${getDetail.value?.clock.duration}",
                                                      style: textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (false) ...[
                                                VerticalDivider(
                                                  width: 20,
                                                  thickness: 2,
                                                  color: IColors
                                                      .light.grayscale.g20,
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    spacing: 8,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          "Overtime Duration",
                                                          style: textTheme
                                                              .labelSmall
                                                              ?.copyWith(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                      Text(
                                                        "1h 0m",
                                                        style: textTheme
                                                            .labelSmall
                                                            ?.copyWith(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    // If there's data but no duration, show nothing
                                    return const SizedBox.shrink();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0xFFF8FCFF),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    CircleAvatar(
                                      child: SvgPicture.asset(
                                        IAssets.overtime,
                                        height: 24.0,
                                        width: 24.0,
                                      ),
                                    ),
                                    Text(
                                      'Overtime Request',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color(0xFFF8FCFF),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    CircleAvatar(
                                      child: SvgPicture.asset(
                                        IAssets.documentSolid,
                                        height: 24.0,
                                        width: 24.0,
                                      ),
                                    ),
                                    Text(
                                      'New Leave Request',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recent Activity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: IColors.light.primary.main,
                            ),
                          ),
                          Expanded(
                            child: recentActivityState.when(
                              loading: () => const Center(
                                  child: CircularProgressIndicator()),
                              error: (error, stackTrace) => const Center(
                                  child: Text('Could not load activities')),
                              data: (logs) {
                                if (logs.isEmpty) {
                                  return const Center(
                                      child: Text('No recent activity.'));
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: logs.length,
                                  itemBuilder: (context, index) {
                                    final log = logs[index];
                                    final time = DateFormat('hh:mm a').format(
                                      DateTime.parse(log.isClockIn
                                          ? log.properties.clockInAt ?? ''
                                          : log.properties.clockOutAt ?? ''),
                                    );

                                    int status;
                                    String statusLabel;
                                    String iconAsset;
                                    if (AttendanceEnum.checkActivity(
                                        log.event)) {
                                      status = log.isClockIn
                                          ? log.properties.clockInStatus ?? 0
                                          : log.properties.clockOutStatus ?? 0;
                                      statusLabel = log.isClockIn
                                          ? log.properties.clockInStatusLabel ??
                                              ''
                                          : log.properties
                                                  .clockOutStatusLabel ??
                                              '';
                                      iconAsset = log.isClockIn
                                          ? IAssets.clockIn
                                          : IAssets.clockOut;
                                    } else {
                                      status =
                                          log.properties.attendanceStatus ?? 0;
                                      statusLabel = log.properties
                                              .attendanceStatusLabel ??
                                          '';
                                      iconAsset = IAssets.overtimeBlue;
                                    }

                                    return AttendanceListTile(
                                      title: log.eventType,
                                      subtitle: DateFormat('MMMM d, y')
                                          .format(log.createdAt),
                                      time: time,
                                      leadingIconAsset: iconAsset,
                                      status: status,
                                      statusLabel: statusLabel,
                                      event: log.event,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildClockInButton(BuildContext context, WidgetRef ref) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: () async {
        await handleLocationVerification(context, AttendanceEnum.clockIn, ref);
      },
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      label: const Text(
        'Clock In',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: IColors.light.primary.main,
        foregroundColor: IColors.light.primary.foreground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
      ),
    ),
  );
}

Widget _buildTimeDisplay(String time) {
  return Text(
    time,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget _buildClockOutButton(BuildContext context, WidgetRef ref,
    {required bool enabled}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: enabled
          ? () {
              handleLocationVerification(
                context,
                AttendanceEnum.clockOut,
                ref,
              );
            }
          : null,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      label: const Text(
        'Clock Out',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: enabled ? IColors.light.primary.main : Colors.grey,
        foregroundColor: IColors.light.primary.foreground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
      ),
    ),
  );
}

Widget _buildInitialState(BuildContext context, WidgetRef ref) {
  return Container(
    decoration: BoxDecoration(
      color: IColors.light.primary.focused,
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.all(4),
    child: Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.foreground,
        border: Border.all(
          color: IColors.light.primary.border,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              // --- CLOCK IN SIDE (Initial State) ---
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: IColors.light.primary.background,
                      radius: 15,
                      child: SvgPicture.asset(
                        IAssets.clockIn,
                        height: 24.0,
                        width: 24.0,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Clock In',
                            style: TextStyle(color: Color(0xFF8E8E8E)),
                          ),
                          const SizedBox(height: 4),
                          _buildClockInButton(context, ref),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                width: 20,
                thickness: 2,
                color: IColors.light.grayscale.g20,
              ),
              // --- CLOCK OUT SIDE (Initial State) ---
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: IColors.light.primary.background,
                      radius: 15,
                      child: SvgPicture.asset(
                        IAssets.clockOut,
                        height: 24.0,
                        width: 24.0,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Clock Out',
                            style: TextStyle(color: Color(0xFF8E8E8E)),
                          ),
                          const SizedBox(height: 4),
                          _buildClockOutButton(context, ref, enabled: false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
