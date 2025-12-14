import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/util/general_utils.dart'; // Import for your utility functions
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_time_picker.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/overtime/overtime_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/overtime_request/data/models/request/overtime_request_model.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/providers/overtime_provider.dart';
import 'package:intl/intl.dart';

class OvertimeHistoryEditScreen extends ConsumerStatefulWidget {
  final OvertimeDetail overtime;

  const OvertimeHistoryEditScreen({super.key, required this.overtime});

  @override
  ConsumerState<OvertimeHistoryEditScreen> createState() =>
      _OvertimeHistoryEditScreenState();
}

class _OvertimeHistoryEditScreenState
    extends ConsumerState<OvertimeHistoryEditScreen> {
  late final TextEditingController _clockInController;
  late final TextEditingController _clockOutController;
  late final TextEditingController _notesController;

  TimeOfDay? _selectedClockIn;
  TimeOfDay? _selectedClockOut;
  String _durationText = "0h 0m";

  @override
  void initState() {
    super.initState();
    _selectedClockIn = DateTimeHelper.parseTimeOfDay(widget.overtime.startTime);
    _selectedClockOut = DateTimeHelper.parseTimeOfDay(widget.overtime.endTime);
    _clockInController =
        TextEditingController(text: widget.overtime.startTime ?? '');
    _clockOutController =
        TextEditingController(text: widget.overtime.endTime ?? '');
    _notesController = TextEditingController(text: widget.overtime.notes ?? '');

    _updateDuration();
  }

  @override
  void dispose() {
    _clockInController.dispose();
    _clockOutController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _updateDuration() {
    setState(() {
      _durationText = calculateDuration(
        formatTimeForAPI(_selectedClockIn),
        formatTimeForAPI(_selectedClockOut),
      );
    });
  }

  Future<void> _submitAdjustment() async {
    final request = OvertimeRequest(
      overtimeDate: widget.overtime.overtimeDate ?? '',
      startTime: formatTimeForAPI(_selectedClockIn) ?? '',
      endTime: formatTimeForAPI(_selectedClockOut) ?? '',
      notes: _notesController.text,
    );

    final success = await ref
        .read(overtimeRequestNotifierProvider.notifier)
        .updateRequest(
            overtimeId: widget.overtime.id.toString(), request: request);

    if (success && mounted) {
      showCustomToast(
          context, 'Adjustment request sent successfully!', ToastType.success);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Adjustment request sent successfully!')),
      // );

      final String period = DateFormat('yyyy-MM')
          .format(DateTime.parse(widget.overtime.overtimeDate ?? ''));

      ref.invalidate(
        paginatedOvertimeHistoryProvider(
          period: period,
          status: null,
        ),
      );
      ref.invalidate(
        overtimeStatsProvider(
          period: period,
        ),
      );
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
          showCustomToast(context, error.toString(), ToastType.error);
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text(error.toString())),
          // );
        }
      }
    });

    final error = overtimeState.error;
    Map<String, String> validationErrors = {};
    if (error is ValidationException) {
      validationErrors =
          error.errors.map((key, value) => MapEntry(key, value.first));
    }

    return Scaffold(
      appBar: IAppBar(title: "Edit Overtime Request"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Overtime Adjustment",
                      style: textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        color: IColors.light.primary.main,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ITextFieldTimePicker(
                      label: "Clock In",
                      initialTime: _selectedClockIn,
                      controller: _clockInController,
                      errorText: validationErrors['start_time'],
                      onTimeChanged: (newTime) {
                        _selectedClockIn = newTime;
                        _updateDuration();
                      },
                    ),
                    ITextFieldTimePicker(
                      label: "Clock Out",
                      initialTime: _selectedClockOut,
                      controller: _clockOutController,
                      errorText: validationErrors['end_time'],
                      onTimeChanged: (newTime) {
                        _selectedClockOut = newTime;
                        _updateDuration();
                      },
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Duration"),
                        Text(_durationText), // Use state variable
                      ],
                    ),
                    const SizedBox(height: 12),
                    ITextFieldTextArea(
                      label: "Adjustment Notes",
                      controller: _notesController,
                      errorText: validationErrors['notes'],
                    ),
                  ],
                )
              ],
            ),
          ),
          IFooterButton(
            text: "Send Adjustment Request",
            onPressed: _submitAdjustment, // Call the submission method
          )
        ],
      ),
    );
  }
}
