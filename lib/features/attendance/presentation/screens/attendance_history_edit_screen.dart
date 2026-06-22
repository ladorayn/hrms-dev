import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/util/geocoding_geolocation_mapper.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/status_chip.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_time_picker.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/update_attendance/update_attendance_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:intl/intl.dart';

import '../providers/attendance_provider.dart';

class AttendanceHistoryEditScreen extends ConsumerStatefulWidget {
  final AttendanceDetail attendance;

  const AttendanceHistoryEditScreen({super.key, required this.attendance});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AttendanceEditFormScreenState();
}

class _AttendanceEditFormScreenState
    extends ConsumerState<AttendanceHistoryEditScreen> {
  late final TextEditingController _clockInController;
  late final TextEditingController _clockOutController;

  late final TextEditingController _shiftController;
  late final TextEditingController _notesController;

  TimeOfDay? _selectedClockIn;
  TimeOfDay? _selectedClockOut;
  int? _selectedShiftId;
  bool? shiftEnabled;

  int _timeOfDayToMinutes(TimeOfDay time) {
    return time.hour * 60 + time.minute;
  }

  @override
  void initState() {
    super.initState();
    _selectedClockIn =
        DateTimeHelper.parseTimeOfDay(widget.attendance.clock.inAt);
    _selectedClockOut =
        DateTimeHelper.parseTimeOfDay(widget.attendance.clock.outAt);

    _clockInController =
        TextEditingController(text: widget.attendance.clock.inAt ?? '');
    _clockOutController =
        TextEditingController(text: widget.attendance.clock.outAt ?? '');
    _shiftController =
        TextEditingController(text: widget.attendance.metadata.shiftName ?? '');
    _notesController =
        TextEditingController(text: widget.attendance.notes ?? '');
    _selectedShiftId = widget.attendance.metadata.shiftId;
  }

  @override
  void dispose() {
    _clockInController.dispose();
    _clockOutController.dispose();
    _shiftController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  String _formatMinutesToDuration(int totalMinutes) {
    if (totalMinutes <= 0) {
      return "0h 0m";
    }
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    return "${hours}h ${minutes}m";
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final authP = ref.watch(authProvider);

    final shiftListState = ref.watch(workingShiftListProvider(
        "${authP.value?.id}", widget.attendance.attendanceDate));

    final updateState = ref.watch(updateAttendanceProvider);
    final isLoading = updateState.isLoading;
    final validationErrors = updateState.errors;

    // Calculate the duration on every build
    final String? clockInStr = formatTimeForAPI(_selectedClockIn);
    final String? clockOutStr = formatTimeForAPI(_selectedClockOut);
    final String durationText = calculateDuration(clockInStr, clockOutStr);

    String overtimeText = "0h 0m";

    shiftListState.whenData((shifts) {
      if (_selectedShiftId != null) {
        try {
          final selectedShift = shifts.shifts
              .firstWhere((shift) => shift.shift.id == _selectedShiftId);
          setState(() {
            _shiftController.text = selectedShift.shift.name;
          });
          if (_selectedClockOut != null) {
            final shiftEndTime =
                DateTimeHelper.parseTimeOfDay(selectedShift.endTime);

            if (shiftEndTime != null) {
              final clockOutMinutes = _timeOfDayToMinutes(_selectedClockOut!);
              final shiftEndMinutes = _timeOfDayToMinutes(shiftEndTime);

              if (clockOutMinutes > shiftEndMinutes) {
                final overtimeMinutes = clockOutMinutes - shiftEndMinutes;
                overtimeText = _formatMinutesToDuration(overtimeMinutes);
              }
            }
          }
        } catch (e) {
          debugPrint(
              "Shift with ID '$_selectedShiftId' not found in the list.");
        }
      }
    });

    Future<void> onUpdatePressed() async {
      try {
        final request = UpdateAttendanceRequestModel(
          clockInAt: formatTimeForAPI(_selectedClockIn),
          clockOutAt: formatTimeForAPI(_selectedClockOut),
          shiftId: _selectedShiftId,
          notes: _notesController.text,
        );

        final String attendancePeriod = DateFormat('yyyy-MM')
            .format(DateTime.parse(widget.attendance.attendanceDate));

        final success = await ref
            .read(updateAttendanceProvider.notifier)
            .updateAttendance(
                attendanceId: widget.attendance.id.toString(),
                request: request,
                periodToInvalidate: attendancePeriod);

        if (success) {
          showCustomToast(context, l10n.attendanceUpdateSuccess, ToastType.success);
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('Update Success!')),
          // );
        } else {
          showCustomToast(context, l10n.attendanceUpdateFailed, ToastType.error);
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('Update Failed!')),
          // );
        }
      } catch (e) {
        showCustomToast(
            context, l10n.attendanceUpdateFailedWithError(e.toString()), ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text('Update Failed: ${e.toString()}')),
        // );
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        surfaceTintColor: Colors.white,
        scrolledUnderElevation: 0.0,
        title: Text(
          l10n.attendanceEditRequest,
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
                      l10n.attendanceSubmittedRecord,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AttendanceCard(
                      item: widget.attendance,
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
                      l10n.attendanceAdjustment,
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ITextFieldTimePicker(
                      controller: _clockInController,
                      initialTime: DateTimeHelper.parseTimeOfDay(
                          widget.attendance.clock.inAt),
                      label: l10n.attendanceClockInField,
                      errorText: validationErrors['clock_in_at'],
                      onTimeChanged: (newTime) {
                        setState(() {
                          if (_selectedClockOut != null &&
                              _timeOfDayToMinutes(newTime) >
                                  _timeOfDayToMinutes(_selectedClockOut!)) {
                            _selectedClockOut = null;
                            _clockOutController.clear();
                          }
                          _selectedClockIn = newTime;
                        });
                      },
                    ),
                    ITextFieldTimePicker(
                      controller: _clockOutController,
                      initialTime: DateTimeHelper.parseTimeOfDay(
                          widget.attendance.clock.outAt),
                      label: l10n.attendanceClockOutField,
                      errorText: validationErrors['clock_out_at'],
                      onTimeChanged: (newTime) {
                        setState(() {
                          // If new Clock Out is before Clock In, clear Clock In.
                          if (_selectedClockIn != null &&
                              _timeOfDayToMinutes(newTime) <
                                  _timeOfDayToMinutes(_selectedClockIn!)) {
                            _selectedClockIn = null;
                            _clockInController.clear();
                          }
                          _selectedClockOut = newTime;
                        });
                      },
                    ),
                    shiftListState.when(
                      loading: () {
                        return ITextFieldDropdownBottomSheet(
                          enabled: false,
                          label: l10n.attendanceShift,
                          controller: _shiftController,
                          options: [],
                          onOptionSelected: (selectedOption) {},
                        );
                      },
                      error: (err, stack) {
                        return ITextFieldDropdownBottomSheet(
                          enabled: false,
                          label: l10n.attendanceShift,
                          controller: _shiftController,
                          options: [],
                          onOptionSelected: (selectedOption) {},
                        );
                      },
                      data: (shifts) {
                        final shiftOptions = shifts.shifts
                            .map((shift) => shift.shift.name)
                            .toList();

                        return ITextFieldDropdownBottomSheet(
                          label: l10n.attendanceShift,
                          controller: _shiftController,
                          options: shiftOptions,
                          errorText: validationErrors['shift_id'],
                          onOptionSelected: (selectedOption) {
                            final selectedShift = shifts.shifts.firstWhere(
                              (shift) => shift.shift.name == selectedOption,
                            );
                            setState(() {
                              _selectedShiftId = selectedShift.shift.id;
                            });
                          },
                          isRequired: true,
                        );
                      },
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
                              Text(l10n.attendanceDuration),
                              Text(durationText),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l10n.attendanceOvertime),
                              Text(overtimeText),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ITextFieldTextArea(
                      label: l10n.attendanceAdjustmentNotes,
                      controller: _notesController,
                      onChanged: (val) {},
                    ),
                  ],
                )
              ],
            ),
          ),
          IFooterButton(
            text: l10n.attendanceSendAdjustmentRequest,
            onPressed: () {
              if (!isLoading) {
                onUpdatePressed();
              }
            },
          )
        ],
      ),
    );
  }
}

class AttendanceCard extends StatelessWidget {
  final AttendanceDetail item;

  const AttendanceCard({super.key, required this.item});

  String _formatDate(String dateStr, String locale) {
    final date = DateTime.parse(dateStr);
    return DateFormat('E, d', locale).format(date);
  }

  String _formatTime(String? timeStr, String locale) {
    if (timeStr == null) return "-";
    try {
      final time = DateFormat('HH:mm').parse(timeStr);
      return DateFormat('hh:mm a', locale).format(time);
    } catch (e) {
      return timeStr;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).toString();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: IColors.light.primary.focused,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(4.w),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: IColors.light.primary.foreground,
          border: Border.all(
            color: IColors.light.primary.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDate(item.attendanceDate, locale),
                  style: textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                StatusChip(
                  status: item.status,
                  statusLabel: item.statusLabel,
                  event: 'attendance',
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeColumn(
                    context, l10n.attendanceClockInLabel, _formatTime(item.clock.inAt, locale)),
                Expanded(
                  child: _buildDurationDisplay(
                      context,
                      item.clock.duration != null
                          ? item.clock.duration.toString()
                          : '0h 0m'),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _buildTimeColumn(
                          context, l10n.attendanceClockOutLabel, _formatTime(item.clock.outAt, locale),
                          color: Colors.orange),
                      VerticalDivider(
                        width: 20.w,
                        thickness: 2,
                        color: IColors.light.grayscale.g20,
                      ),
                      _buildTimeColumn(context, l10n.attendanceOvertime,
                          item.clock.overtimeDurationFormatted ?? "0h 0m",
                          isEnd: true),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Divider(color: IColors.light.grayscale.g10),
            _buildLocation(context),
            SizedBox(height: 16.h),
            _buildNotes(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeColumn(BuildContext context, String label, String value,
      {Color? color, bool isEnd = false}) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 4.h),
        Text(value,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  Widget _buildDurationDisplay(BuildContext context, String duration) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: IColors.light.grayscale.g20,
                margin: EdgeInsets.only(left: 2.w, right: 4.w),
              ),
            ),
            Text(duration, style: Theme.of(context).textTheme.bodySmall),
            Expanded(
              child: Container(
                height: 1,
                color: IColors.light.grayscale.g20,
                margin: EdgeInsets.only(left: 4.w, right: 2.w),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLocation(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final lat = double.tryParse(item.location.latitude ?? '') ?? 0.0;
    final lng = double.tryParse(item.location.longitude ?? '') ?? 0.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceLocation, style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 8.h),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: IColors.light.primary.border,
          ),
          child: Container(
            margin: EdgeInsets.all(2.w),
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: IColors.light.primary.background,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: SvgPicture.asset(
                    IAssets.pinLocation,
                    width: 10.w,
                    height: 18.h,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: FutureBuilder<String>(
                    future: getAddressFromLatLng(lat, lng),
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data ?? item.metadata.locationName ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: IColors.light.primary.main,
                            ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNotes(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.attendanceNotes, style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 4.h),
        Text(
          item.notes ?? "-",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
