import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/month_selector.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
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
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Filter by Status',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ListTile(title: const Text('All'), onTap: () => _applyFilter(null)),
            ListTile(
                title: const Text('Waiting'), onTap: () => _applyFilter('1')),
            ListTile(
                title: const Text('Approved'), onTap: () => _applyFilter('2')),
            ListTile(
                title: const Text('Rejected'), onTap: () => _applyFilter('3')),
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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(displayErrors[displayErrors.keys.first]!)),
          );
        } else if (error is DioException) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(error.message ?? 'A network error occurred.')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('An unexpected error occurred: ${error.toString()}')),
          );
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
                                "${data.pending}", "Pending Request")),
                        Expanded(
                            child: _buildStatBox(
                                "${data.approved}", "Approved Request")),
                        Expanded(
                            child: _buildStatBox(
                                "${data.rejected}", "Rejected Request")),
                      ],
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, st) =>
                    Center(child: Text("Error: ${err.toString()}")),
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
                      "Overtime Request",
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
                          child: Text("Error: Please try again later!"));
                    },
                    data: (items) {
                      if (items.isEmpty) {
                        return const Center(
                            child: Text("No overtime data for this period."));
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

  String _formatDate(String dateStr) {
    final date = DateTime.parse(dateStr);
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return "Today, ${date.day}";
    }
    // As it's currently October 2025, showing the month is helpful
    return DateFormat('E, d').format(date);
  }

  String _formatTime(String? timeStr) {
    if (timeStr == null) return "-";
    try {
      final time = DateFormat('HH:mm').parse(timeStr);
      return DateFormat('hh:mm a').format(time);
    } catch (e) {
      return timeStr; // Return original string if parsing fails
    }
  }

  String _formatDaysAgo(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      final now = DateTime.now();

      final today = DateTime(now.year, now.month, now.day);
      final requestDate = DateTime(date.year, date.month, date.day);

      final difference = today.difference(requestDate).inDays;

      if (difference < 0) {
        return '';
      } else if (difference == 0) {
        return 'Today';
      } else if (difference == 1) {
        return 'Yesterday';
      } else {
        return '$difference days ago';
      }
    } catch (e) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    print("TEST ${item.statusLabel}");

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
                    _formatDate(item.overtimeDate ?? ''),
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
                event: 'attendance',
              ),
            ],
          ),

          Text(
            _formatDaysAgo(item.overtimeDate ?? ''),
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
                "Overtime Duration",
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
                    "(${_formatTime(item.startTime)} - ${_formatTime(item.endTime)})",
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
                "Notes",
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
