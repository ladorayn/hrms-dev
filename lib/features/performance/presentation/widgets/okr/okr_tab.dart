import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/mock_values.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/okr_card.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/section_title.dart';

class OKRTab extends ConsumerStatefulWidget {
  const OKRTab({
    super.key,
  });

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
    final textTheme = Theme.of(context).textTheme;
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
        return OKRCard(
          memberCount: okr['memberCount'] as int,
          statusCode: okr['status'] as int,
          progress: okr['progress'] as double,
          desc: okr['desc'] as String,
          onTap: () {
            globalNavigatorKey.currentContext
                ?.pushNamed(RoutePaths.okrKeyResultName, extra: {
              'objectiveTitle': item['title'],
              'memberCount': okr['memberCount'],
              'statusCode': okr['status'],
              'progress': okr['progress'],
              'keyResultDesc': okr['desc'],
            });
          },
        );
      }).toList(),
    );
  }
}
