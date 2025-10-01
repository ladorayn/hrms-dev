import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_time_picker.dart';

class AttendanceHistoryEditScreen extends ConsumerWidget {
  const AttendanceHistoryEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        surfaceTintColor: Colors.white,
        scrolledUnderElevation: 0.0,
        title: Text(
          'Edit Attendance Request',
          style: textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: IColors.light.primary.hover,
          onPressed: () => context.pop(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Container(
            height: 1,
            color: Colors.grey.shade300, // divider under tab
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Submitted Record",
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AttendanceCard(
                      date: "Tuesday",
                      clockIn: "08.00",
                      clockOut: "17.00",
                      overtime: "8h",
                      status: AttendanceStatus.absent,
                      location: "TEST LOCATION",
                      notes: "TEST NOTES",
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attendance Adjustment",
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ITextFieldTimePicker(
                      label: "Clock In",
                    ),
                    ITextFieldTimePicker(
                      label: "Clock Out",
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Duration"),
                              Text("0h 0m"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Duration"),
                              Text("0h 0m"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ITextFieldTextArea(
                      label: "Adjustment Notes",
                      onChanged: (val) {},
                    ),
                  ],
                )
              ],
            ),
          ),
          IFooterButton(
            text: "Send Adjustment Request",
            onPressed: () {},
          )
          // SafeArea(
          //   child: Container(
          //     color: Colors.white,
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Divider(
          //           color: Colors.grey.shade300,
          //           height: 1,
          //           thickness: 1,
          //         ),
          //         const SizedBox(
          //           height: 8,
          //         ),
          //         Padding(
          //           padding: EdgeInsets.only(left: 16, right: 16, top: 10),
          //           child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //               backgroundColor: IColors.light.primary.main,
          //               foregroundColor: Colors.white,
          //               minimumSize: const Size.fromHeight(50),
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(8),
          //               ),
          //             ),
          //             onPressed: () {},
          //             child: const Text("Send Adjustment Request"),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

/// ===== Attendance Card Widget =====
class AttendanceCard extends StatelessWidget {
  final String date;
  final String clockIn;
  final String clockOut;
  final String overtime;
  final AttendanceStatus status;
  final String location;
  final String notes;

  const AttendanceCard({
    super.key,
    required this.date,
    required this.clockIn,
    required this.clockOut,
    required this.overtime,
    required this.status,
    required this.location,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.focused,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
        decoration: BoxDecoration(
          color: IColors.light.primary.foreground,
          border: Border.all(
            color: IColors.light.primary.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Title Row =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(date),
                    IconButton(
                      onPressed: () {
                        context.goNamed(RoutePaths.attendanceEdit);
                      },
                      icon: SvgPicture.asset(
                        IAssets.edit,
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
                StatusChip(
                  status: 3,
                  statusLabel: "Rejected",
                  event: 'clock_in',
                ),
              ],
            ),
            const SizedBox(height: 32),

            // ===== Time Row =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Clock-In
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Clock-In",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xFF8E8E8E),
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(clockIn,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),

                // Duration in middle
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 1,
                          width: 40,
                          color: IColors.light.grayscale.g20,
                        ),
                        const SizedBox(width: 4),
                        Text("8h0m",
                            style: Theme.of(context).textTheme.bodySmall),
                        const SizedBox(width: 4),
                        Container(
                          height: 1,
                          width: 40,
                          color: IColors.light.grayscale.g20,
                        ),
                      ],
                    ),
                  ],
                ),

                // Clock-Out
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Clock-Out",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Color(0xFF8E8E8E),
                                    ),
                          ),
                          const SizedBox(height: 4),
                          Text(clockOut,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold)),
                        ],
                      ),
                      VerticalDivider(
                        width: 20,
                        thickness: 2,
                        color: IColors.light.grayscale.g20,
                      ),
                      // Overtime
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Overtime",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Color(0xFF8E8E8E),
                                    ),
                          ),
                          const SizedBox(height: 4),
                          Text(overtime,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(color: IColors.light.grayscale.g10),
            // ===== Location =====
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Location",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xFF8E8E8E),
                        )),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: IColors.light.primary.border,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: IColors.light.primary.background,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset(
                            IAssets.pinLocation,
                            width: 10,
                            height: 18,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            location,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: IColors.light.primary.main,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ===== Notes =====
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notes",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Color(0xFF8E8E8E),
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  notes,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
