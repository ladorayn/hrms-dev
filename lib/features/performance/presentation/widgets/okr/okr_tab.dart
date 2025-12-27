import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/okr_card.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/section_title.dart';

class OKRTab extends ConsumerStatefulWidget {
  final OKRList okrList;

  const OKRTab({super.key, required this.okrList});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OKRTabState();
}

class _OKRTabState extends ConsumerState<OKRTab> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final okrDetailAsync =
        ref.watch(oKRDetailRProvider(okrId: widget.okrList.id));

    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: okrDetailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (okrDetail) {
          final objectives = okrDetail.objectives ?? [];

          if (objectives.isEmpty) {
            return const Center(child: Text("No objectives found"));
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

  Widget _buildCollapsableData(Objective objective) {
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
      title: SectionTitle(objective.title ?? "No Title"),
      tilePadding: EdgeInsets.zero,
      children: (objective.keyResults ?? []).map<Widget>((kr) {
        return OKRCard(
          kr: kr,
          memberCount: 1,
          statusCode: kr.status ?? 0,
          progress: (kr.progress ?? 0).toDouble(),
          desc: kr.title ?? "",
          onTap: () {
            context.pushNamed(RoutePaths.okrKeyResultName, extra: {
              'kr': kr,
              'objectiveTitle': objective.title,
              'memberCount': 1,
              'statusCode': kr.status,
              'progress': (kr.progress ?? 0).toDouble(),
              'keyResultDesc': kr.description,
            });
          },
        );
      }).toList(),
    );
  }
}
