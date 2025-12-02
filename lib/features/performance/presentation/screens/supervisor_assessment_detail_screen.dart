import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_schedule.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/employee_information_section.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/supervisor_assessment_card.dart';

class SupervisorAssessmentDetailScreen extends ConsumerWidget {
  final SupervisorAssessment assessment;

  const SupervisorAssessmentDetailScreen({
    super.key,
    required this.assessment,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isCompleted = assessment.statusLabel == 'Completed';

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment"),
      backgroundColor: IColors.light.grayscale.g10,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmployeeInformationSection(assessment: assessment),
              SizedBox(height: 16.h),
              AssessmentScheduleWidget(assessment: assessment),
              SizedBox(height: 16.h),
              AssessmentFormCard(
                assessment: assessment,
                onTap: () {
                  context.pushNamed(
                    RoutePaths.supervisorAssessmentFormName,
                    extra: assessment,
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
