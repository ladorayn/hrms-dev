import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/assessment_validation_manager_tab.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/self_assessment_manager_tab.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/team_member_information.dart';

class AssessmentFormManagerScreen extends ConsumerWidget {
  final TeamMember member;
  final String period;

  const AssessmentFormManagerScreen(
      {super.key, required this.member, required this.period});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Self Assessment - $period"),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TeamMemberInfoSection(member: member),
            SizedBox(height: 8.h),

            // --- Tab Bar ---
            Container(
              color: Colors.white,
              child: TabBar(
                labelColor: IColors.light.primary.main,
                unselectedLabelColor: IColors.light.grayscale.g60,
                indicatorColor: IColors.light.primary.main,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle:
                    textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(text: "Self Assessment"),
                  Tab(text: "Assessment Validation"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Make sure these widgets implement AutomaticKeepAliveClientMixin
                  AssessmentTabFormManagerScreen(
                    isReadOnly: true,
                  ),
                  AssessmentValidationFormTabManagerScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
