import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_widgets.dart';

class ManagerAssessmentLandingScreen extends ConsumerWidget {
  final AssessmentList assessment;

  const ManagerAssessmentLandingScreen({
    super.key,
    required this.assessment,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final teamMembers = assessment.teamMember ?? [];
    return Scaffold(
      appBar: IAppBar(
          title: l10n.performanceSelfAssessmentWithPeriod(assessment.period ?? '')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAssessmentSection(
                context,
                title: l10n.performanceMySelfAssessment,
                children: [
                  buildAssessmentTile(
                    context,
                    item: assessment,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentFormName,
                        extra: assessment,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              buildAssessmentSection(
                context,
                title: l10n.performanceTeamMemberSelfAssessment,
                children: teamMembers.map((member) {
                  return buildTeamMemberTile(
                    context,
                    member: member,
                    onTap: () {
                      globalNavigatorKey.currentContext?.pushNamed(
                        RoutePaths.assessmentManagerFormName,
                        extra: {
                          "member": member,
                          "period": assessment.period,
                          "assessment": assessment,
                        },
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
