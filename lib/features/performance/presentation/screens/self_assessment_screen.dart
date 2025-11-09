import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';

class SelfAssessmentScreen extends ConsumerWidget {
  const SelfAssessmentScreen({super.key});

  // --- 1. Added dummy data based on your Figma design ---
  final List<Map<String, String?>> _dummyData = const [
    {'title': 'Q4 2025', 'status': 'Incomplete', 'dueDate': 'November 2, 2025'},
    {'title': 'Q3 2025', 'status': 'Complete', 'dueDate': null},
    {'title': 'Q2 2025', 'status': 'Complete', 'dueDate': null},
    {'title': 'Q1 2025', 'status': 'Complete', 'dueDate': null},
    {'title': 'Q4 2023', 'status': 'Complete', 'dueDate': null},
  ];

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Self Assessment"),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(top: 20.h),
                  // ... inside your ListView.builder ...

                  itemBuilder: (context, index) {
                    final item = _dummyData[index];
                    final title = item['title']!;
                    final status = item['status']!;
                    final dueDate = item['dueDate'];

                    return GestureDetector(
                      onTap: () {
                        // ToDo: Handle navigation
                      },
                      child: ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,

                        // --- THIS IS THE FIX ---
                        // 1. Remove the subtitle property
                        subtitle: null,

                        // 2. Put all widgets inside the title property, wrapped in a Wrap
                        title: Wrap(
                          spacing: 8.w,
                          // Horizontal space between items
                          runSpacing: 4.h,
                          // Vertical space if they wrap
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // Vertically align items
                          children: [
                            // Title Text
                            Text(
                              title,
                              style: textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),

                            // Status Chip
                            _buildStatusChip(context, status),

                            // Due Date Chip (if it exists)
                            if (dueDate != null)
                              _buildDueDateLabel(context, dueDate),
                          ],
                        ),
                        // ------------------------

                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: IColors.light.grayscale.g20,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: IColors.light.grayscale.g10,
                      // --- 2. FIX: Reduced indent to match padding ---
                      indent: 16.w,
                      endIndent: 16.w,
                    );
                  },
                  itemCount: _dummyData.length),
            )
          ],
        ),
      ),
    );
  }

  // --- 6. Added helper widget for the Status chip ---
  Widget _buildStatusChip(BuildContext context, String status) {
    final textTheme = Theme.of(context).textTheme;
    final bool isComplete = status == 'Complete';

    // Use success for 'Complete', warning for 'Incomplete'
    final color =
        isComplete ? IColors.light.success.main : IColors.light.warning.main;
    final bgColor = isComplete
        ? IColors.light.success.background
        : IColors.light.warning.background;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        status,
        style: textTheme.bodySmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // --- 7. Added helper widget for the Due Date chip ---
  Widget _buildDueDateLabel(BuildContext context, String date) {
    final textTheme = Theme.of(context).textTheme;
    final warningColor = IColors.light.warning.main;

    final baseStyle = textTheme.bodySmall?.copyWith(
      color: warningColor,
      fontWeight: FontWeight.w500,
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: IColors.light.warning.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: IColors.light.warning.hover,
            size: 14.sp,
          ),
          SizedBox(width: 4.w),
          Text.rich(
            TextSpan(
              style: baseStyle,
              children: [
                const TextSpan(text: 'Due Date '),
                TextSpan(
                  text: date,
                  style: baseStyle?.copyWith(
                    color: IColors.light.warning.hover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
