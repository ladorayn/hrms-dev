import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_schedule.dart';
import 'package:hrms_mobile/features/offboarding/presentation/widgets/offboarding_schedule_widget.dart';

class ExitInterviewScheduleScreen extends ConsumerWidget {
  final ExitInterviewSchedulePayload schedule;

  const ExitInterviewScheduleScreen({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: IAppBar(title: "Exit Interview Schedule"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OffboardingScheduleWidget(
                schedulePayload: OffboardingSchedule(
                  id: int.parse(schedule.id ?? '0'),
                  startTime: schedule.startTime,
                  endTime: schedule.endTime,
                  interviewer: schedule.interviewer,
                  date: schedule.date,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
