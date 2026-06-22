// features/dashboard/presentation/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/location_verification_dialog.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/company_profile/company_profile_provider.dart';
import 'package:hrms_mobile/features/dashboard/presentation/widgets/offboarding_status_card.dart';
import 'package:hrms_mobile/features/dashboard/presentation/widgets/recent_activity_tiles.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';
import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final todayAttendanceState = ref.watch(todayAttendanceProvider);
    final authP = ref.watch(authProvider);
    final profileAsync =
        ref.watch(employeeDetailProvider(id: authP.value?.id ?? 0));
    final companyP = ref.watch(companyProfileProvider);
    final recentActivityState = ref.watch(recentActivityProvider(limit: 10));
    final String? attendanceId = todayAttendanceState.hasValue
        ? todayAttendanceState.value?.id.toString()
        : null;

    final getDetail = attendanceId != null
        ? ref.watch(getDetailAttendanceProvider(attendanceId: attendanceId))
        : null;

    final getOffboardingStatus = ref.watch(offboardingStatusProvider);

    ref.listen<AsyncValue<List<ActivityLogModel>>>(
        recentActivityProvider(limit: 4), (previous, next) {
      if (next.hasError && !next.isLoading) {
        ScaffoldMessenger.of(context).clearSnackBars();
        showCustomToast(context, next.error.toString(), ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(next.error.toString()),
        //   ),
        // );
      }
      if (next is AsyncData<List<ActivityLogModel>>) {
        final logs = next.value;
        if (logs.isNotEmpty) {
          final today = DateTime.now();
          ActivityLogModel? todayLog;
          try {
            todayLog = logs.firstWhere(
              (log) =>
                  log.createdAt?.year == today.year &&
                  log.createdAt?.month == today.month &&
                  log.createdAt?.day == today.day &&
                  (log.eventType == 'clock_in' || log.eventType == 'clock_out'),
            );
          } catch (_) {
            todayLog = null;
          }

          if (todayLog != null && todayLog.properties?.attendanceId != null) {
            final attendanceId = todayLog.properties?.attendanceId.toString();
            ref
                .read(todayAttendanceProvider.notifier)
                .refreshFromServer(attendanceId ?? '');
          }
        }
      }
    });

    ref.listen<AsyncValue<AttendanceData?>>(todayAttendanceProvider,
        (previous, next) {
      if (next.hasError && !next.isLoading) {
        ScaffoldMessenger.of(context).clearSnackBars();
        showCustomToast(context, next.error.toString(), ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(next.error.toString()),
        //   ),
        // );
      }
    });

    final locale = Localizations.localeOf(context).toString();
    final String todayDate =
        DateFormat('MMMM d, y', locale).format(DateTime.now());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: RefreshIndicator(
        notificationPredicate: (notification) => notification.depth <= 1,
        onRefresh: () async {
          // Trigger all refreshes
          final authNotifier = ref.read(authProvider.notifier);
          final companyNotifier = ref.read(companyProfileProvider.notifier);
          
          await authNotifier.refreshProfile();
          await companyNotifier.refreshCompanyProfile();
          
          final auth = ref.read(authProvider);
          
          await Future.wait([
            ref.refresh(todayAttendanceProvider.future),
            ref.refresh(recentActivityProvider(limit: 10).future),
            ref.refresh(offboardingStatusProvider.future),
            if (auth.value?.id != null)
              ref.refresh(employeeDetailProvider(id: auth.value!.id).future),
          ]);
        },
        child: NestedScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Container(
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
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, bottom: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          authP.value?.branch?.name ?? '-',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // Use the actual data from your provider
                                    profileAsync.asData?.value.user?.name ??
                                        authP.value?.name ??
                                        '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow
                                        .ellipsis, // <-- USE ELLIPSIS
                                  ),
                                  Text(
                                    profileAsync.asData?.value.user?.employment
                                            ?.jobPosition?.name ??
                                        authP.value?.employment?.jobPosition
                                            ?.name ??
                                        '-',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 30.r,
                              backgroundColor: IColors.dark.accent,
                              backgroundImage: (profileAsync.asData?.value.user
                                          ?.photoProfileUrl?.isNotEmpty ??
                                      false)
                                  ? NetworkImage(profileAsync.asData?.value.user
                                          ?.photoProfileUrl ??
                                      '')
                                  : null,
                              child:
                                  (profileAsync.value?.user?.photoProfileUrl ==
                                          null)
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todayDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 4.w),
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
                          return Container(
                            decoration: BoxDecoration(
                              color: IColors.light.primary.focused,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(4.w),
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
                                    padding: EdgeInsets.all(6.w),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: IColors
                                                      .light.primary.background,
                                                  radius: 15.r,
                                                  child: SvgPicture.asset(
                                                    IAssets.clockIn,
                                                    height: 24.0,
                                                    width: 24.0,
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        l10n.dashboardClockIn,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF8E8E8E),
                                                            fontSize: 12.sp),
                                                      ),
                                                      SizedBox(
                                                        height: (attendanceData
                                                                        ?.clock
                                                                        ?.outAt ==
                                                                    null &&
                                                                attendanceData
                                                                        ?.clock
                                                                        ?.inAt !=
                                                                    null)
                                                            ? 15.w
                                                            : 4.w,
                                                      ),
                                                      if (attendanceData ==
                                                          null)
                                                        _buildClockInButton(
                                                            context, ref)
                                                      else
                                                        _buildTimeDisplay(
                                                            attendanceData.clock
                                                                    ?.inAt ??
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
                                                  radius: 15.r,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        l10n.dashboardClockOut,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF8E8E8E)),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      if (attendanceData ==
                                                          null)
                                                        _buildClockOutButton(
                                                            context, ref,
                                                            enabled: false)
                                                      else if (attendanceData
                                                              .clock?.outAt ==
                                                          null)
                                                        _buildClockOutButton(
                                                            context, ref,
                                                            enabled: true)
                                                      else
                                                        // Already clocked out, show the time
                                                        _buildTimeDisplay(
                                                            attendanceData.clock
                                                                    ?.outAt ??
                                                                ''),
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
                                  // --- START FIX USAGE ---
                                  if (getDetail == null)
                                    const SizedBox.shrink()
                                  else
                                    getDetail.when(
                                      loading: () => const SizedBox.shrink(),
                                      error: (err, stack) {
                                        debugPrint(
                                            'Failed to get attendance detail for duration display: $err');
                                        return const SizedBox.shrink();
                                      },
                                      data: (detail) {
                                        if (detail?.clock.duration != null) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: IColors.light.primary.main,
                                              border: Border.all(
                                                color: IColors
                                                    .light.primary.border,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(6),
                                                      bottomLeft:
                                                          Radius.circular(6)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        // spacing: 8, // Invalid property
                                                        children: [
                                                          Flexible(
                                                            child: Text(
                                                              l10n.dashboardWorkingTimeDuration,
                                                              style: textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 8.sp,
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .visible,
                                                            ),
                                                          ),
                                                          SizedBox(width: 8),
                                                          // Added SizedBox
                                                          Text(
                                                            "${getDetail.value?.clock.duration}",
                                                            style: textTheme
                                                                .labelSmall
                                                                ?.copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 8.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (detail?.clock
                                                            .overtimeDuration !=
                                                        null) ...[
                                                      VerticalDivider(
                                                        width: 20,
                                                        thickness: 2,
                                                        color: IColors.light
                                                            .grayscale.g20,
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          // spacing: 8, // Invalid property
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                l10n.dashboardOvertimeDuration,
                                                                style: textTheme
                                                                    .labelSmall
                                                                    ?.copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.sp,
                                                                ),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                            SizedBox(width: 8),
                                                            // Added SizedBox
                                                            Text(
                                                              calculateDurationWithTotal(
                                                                  detail?.clock
                                                                          .overtimeDuration ??
                                                                      0),
                                                              style: textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 8.sp,
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
                                          return const SizedBox.shrink();
                                        }
                                      },
                                    ),
                                  // --- END FIX USAGE ---
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          globalNavigatorKey.currentContext
                              ?.push(RoutePaths.overtimeRequest);
                        },
                        child: Container(
                          color: const Color(0xFFF8FCFF),
                          padding: EdgeInsets.all(8.sp),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: SvgPicture.asset(
                                  IAssets.overtime,
                                  height: 24.0,
                                  width: 24.0,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                l10n.dashboardOvertimeRequest,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          globalNavigatorKey.currentContext
                              ?.push(RoutePaths.leaveRequestForm);
                        },
                        child: Container(
                          color: const Color(0xFFF8FCFF),
                          padding: EdgeInsets.all(8.sp),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: SvgPicture.asset(
                                  IAssets.documentSolid,
                                  height: 24.0,
                                  width: 24.0,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                l10n.dashboardNewLeaveRequest,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                getOffboardingStatus.when(
                  skipError: true,
                  skipLoadingOnRefresh: true,
                  skipLoadingOnReload: true,
                  data: (data) {
                    if (data?.id == null) {
                      return const SizedBox.shrink();
                    }
                    return OffboardingStatusCard(data: data!);
                  },
                  error: (error, stackTrace) {
                    if (error is DataNotFoundException) {
                      return const SizedBox.shrink();
                    }
                    return Text(l10n.dashboardOffboardingStatusError(error.toString()));
                  },
                  loading: () => const SizedBox.shrink(),
                ),
                SizedBox(height: 4.h),
                Text(
                  l10n.dashboardRecentActivity,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: IColors.light.primary.main,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: recentActivityState.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stackTrace) =>
                        Center(child: Text(l10n.dashboardCouldNotLoadActivities)),
                    data: (logs) {
                      if (logs.isEmpty) {
                        return Center(child: Text(l10n.dashboardNoRecentActivity));
                      }
                      return ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: logs.length,
                        itemBuilder: (context, index) {
                          final log = logs[index];
                          return AttendanceListTile(log: log);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}

Widget _buildClockInButton(BuildContext context, WidgetRef ref) {
  final l10n = AppLocalizations.of(context)!;

  return SizedBox(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: () async {
        globalNavigatorKey.currentContext?.pushNamed(RoutePaths.selectBranch, extra: AttendanceEnum.clockIn);
      },
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      label: Text(
        l10n.dashboardClockIn,
        style: TextStyle(
          fontSize: 12.sp,
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
    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
  );
}

Widget _buildClockOutButton(BuildContext context, WidgetRef ref,
    {required bool enabled}) {
  final l10n = AppLocalizations.of(context)!;

  return SizedBox(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: enabled
          ? () {
                globalNavigatorKey.currentContext?.pushNamed(RoutePaths.selectBranch, extra: AttendanceEnum.clockOut);
              }
          : null,
      icon: Icon(
        Icons.add,
        color: enabled ? Colors.white : Colors.grey,
      ),
      label: Text(
        l10n.dashboardClockOut,
        style: TextStyle(
          fontSize: 12.sp,
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
  final l10n = AppLocalizations.of(context)!;

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
                          Text(
                            l10n.dashboardClockIn,
                            style: const TextStyle(color: Color(0xFF8E8E8E)),
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
                          Text(
                            l10n.dashboardClockOut,
                            style: TextStyle(
                                color: Color(0xFF8E8E8E), fontSize: 10.sp),
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
