import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_widgets.dart';

class SupervisorAssessmentsScreen extends ConsumerWidget {
  final List<SupervisorAssessment> assessments;

  const SupervisorAssessmentsScreen({super.key, required this.assessments});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment"),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
