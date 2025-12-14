import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/presentation/providers/leave_provider.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_request_history.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/statistics_card.dart';

class LeaveRequestScreen extends ConsumerWidget {
  const LeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final leaveBalanceAsync = ref.watch(leaveBalanceProvider);
    final leaveHistoryAsync = ref.watch(leaveHistoriesProvider);

    ref.listen<AsyncValue>(leaveBalanceProvider, (previous, next) {
      if (next is AsyncError) {
        showCustomToast(context, 'Could not load leave balance: ${next.error}',
            ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text('Could not load leave balance: ${next.error}'),
        //   ),
        // );
      }
    });

    return Scaffold(
      appBar: IAppBar(
        title: "Leave Request",
        centerTitle: true,
        noIcon: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      // --- (StatisticsCard and Button are unchanged) ---
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: leaveBalanceAsync.when(
                          // ... (rest of leaveBalanceAsync.when)
                          skipError: true,
                          data: (balance) {
                            return StatisticsCard(balance: balance);
                          },
                          loading: () {
                            return const SizedBox(
                              height: 120,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          },
                          error: (err, stack) {
                            return const StatisticsCard(
                              balance: LeaveBalanceResponse(
                                  timeOffUsed: 0, availableTimeOff: 0),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 16.sp),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ElevatedButton(
                          // ... (button style)
                          style: ElevatedButton.styleFrom(
                            backgroundColor: IColors.light.primary.main,
                            foregroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            globalNavigatorKey.currentContext
                                ?.push(RoutePaths.leaveRequestForm);
                          },
                          child: Text("New Leave Request"),
                        ),
                      ),
                      SizedBox(height: 16.sp),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Leave Request",
                                  style: textTheme.titleMedium?.copyWith(
                                      color: IColors.light.primary.main),
                                ),
                                const SizedBox(height: 16),
                                Expanded(
                                  // --- Use the provider's .when() here ---
                                  child: leaveHistoryAsync.when(
                                    data: (leaveGroups) {
                                      if (leaveGroups.isEmpty) {
                                        return const Center(
                                          child:
                                              Text("No leave history found."),
                                        );
                                      }
                                      // --- This ListView is now built from REAL data ---
                                      return ListView.builder(
                                        itemCount: leaveGroups.length,
                                        itemBuilder: (context, index) {
                                          final group = leaveGroups[index];
                                          final requestsInMonth = group.leaves;

                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Text(group.label,
                                                    style:
                                                        textTheme.titleSmall),
                                              ),
                                              ...requestsInMonth.map(
                                                (request) => LeaveRequestItem(
                                                    request: request),
                                              ),
                                              const SizedBox(height: 20),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    loading: () => const Center(
                                        child: CircularProgressIndicator()),
                                    error: (err, stack) => Center(
                                        child: Text(
                                            "Failed to load history: $err")),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
