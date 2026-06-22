import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/performance_menu.dart';

class PerformanceScreen extends ConsumerWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final assessmentListAsync = ref.watch(assessmentListRProvider);
    final okrListAsync = ref.watch(oKRListRProvider);
    final supervisorAssessmentAsync =
        ref.watch(performanceSupervisorAssessmentsProvider);

    if (assessmentListAsync.isLoading ||
        supervisorAssessmentAsync.isLoading ||
        okrListAsync.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (assessmentListAsync.hasError) {
      return Scaffold(
        body: Center(
            child: Text(l10n.performanceErrorLoadingSelfAssessments(
                '${assessmentListAsync.error}'))),
      );
    }

    if (okrListAsync.hasError) {
      return Scaffold(
        body: Center(
            child: Text(l10n.performanceErrorLoadingOkr('${okrListAsync.error}'))),
      );
    }
    final assessments = assessmentListAsync.value!;
    final okrs = okrListAsync.value!;

    final supervisorData = supervisorAssessmentAsync.value;
    final isSupervisorDataReady = supervisorAssessmentAsync.hasValue;
    final supervisorError = supervisorAssessmentAsync.hasError
        ? supervisorAssessmentAsync.error
        : null;

    // --- Define Supervisor Menu Behavior ---

    final supervisorOnTap = isSupervisorDataReady
        ? () {
            globalNavigatorKey.currentContext?.pushNamed(
              RoutePaths.supervisorAssessmentName,
              extra: supervisorData,
            );
          }
        : () {
            showCustomToast(
                context,
                supervisorAssessmentAsync.isLoading
                    ? l10n.performanceLoadingSupervisorAssessments
                    : supervisorError != null
                        ? l10n.performanceErrorLoadingSupervisorAssessments(
                            '$supervisorError')
                        : l10n.performanceSupervisorDataNotAvailable,
                supervisorAssessmentAsync.isLoading
                    ? ToastType.info
                    : supervisorError != null
                        ? ToastType.error
                        : ToastType.info);
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text(
            //       supervisorAssessmentAsync.isLoading
            //           ? 'Loading supervisor assessments...'
            //           : supervisorError != null
            //               ? 'Error loading supervisor assessments: $supervisorError'
            //               : 'Supervisor assessments data not available.',
            //     ),
            //   ),
            // );
          };

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: IAppBar(
        title: l10n.performanceTitle,
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
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildAssessmentMenus(context, assessments),
                              PerformanceMenu(
                                icon: IAssets.okr,
                                title: l10n.performanceMyOkr,
                                onTap: () {
                                  globalNavigatorKey.currentContext?.pushNamed(
                                    RoutePaths.okrListName,
                                    extra: okrs,
                                  );
                                },
                              ),
                              PerformanceMenu(
                                icon: IAssets.supervisorAssessment,
                                title: l10n.performanceSupervisorAssessment,
                                onTap: supervisorOnTap,
                                // isLoading: supervisorAssessmentAsync.isLoading,
                                // Optional: Add visual indicator for error if needed
                                // hasError: supervisorAssessmentAsync.hasError,
                              ),
                            ],
                          ),
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

  // --- Helper Method ---

  Widget _buildAssessmentMenus(
      BuildContext context, List<AssessmentList> assessments) {
    final l10n = AppLocalizations.of(context)!;
    final recentAssessment = assessments.isNotEmpty ? assessments[0] : null;
    final title = l10n.performanceSelfAssessment;
    final dueDate =
        recentAssessment?.dueDate ?? l10n.performanceNotAvailable;

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
