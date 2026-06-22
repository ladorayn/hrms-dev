import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';

class AttendanceCardForm extends StatelessWidget {
  final String activity;
  final String date;
  final String clockIn;
  final String clockOut;
  final String overtime;
  final String location;
  final String duration;

  const AttendanceCardForm({
    super.key,
    required this.activity,
    required this.date,
    required this.clockIn,
    required this.clockOut,
    required this.overtime,
    required this.location,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: IColors.light.grayscale.g10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(date,
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: IColors.light.grayscale.g20,
                    ),
                    Text(
                        activity == AttendanceEnum.clockIn.label
                            ? clockIn
                            : clockOut,
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
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
                      Text(l10n.attendanceClockInLabel,
                          style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: 4),
                      Text(clockIn,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
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
                          Text(duration,
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

                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(l10n.attendanceClockOutLabel,
                                style: Theme.of(context).textTheme.bodySmall),
                            const SizedBox(height: 4),
                            Text(clockOut,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: IColors.light.grayscale.g20,
                        ),
                        // Overtime
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(l10n.attendanceOvertime,
                                style: Theme.of(context).textTheme.bodySmall),
                            const SizedBox(height: 4),
                            Text(overtime,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 16),
              Divider(color: IColors.light.grayscale.g10),

              // ===== Location =====
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.attendanceLocation, style: textTheme.bodySmall),
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
            ],
          ),
        ],
      ),
    );
  }
}
