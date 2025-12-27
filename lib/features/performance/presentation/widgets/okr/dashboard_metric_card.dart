import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class DashboardMetricCard extends StatelessWidget {
  final String title;
  final String dateRange;
  final List<double> barData;
  final List<String> xAxisLabels;
  final String avgActual;
  final String avgTarget;
  final int format;
  final String formatLabel;

  const DashboardMetricCard({
    super.key,
    required this.title,
    required this.dateRange,
    required this.barData,
    required this.xAxisLabels,
    required this.avgActual,
    required this.avgTarget,
    required this.format,
    required this.formatLabel,
  });

  static const double _cardPadding = 16;
  static const double _chartHeight = 250;
  static const double _yAxisReserved = 46;
  static const double _barWidth = 24;

  static const int FORMAT_NUMBER = 0;
  static const int FORMAT_NUMBER_DECIMAL = 1;
  static const int FORMAT_PERCENT = 2;
  static const int FORMAT_PERCENT_DECIMAL = 3;

  String get _unitSuffix {
    return switch (formatLabel) {
      'Percentage' || 'Percentage (Decimal)' => '%',
      'Currency (IDR)' => 'Rp',
      'Time (Seconds)' => 's',
      'Time (Minutes)' => 'min',
      'Time (Hours)' => 'h',
      'Time (Days)' => 'd',
      'Time (Months)' => 'mo',
      'Time (Years)' => 'y',
      _ => '',
    };
  }

  double get _slotWidth => 70.w;

  bool get _isPercentageFormat =>
      format == FORMAT_PERCENT || format == FORMAT_PERCENT_DECIMAL;

  double get _maxY {
    if (barData.isEmpty) {
      return _isPercentageFormat ? 100 : 10;
    }

    if (_isPercentageFormat) {
      return 100;
    }

    final highest = barData.reduce((a, b) => a > b ? a : b);

    final top = highest * 1.4; // 40% headroom

    if (top <= 10) return 10;

    return ((top / 4).ceil() * 4).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final double totalChartWidth =
        (barData.length * _slotWidth) + _yAxisReserved.w;

    return Card(
      elevation: 0,
      margin: EdgeInsets.only(bottom: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(color: IColors.light.grayscale.g20),
      ),
      child: Padding(
        padding: EdgeInsets.all(_cardPadding.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600)),
            // SizedBox(height: 4.h),
            // Text("Last Update 12/12/2025 05:00 PM",
            //     style: textTheme.labelSmall
            //         ?.copyWith(color: IColors.light.grayscale.g50)),
            SizedBox(height: 12.h),
            _buildDatePicker(textTheme),
            SizedBox(height: 16.h),
            _buildLegend(textTheme),
            SizedBox(height: 16.h),
            SizedBox(
              height: _chartHeight.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  width: totalChartWidth,
                  child: _buildBarChart(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBarChart(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BarChart(
      BarChartData(
        maxY: _maxY,
        minY: 0,
        alignment: BarChartAlignment.start,
        groupsSpace: _slotWidth - _barWidth.w,
        barTouchData: BarTouchData(
          enabled: true,
          handleBuiltInTouches: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) => Colors.black.withOpacity(0.85),
            getTooltipItem: (group, _, rod, __) {
              final label = xAxisLabels[group.x];
              return BarTooltipItem(
                '$label\nActual: ${rod.toY.toStringAsFixed(1)}',
                const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              );
            },
          ),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: _maxY / 4,
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
            axisNameWidget: Text(
              formatLabel,
              style: textTheme.labelSmall
                  ?.copyWith(color: IColors.light.grayscale.g50),
            ),
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: _yAxisReserved.w,
              interval: _maxY / 4,
              getTitlesWidget: (value, _) {
                final label = _unitSuffix.isNotEmpty
                    ? '${value.toInt()}$_unitSuffix'
                    : value.toInt().toString();

                return Text(
                  label,
                  style: textTheme.labelSmall
                      ?.copyWith(color: IColors.light.grayscale.g50),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              reservedSize: 32.h,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index < 0 || index >= xAxisLabels.length) {
                  return const SizedBox.shrink();
                }
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 18.h,
                  child: Text(xAxisLabels[index],
                      style: textTheme.labelSmall
                          ?.copyWith(color: IColors.light.grayscale.g50)),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        barGroups: barData.asMap().entries.map((e) {
          return BarChartGroupData(
            x: e.key,
            barRods: [
              BarChartRodData(
                toY: e.value,
                width: _barWidth.w,
                color: const Color(0xFFD17AB7),
                borderRadius: BorderRadius.circular(4.r),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDatePicker(TextTheme textTheme) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: IColors.light.grayscale.g30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(dateRange, style: textTheme.bodyMedium),
          Icon(Icons.calendar_today,
              size: 16.sp, color: IColors.light.grayscale.g50),
        ],
      ),
    );
  }

  Widget _buildLegend(TextTheme textTheme) {
    return Row(
      children: [
        _legendItem(
            textTheme, avgActual, "Avg. Actual", const Color(0xFFD17AB7)),
        SizedBox(width: 16.w),
        _legendItem(
            textTheme, avgTarget, "Avg. Target", IColors.light.primary.main),
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
                ?.copyWith(fontWeight: FontWeight.w600, color: color)),
        SizedBox(width: 4.w),
        Text(label,
            style: textTheme.bodyMedium
                ?.copyWith(color: IColors.light.grayscale.g50)),
      ],
    );
  }
}
