import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/performance_menu.dart';

class PerformanceScreen extends ConsumerWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assessmentListAsync = ref.watch(assessmentListRProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: IAppBar(
        title: "Performance",
        centerTitle: true,
        noIcon: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: assessmentListAsync.when(
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (err, stack) => Center(
                              child: Text('Error loading assessments: $err')),
                          data: (assessments) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  _buildAssessmentMenus(assessments),
                                  PerformanceMenu(
                                    icon: IAssets.okr,
                                    title: 'My OKR',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAssessmentMenus(List<AssessmentList> assessments) {
    final recentAssessment = assessments.isNotEmpty ? assessments[0] : null;
    final title = 'Self Assessment';
    final dueDate = recentAssessment?.dueDate ?? 'N/A';

    return PerformanceMenu(
      icon: IAssets.selfAssessment,
      title: title,
      dueDate: dueDate,
      onTap: () {
        globalNavigatorKey.currentContext?.pushNamed(
          RoutePaths.selfAssessmentName,
          extra: assessments,
        );
      },
    );
  }
}
