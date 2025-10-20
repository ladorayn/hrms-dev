// features/profile/presentation/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_balance_response.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/leave_request_history.dart';
import 'package:hrms_mobile/features/leave_request/presentation/widgets/statistics_card.dart';

import '../providers/leave_provider.dart';

class LeaveRequestScreen extends ConsumerWidget {
  const LeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final leaveBalanceAsync = ref.watch(leaveBalanceProvider);

    final groupedRequests = {
      'December 2025': [
        LeaveRequest(
          leaveType: 'Annual Leave',
          status: 0, // Waiting for Approval
          statusLabel: 'Waiting for Approval',
          startDate: DateTime(2025, 12, 21),
          endDate: DateTime(2025, 12, 23),
        ),
        LeaveRequest(
          leaveType: 'Sick Leave',
          status: 1, // Approved
          statusLabel: 'Approved',
          startDate: DateTime(2025, 12, 2),
          endDate: DateTime(2025, 12, 4),
        ),
      ],
      'September 2025': [
        LeaveRequest(
          leaveType: 'Sick Leave',
          status: 1, // Approved
          statusLabel: 'Approved',
          startDate: DateTime(2025, 9, 2),
          endDate: DateTime(2025, 9, 4),
        ),
      ],
    };

    ref.listen<AsyncValue>(leaveBalanceProvider, (previous, next) {
      // Show a SnackBar if the new state is an error
      if (next is AsyncError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not load leave balance: ${next.error}'),
          ),
        );
      }
    });

    final months = groupedRequests.keys.toList();
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: leaveBalanceAsync.when(
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
                            // On ERROR, show an error message
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
                                ?.push(RoutePaths.overtimeRequest);
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
                                  // This ListView will scroll inside its parent Expanded container
                                  child: ListView.builder(
                                    itemCount: months.length,
                                    itemBuilder: (context, index) {
                                      final month = months[index];
                                      final requestsInMonth =
                                          groupedRequests[month]!;

                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Month Header
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text(month,
                                                style: textTheme.titleSmall),
                                          ),
                                          // List of requests for that month
                                          ...requestsInMonth.map(
                                            (request) => LeaveRequestItem(
                                                request: request),
                                          ),
                                          const SizedBox(
                                              height:
                                                  20), // Space between months
                                        ],
                                      );
                                    },
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
