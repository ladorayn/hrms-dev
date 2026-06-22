import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_schedule.dart';

class SupervisorAssessmentScheduleScreen extends ConsumerWidget {
  final SupervisorAssessmentSchedulePayload schedule;

  const SupervisorAssessmentScheduleScreen({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final detailAsync = ref.watch(
    //   performanceSupervisorAssessmentDetailProvider(
    //     supervisorAssessmentId: assessment.id,
    //   ),
    // );

    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: IAppBar(title: l10n.performanceSupervisorAssessmentSchedule),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssessmentScheduleWidget(schedulePayload: schedule),
            ],
          ),
        ),
      ),
    );
  }
}
