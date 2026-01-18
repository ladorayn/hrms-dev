import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/KRFilterBottomSheet.dart';

class DashboardMetricCard extends ConsumerStatefulWidget {
  final String title;
  final int cycleId;
  final int krId;
  final int frequency;
  final List<double> initialBarData;
  final List<String> initialXAxisLabels;
  final String initialAvgActual;
  final String initialAvgTarget;
  final int format;
  final String formatLabel;

  const DashboardMetricCard({
    super.key,
    required this.title,
    required this.cycleId,
    required this.krId,
    required this.frequency,
    required this.initialBarData,
    required this.initialXAxisLabels,
    required this.initialAvgActual,
    required this.initialAvgTarget,
    required this.format,
    required this.formatLabel,
  });

  @override
  ConsumerState<DashboardMetricCard> createState() =>
      _DashboardMetricCardState();
}

class _DashboardMetricCardState extends ConsumerState<DashboardMetricCard> {
  Map<String, dynamic>? _activeFilters;

  static const double _chartHeight = 250;
  static const double _yAxisReserved = 46;
  static const double _barWidth = 24;
  static const int FORMAT_PERCENT = 2;

  String get _unitSuffix {
    return switch (widget.formatLabel) {
      'Percentage' || 'Percentage (Decimal)' => '%',
      'Currency (IDR)' => 'Rp',
      _ => '',
    };
  }

  @override
  Widget build(BuildContext context) {
    // 1. If no filters applied, show initial data from dashboard overview
    if (_activeFilters == null) {
      return _buildFrame(
        context,
        barData: widget.initialBarData,
        xAxisLabels: widget.initialXAxisLabels,
        avgActual: widget.initialAvgActual,
        avgTarget: widget.initialAvgTarget,
        dateRange: "Select Range",
      );
    }

    // 2. Watch the specific provider only when filters are active
    final graphAsync = ref.watch(performanceGetOKRKeyResultGraphProvider(
      id: widget.cycleId,
      okrId: widget.krId,
      filters: _activeFilters,
    ));

    return graphAsync.when(
      loading: () => _buildFrame(context, isLoading: true),
      error: (err, _) => Center(child: Text("Error loading graph: $err")),
      data: (filteredDetail) {
        final barData = filteredDetail.data
                ?.map((v) => double.tryParse(v) ?? 0.0)
                .toList() ??
            widget.initialBarData;
        final labels = filteredDetail.labels ?? widget.initialXAxisLabels;

        return _buildFrame(
          context,
          barData: barData,
          xAxisLabels: labels,
          avgActual: filteredDetail.averageActualValue?.toStringAsFixed(1) ??
              widget.initialAvgActual,
          avgTarget: filteredDetail.averageTargetValue?.toStringAsFixed(1) ??
              widget.initialAvgTarget,
          dateRange: labels.isNotEmpty
              ? "${labels.first} - ${labels.last}"
              : "Select Range",
        );
      },
    );
  }

  Widget _buildFrame(
    BuildContext context, {
    bool isLoading = false,
    List<double>? barData,
    List<String>? xAxisLabels,
    String? avgActual,
    String? avgTarget,
    String? dateRange,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final currentBarData = barData ?? widget.initialBarData;
    final currentLabels = xAxisLabels ?? widget.initialXAxisLabels;
    final double totalChartWidth =
        (currentBarData.length * 70.w) + _yAxisReserved.w;

    return Card(
      elevation: 0,
      margin: EdgeInsets.only(bottom: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(color: IColors.light.grayscale.g20),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isLoading ? 0.5 : 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
                  style: textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600)),
              SizedBox(height: 12.h),
              _buildDatePickerTrigger(textTheme, dateRange ?? "Select Range"),
              SizedBox(height: 16.h),
              _buildLegend(textTheme, avgActual ?? widget.initialAvgActual,
                  avgTarget ?? widget.initialAvgTarget),
              SizedBox(height: 16.h),
              SizedBox(
                height: _chartHeight.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: totalChartWidth,
                    child:
                        _buildBarChart(context, currentBarData, currentLabels),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBarChart(
      BuildContext context, List<double> barData, List<String> labels) {
    final textTheme = Theme.of(context).textTheme;
    final maxY = _calculateMaxY(barData);
    final double interval = maxY / 4 > 0 ? maxY / 4 : 1.0; // Crash protection

    return BarChart(
      BarChartData(
        maxY: maxY,
        minY: 0,
        alignment: BarChartAlignment.start,
        groupsSpace: 70.w - _barWidth.w,
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (_) =>
              FlLine(color: IColors.light.grayscale.g20, strokeWidth: 1),
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28.h,
                getTitlesWidget: (_, __) => const SizedBox.shrink()),
          ),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: _yAxisReserved.w,
              interval: interval,
              getTitlesWidget: (value, _) => Text(
                _unitSuffix.isNotEmpty
                    ? '${value.toInt()}$_unitSuffix'
                    : value.toInt().toString(),
                style: textTheme.labelSmall
                    ?.copyWith(color: IColors.light.grayscale.g50),
              ),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              reservedSize: 32.h,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index < 0 || index >= labels.length)
                  return const SizedBox.shrink();
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 18.h,
                  child: Text(labels[index],
                      style: textTheme.labelSmall
                          ?.copyWith(color: IColors.light.grayscale.g50)),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        barGroups: barData
            .asMap()
            .entries
            .map((e) => BarChartGroupData(
                  x: e.key,
                  barRods: [
                    BarChartRodData(
                        toY: e.value,
                        width: _barWidth.w,
                        color: const Color(0xFFD17AB7),
                        borderRadius: BorderRadius.circular(4.r))
                  ],
                ))
            .toList(),
      ),
    );
  }

  Widget _buildDatePickerTrigger(TextTheme textTheme, String displayRange) {
    return InkWell(
      onTap: () => _showFilter(),
      child: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: IColors.light.grayscale.g30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(displayRange,
                style: textTheme.bodyMedium?.copyWith(
                    color: displayRange == "Select Range"
                        ? Colors.grey
                        : Colors.black)),
            Icon(Icons.calendar_today,
                size: 16.sp, color: IColors.light.grayscale.g50),
          ],
        ),
      ),
    );
  }

  void _showFilter() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.r))),
      builder: (context) => KRFilterBottomSheet(
        frequency: widget.frequency,
        onApply: (params) => setState(() => _activeFilters = params),
      ),
    );
  }

  double _calculateMaxY(List<double> data) {
    if (data.isEmpty || data.every((e) => e == 0))
      return widget.format == FORMAT_PERCENT ? 100 : 10;
    if (widget.format == FORMAT_PERCENT) return 100;
    final highest = data.reduce((a, b) => a > b ? a : b);
    return ((highest * 1.4 / 4).ceil() * 4).toDouble();
  }

  Widget _buildLegend(TextTheme textTheme, String actual, String target) {
    return Row(
      children: [
        _legendItem(textTheme, actual, "Avg. Actual", const Color(0xFFD17AB7)),
        SizedBox(width: 16.w),
        _legendItem(
            textTheme, target, "Avg. Target", IColors.light.primary.main),
      ],
    );
  }

  Widget _legendItem(
      TextTheme textTheme, String value, String label, Color color) {
    return Row(
      children: [
        Container(
            width: 8.r,
            height: 8.r,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        SizedBox(width: 6.w),
        Text(value,
            style: textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold, color: color)),
        SizedBox(width: 4.w),
        Text(label,
            style: textTheme.bodyMedium
                ?.copyWith(color: IColors.light.grayscale.g50)),
      ],
    );
  }
}
