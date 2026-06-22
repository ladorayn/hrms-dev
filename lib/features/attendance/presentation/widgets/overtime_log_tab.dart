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
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/month_selector.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/overtime/overtime_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:intl/intl.dart';

class OvertimeLogTab extends ConsumerStatefulWidget {
  const OvertimeLogTab({super.key});

  @override
  ConsumerState<OvertimeLogTab> createState() => _OvertimeLogTabState();
}

class _OvertimeLogTabState extends ConsumerState<OvertimeLogTab> {
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
          .read(paginatedOvertimeHistoryProvider(
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
      paginatedOvertimeHistoryProvider(
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
    final historyState = ref.watch(paginatedOvertimeHistoryProvider(
      period: _selectedPeriod,
      status: _selectedStatus,
    ));

    final overtimeStatsState = ref.watch(OvertimeStatsProvider(
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
                    paginatedOvertimeHistoryProvider(
                      period: _selectedPeriod,
                      status: _selectedStatus,
                    ),
                  );
                  ref.invalidate(
                    overtimeStatsProvider(
                      period: _selectedPeriod,
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              overtimeStatsState.when(
                data: (data) {
                  return IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                            child: _buildStatBox(
                                "${data.pending}", l10n.attendancePendingRequest)),
                        Expanded(
                            child: _buildStatBox(
                                "${data.approved}", l10n.attendanceApprovedRequest)),
                        Expanded(
                            child: _buildStatBox(
                                "${data.rejected}", l10n.attendanceRejectedRequest)),
                      ],
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, st) => Center(
                    child: Text(l10n.coreErrorWithDetail(err.toString()))),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.attendanceOvertimeRequestTitle,
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
                Expanded(
                  child: historyState.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, st) {
                      return Center(
                          child: Text(l10n.attendanceErrorTryAgainLater));
                    },
                    data: (items) {
                      if (items.isEmpty) {
                        return Center(
                            child: Text(l10n.attendanceNoOvertimeDataForPeriod));
                      }
                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: items.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return OvertimeRequestCard(item: item);
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

class OvertimeRequestCard extends StatelessWidget {
  final OvertimeDetail item;

  const OvertimeRequestCard({super.key, required this.item});

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

  String _formatDaysAgo(String dateStr, AppLocalizations l10n) {
    try {
      final date = DateTime.parse(dateStr);
      final now = DateTime.now();

      final today = DateTime(now.year, now.month, now.day);
      final requestDate = DateTime(date.year, date.month, date.day);

      final difference = today.difference(requestDate).inDays;

      if (difference < 0) {
        return '';
      } else if (difference == 0) {
        return l10n.attendanceToday;
      } else if (difference == 1) {
        return l10n.attendanceYesterday;
      } else {
        return l10n.attendanceDaysAgo(difference);
      }
    } catch (e) {
      return '';
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
        border: Border.all(
          color: IColors.light.grayscale.g10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    _formatDate(item.overtimeDate ?? '', l10n, locale),
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      context.pushNamed(
                        RoutePaths.overtimeEditName,
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
                status: item.status ?? 0,
                statusLabel: item.statusLabel ?? '',
                event: 'overtime',
              ),
            ],
          ),

          Text(
            _formatDaysAgo(item.overtimeDate ?? '', l10n),
            style:
                textTheme.bodySmall?.copyWith(color: const Color(0xFF8E8E8E)),
          ),

          Divider(color: IColors.light.grayscale.g10),

          // Overtime Duration
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                l10n.attendanceOvertimeDuration,
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              const SizedBox(height: 4),
              Row(
                spacing: 8,
                children: [
                  Text(
                    calculateDurationWithTotal(item.duration ?? 0),
                    style: textTheme.bodyMedium?.copyWith(
                      color: IColors.light.primary.main,
                    ),
                  ),
                  Text(
                    "(${_formatTime(item.startTime, locale)} - ${_formatTime(item.endTime, locale)})",
                    style: textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF8E8E8E),
                    ),
                  ),
                ],
              )
            ],
          ),

          // Notes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                l10n.attendanceNotes,
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              const SizedBox(height: 4),
              Text(
                item.notes ?? "-",
                style: textTheme.bodyMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildStatBox(String value, String label) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4.sp),
        Text(
          label,
          style: TextStyle(fontSize: 10.sp, color: Color(0xFF8E8E8E)),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
