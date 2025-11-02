import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/widgets/file_picker.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/overtime_request/presentation/providers/overtime_provider.dart';

class LeaveRequestFormScreen extends ConsumerStatefulWidget {
  const LeaveRequestFormScreen({
    super.key,
  });

  @override
  ConsumerState<LeaveRequestFormScreen> createState() =>
      _LeaveRequestFormScreenState();
}

class _LeaveRequestFormScreenState
    extends ConsumerState<LeaveRequestFormScreen> {
  // --- Controllers ---
  final _leaveTypeController = TextEditingController();
  final _notesController = TextEditingController();
  final _clockInController = TextEditingController();
  final _clockOutController = TextEditingController();

  // --- State for selected values ---
  String? _selectedLeaveType;
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;
  PlatformFile? _attachment;

  @override
  void dispose() {
    _leaveTypeController.dispose();
    _notesController.dispose();
    _clockInController.dispose();
    _clockOutController.dispose();
    super.dispose();
  }

  // --- Submission Logic ---
  Future<void> _submitOvertime() async {}

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final List<String> leaveTypeOptions = [
      'Annual Leave',
      'Sick Leave',
      'Maternity Leave',
      'Menstrual Leave',
      'Marriage Leave',
      'Paternity Leave',
      'Unpaid Leave',
    ];

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

    final error = overtimeState.error;
    Map<String, String> validationErrors = {};
    if (error is ValidationException) {
      validationErrors =
          error.errors.map((key, value) => MapEntry(key, value.first));
      ;
    }

    return Scaffold(
      appBar: IAppBar(title: "New Leave Request"),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              // Added for better small-screen support
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ITextFieldDropdownBottomSheet(
                    label: "Leave Type",
                    controller: _leaveTypeController,
                    options: leaveTypeOptions,
                    isRequired: true,
                    errorText: validationErrors['leave_type'],
                    // Match your API error key
                    onOptionSelected: (selectedOption) {
                      setState(() {
                        _selectedLeaveType = selectedOption;
                      });
                    },
                  ),
                  SizedBox(width: 10.h),
                  ITextFieldDatePicker(
                    label: "Start Date",
                    isRequired: true,
                    controller: _clockInController,
                    errorText: validationErrors['start_time'],
                    onDateChanged: (newDate) {
                      setState(() {
                        _selectedStartDate = newDate;
                      });
                    },
                  ),
                  SizedBox(width: 10.h),
                  ITextFieldDatePicker(
                    label: "End Date",
                    isRequired: true,
                    controller: _clockOutController,
                    errorText: validationErrors['end_time'],
                    onDateChanged: (newDate) {
                      setState(() {
                        _selectedEndDate = newDate;
                      });
                    },
                  ),
                  SizedBox(height: 10.h),
                  ITextFieldTextArea(
                    label: "Reason",
                    controller: _notesController, // Connect the controller
                    errorText: validationErrors['reason'],
                  ),
                  SizedBox(height: 10.h),
                  IFilePicker(
                    title: "Attachment",
                    onFileSelected: (file) {
                      setState(() {
                        _attachment = file;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          IFooterButton(
            onPressed: _submitOvertime,
            text: "Send Request",
          ),
        ],
      ),
    );
  }
}
