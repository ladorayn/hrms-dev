import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/util/general_utils.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_time_picker.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/providers/overtime_provider.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/widgets/warning_empty_attendance.dart';

import '../widgets/attendance_card.dart';

class OvertimeRequestScreen extends ConsumerStatefulWidget {
  const OvertimeRequestScreen({
    super.key,
  });

  @override
  ConsumerState<OvertimeRequestScreen> createState() =>
      _OvertimeRequestScreenState();
}

class _OvertimeRequestScreenState extends ConsumerState<OvertimeRequestScreen> {
  final _attendanceDateController = TextEditingController();
  final _notesController = TextEditingController();
  final _clockInController = TextEditingController();
  final _clockOutController = TextEditingController();

  DateTime? _selectedDate;
  TimeOfDay? _selectedClockIn;
  TimeOfDay? _selectedClockOut;

  @override
  void dispose() {
    _attendanceDateController.dispose();
    _notesController.dispose();
    _clockInController.dispose();
    _clockOutController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _selectedDate = DateTime.now();
    super.initState();
  }

  Future<void> _submitOvertime() async {
    final request = OvertimeRequest(
      overtimeDate: formatDateForAPI(_selectedDate),
      startTime: formatTimeForAPI(_selectedClockIn) ?? '',
      endTime: formatTimeForAPI(_selectedClockOut) ?? '',
      notes: _notesController.text,
    );

    final success = await ref
        .read(overtimeRequestNotifierProvider.notifier)
        .submitRequest(request);

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Overtime request submitted successfully!')),
      );
      ref.invalidate(recentActivityProvider(limit: 10));
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final overtimeState = ref.watch(overtimeRequestNotifierProvider);
    ref.listen(overtimeRequestNotifierProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        final error = state.error;
        if (error is! ValidationException) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString())),
          );
        }
      }
    });

    final historyState = ref.watch(
      paginatedAttendanceHistoryProvider(
        date: formatDateForAPI(_selectedDate),
      ),
    );

    final error = overtimeState.error;
    Map<String, String> validationErrors = {};
    if (error is ValidationException) {
      validationErrors =
          error.errors.map((key, value) => MapEntry(key, value.first));
      ;
    }

    final String durationText = calculateDuration(
      formatTimeForAPI(_selectedClockIn),
      formatTimeForAPI(_selectedClockOut),
    );

    return Scaffold(
      appBar: IAppBar(title: "Overtime Request"),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ITextFieldDatePicker(
                    label: "Request Date",
                    controller: _attendanceDateController,
                    isRequired: true,
                    errorText: validationErrors['overtime_date'],
                    onDateChanged: (newDate) {
                      setState(() {
                        _selectedDate = newDate;
                      });
                    },
                  ),
                  SizedBox(height: 10.h),
                  historyState.when(
                    loading: () => const CircularProgressIndicator(),
                    error: (err, stack) => Text('Error: $err'),
                    data: (historyList) {
                      final attendanceLog =
                          historyList.isNotEmpty ? historyList.first : null;
                      return attendanceLog != null
                          ? AttendanceCard(
                              item: attendanceLog,
                            )
                          : WarningEmptyAttendance();
                    },
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ITextFieldTimePicker(
                          label: "Start Time",
                          isRequired: true,
                          controller: _clockInController,
                          errorText: validationErrors['start_time'],
                          onTimeChanged: (newTime) {
                            setState(() {
                              _selectedClockIn = newTime;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: ITextFieldTimePicker(
                          label: "End Time",
                          isRequired: true,
                          controller: _clockOutController,
                          errorText: validationErrors['end_time'],
                          onTimeChanged: (newTime) {
                            setState(() {
                              _selectedClockOut = newTime;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Duration",
                            style: textTheme.labelMedium,
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            durationText,
                            style: textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  ITextFieldTextArea(
                    label: "Overtime Notes",
                    controller: _notesController,
                    isRequired: true,
                    errorText: validationErrors['notes'],
                  ),
                ],
              ),
            ),
          ),
          IFooterButton(
            onPressed: _submitOvertime,
            text: "Request Overtime",
          ),
        ],
      ),
    );
  }
}
