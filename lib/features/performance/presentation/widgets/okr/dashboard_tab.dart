import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/mock_values.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/dashboard_metric_card.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/section_title.dart';

// NOTE: Renamed to DashboardTab for clarity
class DashboardTab extends ConsumerStatefulWidget {
  const DashboardTab({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardTabState();
}

// NOTE: Renamed State Class
class _DashboardTabState extends ConsumerState<DashboardTab> {
  // Mock chart data for all cards
  final List<double> chartBarData = const [
    400,
    550,
    250,
    450,
    150,
    580,
    450,
    380,
    400,
    320,
    450,
    300
  ];
  final List<double> chartLineData = const [
    350,
    600,
    280,
    500,
    200,
    620,
    500,
    420,
    450,
    350,
    500,
    350
  ];
  final List<String> xAxisLabels = const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mockOKRItems.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Use the modified method to build the chart cards
                    _buildCollapsableData(mockOKRItems[index]),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollapsableData(dynamic item) {
    // This function now returns the Objective title wrapped in ExpansionTile,
    // and the children are DashboardMetricCards (the charts).
    return ExpansionTile(
      collapsedIconColor: IColors.light.primary.main,
      expansionAnimationStyle: AnimationStyle(
        duration: const Duration(milliseconds: 700),
        reverseDuration: const Duration(milliseconds: 700),
        curve: Curves.decelerate,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      collapsedBackgroundColor: Colors.white,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      backgroundColor: Colors.white,
      title: SectionTitle(item['title']),
      tilePadding: EdgeInsets.zero,
      children: (item['okr'] as List<dynamic>).map<Widget>((okr) {
        // Mock data to provide unique titles and date ranges for the chart cards
        String title = okr['desc'] is String
            ? okr['desc'].split(' ')[0] + " Metric"
            : "Performance Metric";
        String dateRange = "Week 44, 2025 - Week 55, 2025";

        return DashboardMetricCard(
          title: title,
          dateRange: dateRange,
          barData: chartBarData,
          // Use mock data
          lineData: chartLineData,
          // Use mock data
          xAxisLabels: xAxisLabels, // Use mock data
        );
      }).toList(),
    );
  }
}
