import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/attendance_log_tab.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/overtime_log_tab.dart';

class AttendanceOvertimeScreen extends ConsumerWidget {
  const AttendanceOvertimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text(
            'Attendance and Overtime',
            style: textTheme.titleLarge?.copyWith(fontSize: 18),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: IColors.light.primary.hover,
            onPressed: () => context.pop(),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48), // tab height
            child: Column(
              children: [
                Container(
                  height: 1,
                  color: Colors.grey.shade300, // divider under tab
                ),
                TabBar(
                  labelColor: IColors.light.primary.main,
                  unselectedLabelColor: Color(0xFF8E8E8E),
                  indicatorColor: IColors.light.primary.main,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: "Attendance"),
                    Tab(text: "Overtime"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            AttendanceLogTab(),
            OvertimeLogTab(),
          ],
        ),
      ),
    );
  }
}
