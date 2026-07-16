// FILE: lib/features/attendance/presentation/tabs/attendance_log_tab.dart

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/util/geocoding_geolocation_mapper.dart';
import 'package:hrms_mobile/core/widgets/month_selector.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:intl/intl.dart';

class AttendanceLogTab extends ConsumerStatefulWidget {
  const AttendanceLogTab({super.key});

  @override
  ConsumerState<AttendanceLogTab> createState() => _AttendanceLogTabState();
}

class _AttendanceLogTabState extends ConsumerState<AttendanceLogTab> {
  final ScrollController _scrollController = ScrollController();
  String _selectedPeriod = DateFormat('yyyy-MM').format(DateTime.now());
  String? _selectedStatus;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.95) {
      ref
          .read(paginatedAttendanceHistoryProvider(
            period: _selectedPeriod,
            status: _selectedStatus,
          ).notifier)
          .fetchNextPage();
    }
  }

  void _showFilterModal() {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.attendanceFilterByStatus,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ListTile(
                title: Text(l10n.attendanceStatusAll),
                onTap: () => _applyFilter(null)),
            ListTile(
                title: Text(l10n.attendanceStatusWaiting),
                onTap: () => _applyFilter('1')),
            ListTile(
                title: Text(l10n.attendanceStatusApproved),
                onTap: () => _applyFilter('2')),
            ListTile(
                title: Text(l10n.attendanceStatusRejected),
                onTap: () => _applyFilter('3')),
          ],
        ),
      ),
    );
  }

  void _applyFilter(String? status) {
    setState(() {
      _selectedStatus = status;
    });
    ref.invalidate(
      paginatedAttendanceHistoryProvider(
        period: _selectedPeriod,
        status: _selectedStatus,
      ),
    );
    globalNavigatorKey.currentContext?.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final historyState = ref.watch(paginatedAttendanceHistoryProvider(
      period: _selectedPeriod,
      status: _selectedStatus,
    ));

    final attendanceStatsState = ref.watch(attendanceStatsProvider(
      period: _selectedPeriod,
    ));

    ref.listen(
      paginatedOvertimeHistoryProvider(
        period: _selectedPeriod,
        status: _selectedStatus,
      ),
      (previous, next) {
        if (!next.hasError || next.isLoading) return;

        final error = next.error;

        if (error is ValidationException) {
          final exception = error;
          final displayErrors =
              exception.errors.map((key, value) => MapEntry(key, value.first));
          showCustomToast(context, displayErrors[displayErrors.keys.first]!,
              ToastType.error);
        } else if (error is DioException) {
          showCustomToast(context, l10n.attendanceNetworkError,
              ToastType.error);
        } else {
          showCustomToast(
              context,
              l10n.attendanceUnexpectedError(error.toString()),
              ToastType.error);
        }
      },
    );

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: const Color(0xFFF8F8F8),
          child: Column(
            children: [
              MonthSelector(
                onMonthChanged: (selectedDate) {
                  setState(() {
                    _selectedPeriod =
                        DateFormat('yyyy-MM').format(selectedDate);
                  });

                  ref.invalidate(
                    paginatedAttendanceHistoryProvider(
                      period: _selectedPeriod,
                      status: _selectedStatus,
                    ),
                  );
                  ref.invalidate(
                    attendanceStatsProvider(
                      period: _selectedPeriod,
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              attendanceStatsState.when(
                data: (items) {
                  return Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            // Clock In
                            Expanded(
                              child: _buildStatBox(
                                  items.clockIn.late.toString(),
                                  l10n.profileStatDays,
                                  l10n.attendanceStatLateClockIn),
                            ),
                            // Clock Out
                            Expanded(
                                child: _buildStatBox(
                                    items.clockOut.early.toString(),
                                    l10n.profileStatDays,
                                    l10n.attendanceStatEarlyClockOut)),
                            Expanded(
                                child: _buildStatBox(items.overtime.toString(),
                                    l10n.profileStatHours, l10n.attendanceOvertime)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: _buildStatBox(
                                  items.absent.toInt().round().toString(),
                                  l10n.profileStatDays,
                                  l10n.attendanceStatAbsent)),
                          Expanded(
                              child: _buildStatBox(
                                  items.dayOff.quota.toString(),
                                  l10n.profileStatDays,
                                  l10n.attendanceStatDayOff)),
                        ],
                      ),
                    ],
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, st) => Center(
                    child: Text(l10n.coreErrorWithDetail(err.toString()))),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.attendanceTab,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _showFilterModal,
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.all(6),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: IColors.light.grayscale.g30,
                            width: 1,
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(
                        IAssets.filter,
                        width: 14,
                        height: 14,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: historyState.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, st) =>
                        Center(
                            child: Text(
                                l10n.coreErrorWithDetail(err.toString()))),
                    data: (items) {
                      if (items.isEmpty) {
                        return Center(
                            child: Text(l10n.attendanceNoDataForPeriod));
                      }
                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: items.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return AttendanceCard(item: item);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class AttendanceCard extends StatelessWidget {
  final AttendanceDetail item;

  const AttendanceCard({super.key, required this.item});

  String _formatDate(String dateStr, AppLocalizations l10n, String locale) {
    final date = DateTime.parse(dateStr);
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return l10n.attendanceTodayWithDay('${date.day}');
    }
    return DateFormat('E, d', locale).format(date);
  }

  String _formatTime(String? timeStr, String locale) {
    if (timeStr == null) return "-";
    try {
      final time = DateFormat('HH:mm').parse(timeStr);
      return DateFormat('hh:mm a', locale).format(time);
    } catch (e) {
      return timeStr;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).toString();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: IColors.light.grayscale.g10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    _formatDate(item.attendanceDate, l10n, locale),
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      context.pushNamed(
                        RoutePaths.attendanceEditName,
                        pathParameters: {'id': item.id.toString()},
                        extra: item,
                      );
                    },
                    icon: SvgPicture.asset(
                      IAssets.edit,
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              StatusChip(
                status: item.status,
                statusLabel: item.statusLabel,
                event: 'attendance',
              ),
            ],
          ),
          (() {
            final source = (item.metadata.generatedVia != null &&
                    item.metadata.generatedVia!.isNotEmpty)
                ? item.metadata.generatedVia
                : (item.metadata.createdVia != null &&
                        item.metadata.createdVia!.isNotEmpty)
                    ? item.metadata.createdVia
                    : null;
            if (source != null) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2),
                  _buildGeneratedViaBadge(context, source),
                  SizedBox(height: 12.sp),
                ],
              );
            } else {
              return SizedBox(height: 32.sp);
            }
          })(),
          Row(
            children: [
              _buildTimeColumn(
                  context, l10n.attendanceClockInLabel, _formatTime(item.clock.inAt, locale)),
              Expanded(
                child: _buildDurationDisplay(
                    context,
                    item.clock.duration != null
                        ? item.clock.duration.toString()
                        : '0h 0m'),
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    _buildTimeColumn(
                        context, l10n.attendanceClockOutLabel, _formatTime(item.clock.outAt, locale),
                        color: Colors.orange),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: IColors.light.grayscale.g20,
                    ),
                    _buildTimeColumn(context, l10n.attendanceOvertime,
                        item.clock.overtimeDurationFormatted ?? "0h 0m",
                        isEnd: true),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(color: IColors.light.grayscale.g10),
          _buildLocation(context),
          const SizedBox(height: 16),
          _buildNotes(context),
        ],
      ),
    );
  }

  Widget _buildTimeColumn(BuildContext context, String label, String value,
      {Color? color, bool isEnd = false}) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 4.sp),
        Text(value,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  Widget _buildDurationDisplay(BuildContext context, String duration) {
    return Column(
      children: [
        SizedBox(height: 20.sp),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center, // This is no longer needed
          children: [
            // Use Expanded for the line
            Expanded(
              child: Container(height: 1, color: IColors.light.grayscale.g20),
            ),
            SizedBox(width: 4.sp),
            Text(duration, style: Theme.of(context).textTheme.bodySmall),
            SizedBox(width: 4.sp),
            // Use Expanded for the other line
            Expanded(
              child: Container(height: 1, color: IColors.light.grayscale.g20),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLocation(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final lat = double.tryParse(item.location.latitude ?? '') ?? 0.0;
    final lng = double.tryParse(item.location.longitude ?? '') ?? 0.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceLocation, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: IColors.light.primary.border,
          ),
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: IColors.light.primary.background,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    IAssets.pinLocation,
                    width: 10,
                    height: 18,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FutureBuilder<String>(
                    future: getAddressFromLatLng(lat, lng),
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data ?? item.metadata.locationName ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: IColors.light.primary.main,
                            ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNotes(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceNotes, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(
          item.notes ?? "-",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildGeneratedViaBadge(BuildContext context, String? source) {
    if (source == null || source.isEmpty) return const SizedBox.shrink();

    final textTheme = Theme.of(context).textTheme;
    final String label;
    final Widget icon;
    final Color bgColor;
    final Color textColor;

    switch (source.toLowerCase()) {
      case 'iclock':
        label = "Fingerprint";
        icon = SvgPicture.asset(
          IAssets.biometric,
          width: 12.sp,
          height: 12.sp,
          colorFilter: ColorFilter.mode(
            IColors.light.primary.main,
            BlendMode.srcIn,
          ),
        );
        bgColor = IColors.light.primary.background;
        textColor = IColors.light.primary.main;
        break;
      case 'ess':
      case 'manual':
        label = "Attendance in App";
        icon = Icon(
          Icons.smartphone_rounded,
          size: 12.sp,
          color: IColors.light.success.main,
        );
        bgColor = IColors.light.success.background;
        textColor = IColors.light.success.main;
        break;
      case 'cronjob':
        label = "System Auto-Validation";
        icon = Icon(
          Icons.autorenew_rounded,
          size: 12.sp,
          color: IColors.light.warning.hover,
        );
        bgColor = IColors.light.warning.background;
        textColor = IColors.light.warning.hover;
        break;
      default:
        label = source;
        icon = Icon(
          Icons.info_outline_rounded,
          size: 12.sp,
          color: IColors.light.grayscale.g60,
        );
        bgColor = IColors.light.grayscale.g10;
        textColor = IColors.light.grayscale.g60;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(width: 4.sp),
          Text(
            label,
            style: textTheme.bodySmall?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildStatBox(String value, String unit, String label) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(width: 4.sp),
            Text(unit,
                style: TextStyle(fontSize: 8.sp, color: Color(0xFF8E8E8E))),
          ],
        ),
        SizedBox(height: 4.sp),
        Text(
          label,
          style: TextStyle(fontSize: 8.sp, color: Color(0xFF8E8E8E)),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
