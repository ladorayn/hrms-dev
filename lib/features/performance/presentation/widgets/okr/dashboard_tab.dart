import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/chart.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/dashboard_metric_card.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/section_title.dart';

class DashboardTab extends ConsumerStatefulWidget {
  final OKRList okrList;

  const DashboardTab({super.key, required this.okrList});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardTabState();
}

class _DashboardTabState extends ConsumerState<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    final graphAsync =
        ref.watch(performanceGetGraphsProvider(id: widget.okrList.id ?? 0));

    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: graphAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (objectives) {
          if (objectives.isEmpty) {
            return const Center(child: Text("No graph data available"));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: objectives.length,
                  itemBuilder: (context, index) {
                    return _buildCollapsableData(objectives[index]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCollapsableData(OKRGraphData objective) {
    return ExpansionTile(
      collapsedIconColor: IColors.light.primary.main,
      expansionAnimationStyle: AnimationStyle(
        duration: const Duration(milliseconds: 700),
        reverseDuration: const Duration(milliseconds: 700),
        curve: Curves.decelerate,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      collapsedBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      title: SectionTitle(objective.name ?? "Objective"),
      tilePadding: EdgeInsets.zero,
      children: (objective.keyResults ?? []).map<Widget>((kr) {
        String dateRange = kr.labels != null && kr.labels!.isNotEmpty
            ? "${kr.labels!.first} - ${kr.labels!.last}"
            : "No date range";

        final series = buildSeriesByFrequency(
          frequency: kr.frequency ?? 4,
          data: kr.data ?? [],
          labels: kr.labels ?? [],
          target: kr.averageTargetValue ?? 0,
        );

        return DashboardMetricCard(
          title: kr.name ?? "Metric",
          dateRange: dateRange,
          barData: series.bars,
          // lineData: series.line,
          xAxisLabels: series.labels,
          avgActual: kr.averageActualValue?.toStringAsFixed(1) ?? '0',
          avgTarget: kr.averageTargetValue?.toStringAsFixed(1) ?? '0',
          format: kr.format ?? 999,
          formatLabel: kr.formatLabel ?? '',
        );
      }).toList(),
    );
  }
}
