// features/dashboard/presentation/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/user_provider.dart';
import 'package:hrms_mobile/features/dashboard/presentation/widgets/recent_activity_tiles.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final userJson = user.value?.toJson();
    print("USER JSON $userJson");
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  IColors.light.primary.main,
                  IColors.light.primary.main.withValues(alpha: 0.9),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.65),
                  IColors.light.primary.main.withValues(alpha: 0.9),
                  IColors.light.primary.hover,
                ],
                stops: const [
                  0.0,
                  0.15,
                  0.35,
                  0.37,
                  0.39,
                  0.42,
                  0.44,
                  0.46,
                  0.65,
                  1
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'PT Catur Pilar Sejahtera',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phoenix Baker',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Product Designer',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: IColors.dark.accent,
                          child: Icon(Icons.person_outline),
                          // backgroundImage: NetworkImage('...'), // Add user image
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'August 5, 2025',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: IColors.light.primary.focused,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: IColors.light.primary.foreground,
                      border: Border.all(
                        color: IColors.light.primary.border,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 10,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      IColors.light.primary.background,
                                  radius: 15,
                                  child: SvgPicture.asset(
                                    IAssets.clockIn,
                                    height: 24.0,
                                    width: 24.0,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Clock In',
                                      style:
                                          TextStyle(color: Color(0xFF8E8E8E)),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      label: const Text(
                                        'Clock In',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            IColors.light.primary.main,
                                        foregroundColor:
                                            IColors.light.primary.foreground,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: IColors.light.grayscale.g20,
                          ),
                          Expanded(
                            child: Row(
                              spacing: 10,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      IColors.light.primary.background,
                                  radius: 15,
                                  child: SvgPicture.asset(
                                    IAssets.clockOut,
                                    height: 24.0,
                                    width: 24.0,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Clock Out',
                                      style:
                                          TextStyle(color: Color(0xFF8E8E8E)),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      label: const Text(
                                        'Clock Out',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            IColors.light.primary.main,
                                        foregroundColor:
                                            IColors.light.primary.foreground,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Container(
                            color: Color(0xFFF8FCFF),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                spacing: 10,
                                children: [
                                  CircleAvatar(
                                    child: SvgPicture.asset(
                                      IAssets.overtime,
                                      height: 24.0,
                                      width: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Overtime Request',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Color(0xFFF8FCFF),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                spacing: 10,
                                children: [
                                  CircleAvatar(
                                    child: SvgPicture.asset(
                                      IAssets.documentSolid,
                                      height: 24.0,
                                      width: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'New Leave Request',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recent Activity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: IColors.light.primary.main,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 4, // Example item count
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return AttendanceListTile(
                                    title: 'Clock In',
                                    subtitle: 'September 9, 2025',
                                    time: '07:58 AM',
                                    leadingIconAsset: IAssets.clockIn,
                                    status: AttendanceStatus.onTime,
                                  );
                                }
                                if (index == 1) {
                                  return AttendanceListTile(
                                    title: 'Clock Out',
                                    subtitle: 'September 9, 2025',
                                    time: '05:05 PM',
                                    leadingIconAsset: IAssets.clockOut,
                                    status: AttendanceStatus.waitingApproval,
                                  );
                                }
                                if (index == 2) {
                                  return AttendanceListTile(
                                    title: 'Clock In',
                                    subtitle: 'September 8, 2025',
                                    time: '08:15 AM',
                                    leadingIconAsset: IAssets.clockIn,
                                    status: AttendanceStatus
                                        .late, // Using the 'late' status
                                  );
                                }
                                return AttendanceListTile(
                                  title: 'Clock Out',
                                  subtitle: 'September 8, 2025',
                                  time: '05:00 PM',
                                  leadingIconAsset: IAssets.clockOut,
                                  status: AttendanceStatus.onTime,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
