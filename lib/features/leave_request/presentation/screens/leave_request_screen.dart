// features/profile/presentation/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/statistics_card.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/user_info.dart';

class LeaveRequestScreen extends ConsumerWidget {
  const LeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
                        child: ProfileAppBar(),
                      ),
                      SizedBox(height: 24.sp),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: UserInfo(),
                      ),
                      SizedBox(height: 24.sp),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: StatisticsCard(),
                      ),
                      SizedBox(height: 32.sp),
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
                            padding: EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [],
                              ),
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
