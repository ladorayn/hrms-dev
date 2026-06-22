import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context)!;
    final graphAsync =
        ref.watch(performanceGetGraphsProvider(id: widget.okrList.id ?? 0));

    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: graphAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            Center(child: Text(l10n.performanceError(err.toString()))),
        data: (objectives) {
          if (objectives.isEmpty) {
            return Center(child: Text(l10n.performanceNoGraphData));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: objectives.length,
                  itemBuilder: (context, index) {
                    return _buildCollapsableData(context, objectives[index]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCollapsableData(BuildContext context, OKRGraphData objective) {
    final l10n = AppLocalizations.of(context)!;
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
      title: SectionTitle(objective.name ?? l10n.performanceObjectiveFallback),
      tilePadding: EdgeInsets.zero,
      children: (objective.keyResults ?? []).map<Widget>((kr) {
        // Prepare data for the chart component
        List<double> chartData =
            kr.data?.map((value) => double.tryParse(value) ?? 0.0).toList() ??
                [];

        final series = buildSeriesByFrequency(
          frequency: kr.frequency ?? 4,
          data: chartData,
          labels: kr.labels ?? [],
          target: kr.averageTargetValue ?? 0,
        );

        return DashboardMetricCard(
          title: kr.name ?? l10n.performanceMetricFallback,
          // Identifiers needed for individual graph API calls
          cycleId: widget.okrList.id ?? 0,
          krId: kr.id ?? 0,
          frequency: kr.frequency ?? 4,
          // Initial data from the overview dashboard
          initialBarData: series.bars,
          initialXAxisLabels: series.labels,
          initialAvgActual: kr.averageActualValue?.toStringAsFixed(1) ?? '0',
          initialAvgTarget: kr.averageTargetValue?.toStringAsFixed(1) ?? '0',
          format: kr.format ?? 999,
          formatLabel: kr.formatLabel ?? '',
        );
      }).toList(),
    );
  }
}
