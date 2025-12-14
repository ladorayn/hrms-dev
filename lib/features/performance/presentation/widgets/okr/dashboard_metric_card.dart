import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class DashboardMetricCard extends StatelessWidget {
  final String title;
  final String dateRange;
  final List<double> barData;
  final List<double> lineData;
  final List<String> xAxisLabels;

  const DashboardMetricCard({
    super.key,
    required this.title,
    required this.dateRange,
    required this.barData,
    required this.lineData,
    required this.xAxisLabels,
  });

  final double maxY = 1000;
  static const double Y_AXIS_RESERVED_SIZE = 40.0;
  static const double CHART_WRAPPER_PADDING_H = 12.0;
  static const double CHART_BOTTOM_PADDING = 20.0;

  // ADJUSTMENT: Increase bar width
  static const double BAR_WIDTH = 16.0;
  static const double GROUP_SPACE = 8.0;

  Widget _buildLegendItem(
      TextTheme textTheme, String value, String label, Color color) {
    return Row(
      children: [
        Container(
          width: 8.r,
          height: 8.r,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          '$value ',
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: textTheme.bodyMedium?.copyWith(
            color: IColors.light.grayscale.g50,
          ),
        ),
      ],
    );
  }

  BarChartGroupData _makeBarGroupData(int x, double barY) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: barY,
          color: const Color(0xFFD17AB7),
          width: BAR_WIDTH.w,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
        ),
      ],
    );
  }

  Widget _buildChart(BuildContext context) {
    // Calculated offset for LineChart's left padding
    final double lineChartLeftOffset =
        CHART_WRAPPER_PADDING_H.w + Y_AXIS_RESERVED_SIZE.w;

    return SizedBox(
      height: 220.h,
      child: Stack(
        children: [
          // 1. BarChart (Base Layer with Axes)
          Padding(
            padding: EdgeInsets.only(
                top: 16.h,
                right: CHART_WRAPPER_PADDING_H.w,
                left: CHART_WRAPPER_PADDING_H.w),
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceEvenly,
                maxY: maxY,
                barTouchData: BarTouchData(enabled: false),
                groupsSpace: GROUP_SPACE.w,
                titlesData: FlTitlesData(
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: EdgeInsets.only(top: 6.h),
                          child: Text(
                            xAxisLabels[value.toInt()],
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(color: IColors.light.grayscale.g60),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 200,
                      reservedSize: Y_AXIS_RESERVED_SIZE,
                      getTitlesWidget: (value, meta) {
                        if (value == 0) return const Text("0");
                        if (value == 1000) return const Text("1K");

                        return Text(
                          value.toInt().toString(),
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: IColors.light.grayscale.g50,
                                  ),
                        );
                      },
                    ),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: IColors.light.grayscale.g20.withOpacity(0.5),
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(show: false),
                barGroups: barData
                    .asMap()
                    .entries
                    .map((e) => _makeBarGroupData(e.key, e.value))
                    .toList(),
              ),
              swapAnimationDuration: const Duration(milliseconds: 150),
            ),
          ),

          // 2. LineChart (Overlay Layer)
          Padding(
            // Use calculated offset for left padding to align with BarChart's plotting area
            padding: EdgeInsets.only(
                top: 16.h,
                right: CHART_WRAPPER_PADDING_H.w,
                left: lineChartLeftOffset,
                bottom: CHART_BOTTOM_PADDING.h),
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: xAxisLabels.length - 1,
                minY: 0,
                maxY: maxY,
                titlesData: const FlTitlesData(show: false),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineTouchData: const LineTouchData(enabled: true),
                clipData: const FlClipData.all(),
                lineBarsData: [
                  LineChartBarData(
                    spots: lineData
                        .asMap()
                        .entries
                        .map((e) => FlSpot(e.key.toDouble(), e.value))
                        .toList(),
                    isCurved: true,
                    color: IColors.light.primary.main,
                    barWidth: 2,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, bar, index) =>
                          FlDotCirclePainter(
                        radius: 3,
                        color: Colors.white,
                        strokeWidth: 2,
                        strokeColor: IColors.light.primary.main,
                      ),
                    ),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(color: IColors.light.grayscale.g20),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'Last Update 12/12/2025 05:00 PM',
              style: textTheme.labelSmall?.copyWith(
                color: IColors.light.grayscale.g50,
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: IColors.light.grayscale.g30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dateRange,
                    style: textTheme.bodyMedium,
                  ),
                  Icon(Icons.calendar_today,
                      size: 16.sp, color: IColors.light.grayscale.g50),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                _buildLegendItem(
                    textTheme, '142', 'Avg. Actual', const Color(0xFFD17AB7)),
                SizedBox(width: 16.w),
                _buildLegendItem(
                    textTheme, '80', 'Avg. Target', IColors.light.primary.main),
              ],
            ),
            SizedBox(height: 12.h),
            _buildChart(context),
          ],
        ),
      ),
    );
  }
}
