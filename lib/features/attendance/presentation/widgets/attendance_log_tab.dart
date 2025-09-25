import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/month_selector.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';

class AttendanceLogTab extends ConsumerWidget {
  const AttendanceLogTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        // ===== HEADER (Month + Stats) =====
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: const Color(0xFFF8F8F8),
          child: Column(
            children: [
              // Month Selector
              MonthSelector(
                onMonthChanged: (selectedDate) {
                  debugPrint("Selected month changed to: $selectedDate");
                },
              ),
              const SizedBox(height: 12),

              // Stats Row
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: _buildStatBox("20", "Days", "Late Clock In")),
                      Expanded(
                          child: _buildStatBox("2", "Days", "Early Clock Out")),
                      Expanded(child: _buildStatBox("62", "Hours", "Overtime")),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: _buildStatBox("1", "Days", "Absent")),
                      Expanded(child: _buildStatBox("2", "Days", "Day Off")),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // ===== ATTENDANCE LIST =====
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 10,
              children: [
                // Title + Filter
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Attendance",
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.all(6),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: IColors.light.grayscale.g30,
                            width: 1,
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(
                        IAssets.filter,
                        width: 14,
                        height: 14,
                      ),
                    )
                  ],
                ),

                // Scrollable List
                Expanded(
                  child: ListView.separated(
                    itemCount: 2,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return AttendanceCard(
                        date: "Today, 28",
                        clockIn: "08:00 AM",
                        clockOut: "07:00 PM",
                        overtime: "2h 0m",
                        status: AttendanceStatus.rejected,
                        location:
                            '51° 30\' 13.608"W 0° 11\' 21.408", Km 5, Jl. Kaliurang Jl. Srinidit',
                        notes: "-",
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
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
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: IColors.light.grayscale.g10),
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
                      context.pushNamed(RoutePaths.attendanceEdit);
                    },
                    icon: SvgPicture.asset(
                      IAssets.edit,
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              StatusChip(status: status),
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
                  Text("Clock-In",
                      style: Theme.of(context).textTheme.bodySmall),
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
              Column(
                children: [
                  Text("Clock-Out",
                      style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: 4),
                  Text(clockOut,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.orange, fontWeight: FontWeight.bold)),
                ],
              ),

              // Overtime
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Overtime",
                      style: Theme.of(context).textTheme.bodySmall),
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

          const SizedBox(height: 16),
          Divider(color: IColors.light.grayscale.g10),

          // ===== Location =====
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Location", style: Theme.of(context).textTheme.bodySmall),
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
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
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
              Text("Notes", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 4),
              Text(
                notes,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// ===== Helper for Month Buttons =====
Widget _monthArrowButton(IconData icon, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      minimumSize: Size.zero,
      padding: const EdgeInsets.all(6),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(
          color: IColors.light.primary.main,
          width: 1,
        ),
      ),
    ),
    child: Icon(icon, size: 16, color: IColors.light.primary.main),
  );
}

Widget _buildStatBox(String value, String unit, String label) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(value,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(width: 4),
            Text(
              unit,
              style: const TextStyle(
                fontSize: 8,
                color: Color(0xFF8E8E8E),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(fontSize: 10, color: Color(0xFF8E8E8E))),
      ],
    ),
  );
}
