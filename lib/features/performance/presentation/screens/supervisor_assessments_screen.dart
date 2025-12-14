import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_widgets.dart';

class SupervisorAssessmentsScreen extends ConsumerWidget {
  const SupervisorAssessmentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supervisorAssessmentAsync =
        ref.watch(performanceSupervisorAssessmentsProvider);

    Future<void> refreshAssessments() async {
      ref.invalidate(performanceSupervisorAssessmentsProvider);
      await ref.read(performanceSupervisorAssessmentsProvider.future);
    }

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment"),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: refreshAssessments,
          child: supervisorAssessmentAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(32.0.w),
                  child: Text(
                    'Error loading assessments: $error\nPull down to retry.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            data: (assessments) {
              final content = assessments.isEmpty
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text('No supervisor assessments found.'),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildAssessmentSection(
                          context,
                          title: 'Supervisor Assessment List',
                          children: assessments.map((assessment) {
                            return buildSupervisorAssessmentTile(
                              context,
                              supervisorAssessment: assessment,
                              onTap: () {
                                globalNavigatorKey.currentContext?.pushNamed(
                                  RoutePaths.supervisorAssessmentDetailName,
                                  extra: assessment,
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    );

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight - 32.h,
                        ),
                        child: content,
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
