import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/month_selector.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';

class OvertimeLogTab extends ConsumerWidget {
  const OvertimeLogTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: const Color(0xFFF8F8F8),
          child: Column(
            children: [
              MonthSelector(
                onMonthChanged: (selectedDate) {
                  debugPrint("Selected month changed to: $selectedDate");
                },
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(child: _buildStatBox("20", "Days", "Late Clock In")),
                  Expanded(
                      child: _buildStatBox("2", "Days", "Early Clock Out")),
                  Expanded(child: _buildStatBox("62", "Hours", "Overtime")),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Overtime Request",
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
                Expanded(
                  child: ListView.separated(
                    itemCount: 2,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (context, index) =>
                        const OvertimeRequestCard(),
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

/// 🔹 Extracted Overtime Request Card Widget
class OvertimeRequestCard extends StatelessWidget {
  const OvertimeRequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: IColors.light.grayscale.g10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("Today, 28"),
                  IconButton(
                    onPressed: () {
                      context.pushNamed(RoutePaths.overtimeEdit);
                    },
                    icon: SvgPicture.asset(
                      IAssets.edit,
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              const StatusChip(
                status: 3,
                statusLabel: "Rejected",
                event: 'clock_in',
              ),
            ],
          ),

          // Date info
          Row(
            spacing: 2,
            children: [
              Text(
                "2",
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              Text(
                "Days",
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              Text(
                "ago",
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
            ],
          ),

          Divider(color: IColors.light.grayscale.g10),

          // Overtime Duration
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                "Overtime Duration",
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              const SizedBox(height: 4),
              Row(
                spacing: 8,
                children: [
                  Text(
                    "5h 0m",
                    style: textTheme.bodyMedium?.copyWith(
                      color: IColors.light.primary.main,
                    ),
                  ),
                  Text(
                    "(05:00 PM - 10:00 PM)",
                    style: textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF8E8E8E),
                    ),
                  ),
                ],
              )
            ],
          ),

          // Notes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                "Notes",
                style: textTheme.bodySmall
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
              const SizedBox(height: 4),
              Text(
                "Machine Troubleshooting",
                style: textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// 🔹 Helper Widgets
Widget _buildStatBox(String value, String unit, String label) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(fontSize: 10, color: Color(0xFF8E8E8E))),
      ],
    ),
  );
}

Widget _buildArrowButton(IconData icon) {
  return ElevatedButton(
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
          color: IColors.light.primary.main,
          width: 1,
        ),
      ),
    ),
    child: Icon(icon),
  );
}
