import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/attendance_form.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:intl/intl.dart';

import '../providers/attendance_provider.dart';

class AttendanceFormScreen extends ConsumerStatefulWidget {
  final AttendanceEnum activity;

  const AttendanceFormScreen({
    super.key,
    required this.activity,
  });

  @override
  ConsumerState<AttendanceFormScreen> createState() =>
      _AttendanceFormScreenState();
}

class _AttendanceFormScreenState extends ConsumerState<AttendanceFormScreen> {
  // Controllers to manage the state of the form fields
  late final TextEditingController _shiftController;
  late final TextEditingController _notesController;

  int? _selectedShiftId;

  @override
  void initState() {
    super.initState();
    _shiftController = TextEditingController();
    _notesController = TextEditingController();
  }

  @override
  void dispose() {
    _shiftController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final authP = ref.watch(authProvider);

    ref.listen<AsyncValue<AttendanceData?>>(todayAttendanceProvider,
        (_, state) {
      state.when(
        error: (err, stack) {
          showCustomToast(context, 'Error: $err', ToastType.error);
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text('Error: $err')));
        },
        data: (attendanceData) {
          if (attendanceData != null) {
            ref.invalidate(recentActivityProvider);
            context.go(RoutePaths.dashboard);
          }
        },
        loading: () {},
      );
    });

    final attendanceState = ref.watch(attendanceProvider);

    final todayAttendance = ref.watch(todayAttendanceProvider);

    final DateTime? clockInTime = attendanceState.clockInTime;
    final DateTime? clockOutTime = attendanceState.clockOutTime;

    // Fallback from persisted data
    final String? persistedClockIn = todayAttendance.value?.clock?.inAt;

    // Parse persistedClockIn into DateTime if needed
    DateTime? parsedPersistedClockIn;
    if (persistedClockIn != null) {
      parsedPersistedClockIn = DateFormat('HH:mm').parse(persistedClockIn);
    }

    DateTime? effectiveClockInTime = clockInTime ?? parsedPersistedClockIn;
    DateTime? effectiveClockOutTime = clockOutTime;

    // Format for UI
    String? clockInFormattedDate;
    String? clockInFormattedDateParam;
    String? clockInFormattedTime;

    String? clockOutFormattedDate;
    String? clockOutFormattedParam;
    String? clockOutFormattedTime;

    if (effectiveClockInTime != null) {
      clockInFormattedDate =
          DateFormat('d MMMM, y').format(effectiveClockInTime);
      clockInFormattedTime = DateFormat('hh:mm a').format(effectiveClockInTime);
      clockInFormattedDateParam =
          DateFormat('yyyy-MM-dd').format(effectiveClockInTime);
    }

    if (effectiveClockOutTime != null) {
      clockOutFormattedDate =
          DateFormat('d MMMM, y').format(effectiveClockOutTime);
      clockOutFormattedTime =
          DateFormat('hh:mm a').format(effectiveClockOutTime);
      clockOutFormattedParam =
          DateFormat('yyyy-MM-dd').format(effectiveClockOutTime);
    }

    final date = (widget.activity == AttendanceEnum.clockIn)
        ? clockInFormattedDateParam ?? ''
        : clockOutFormattedParam ?? '';

    final shiftListState = ref.watch(workingShiftListProvider(
      "${authP.value?.id}",
      date,
    ));

    return Scaffold(
      appBar: IAppBar(
        title: widget.activity.title,
        onBack: () =>
            globalNavigatorKey.currentContext?.go(RoutePaths.dashboard),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AttendanceCardForm(
                      activity: widget.activity.label,
                      clockIn: clockInFormattedTime ?? '-',
                      clockOut: clockOutFormattedTime ?? '-',
                      date: (widget.activity == AttendanceEnum.clockIn)
                          ? clockInFormattedDate ?? ''
                          : clockOutFormattedDate ?? '',
                      location: attendanceState.address ?? '-',
                      duration: todayAttendance.value?.clock?.duration ??
                          calculateDuration(
                              clockInFormattedTime, clockOutFormattedTime),
                      overtime: "0h 0m",
                    ),
                    shiftListState.when(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (err, stack) {
                        return Text('Error: ${err}');
                      },
                      data: (shifts) {
                        // We have the data, now build the dropdown
                        final shiftOptions = shifts.shifts
                            .map((shift) => shift.shift.name)
                            .toList();

                        return ITextFieldDropdownBottomSheet(
                          enabled: (widget.activity == AttendanceEnum.clockIn)
                              ? true
                              : false,
                          label: "Shift",
                          controller: _shiftController,
                          options: shiftOptions,
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
                    ITextFieldTextArea(
                      label: "Notes",
                      controller: _notesController,
                      labelStyle: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          IFooterButton(
            onPressed: todayAttendance.isLoading 
              ? null
              : () {
                  if (widget.activity == AttendanceEnum.clockIn) {
                    _handleClockIn();
                  } else {
                    _handleClockOut();
                  }
                },
            text: "Save ${widget.activity.capitalizeSentence}",
          ),
        ],
      ),
    );
  }

  Future<void> _handleClockIn() async {
    final attendanceState = ref.read(attendanceProvider);
    final position = attendanceState.position;

    final authP = ref.read(authProvider);

    if (position == null || _selectedShiftId == null) {
      showCustomToast(
          context, 'Please fill all required fields.', ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Please fill all required fields.')),
      // );
      return;
    }

    // Build request
    final request = ClockInRequestModel(
      shiftId: _selectedShiftId!,
      clockInAt: DateFormat('HH:mm').format(DateTime.now()),
      latitude: position.latitude,
      longitude: position.longitude,
      notes: _notesController.text,
      branchId: attendanceState.selectedBranchId ?? authP.value?.branch?.id,
    );

    await ref.read(todayAttendanceProvider.notifier).clockIn(request);
  }

  Future<void> _handleClockOut() async {
    final attendanceState = ref.read(attendanceProvider);
    final todayAttendance = ref.read(todayAttendanceProvider).value;
    final position = attendanceState.position;
    final authP = ref.read(authProvider);

    if (todayAttendance == null) {
      showCustomToast(context, 'No active attendance found.', ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('No active attendance found.')),
      // );
      return;
    }

    if (position == null) {
      showCustomToast(
          context, 'Please fill all required fields.', ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Please fill all required fields.')),
      // );
      return;
    }

    final effectiveOutTime = attendanceState.clockOutTime ?? DateTime.now();

    final request = ClockOutRequestModel(
      clockOutAt: DateFormat('HH:mm').format(effectiveOutTime),
      notes: _notesController.text,
      branchId: attendanceState.selectedBranchId ?? authP.value?.branch?.id,
    );

    await ref.read(todayAttendanceProvider.notifier).clockOut(request);
  }
}
