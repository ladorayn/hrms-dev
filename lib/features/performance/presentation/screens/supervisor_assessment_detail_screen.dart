import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart'; // Import the provider
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
    final l10n = AppLocalizations.of(context)!;
    final detailAsync = ref.watch(
      performanceSupervisorAssessmentDetailProvider(
        supervisorAssessmentId: assessment.id,
      ),
    );

    return Scaffold(
      appBar: IAppBar(title: l10n.performanceSupervisorAssessment),
      backgroundColor: IColors.light.grayscale.g10,
      body: detailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
            child: Text(l10n.performanceErrorLoadingDetails(err.toString()))),
        data: (detail) {
          final bool isCompleted = detail.statusLabel == 'Completed';

          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmployeeInformationSection(assessmentDetail: detail),
                  SizedBox(height: 16.h),
                  AssessmentScheduleWidget(assessmentDetail: detail),
                  SizedBox(height: 16.h),
                  AssessmentFormCard(
                    assessmentDetail: detail,
                    onTap: (assessor) {
                      context.pushNamed(
                        RoutePaths.supervisorAssessmentFormName,
                        extra: {'detail': detail, 'assessor': assessor},
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
