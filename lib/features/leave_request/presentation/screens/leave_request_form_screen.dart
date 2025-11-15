import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart'; // Import for context.pop()
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/widgets/file_picker.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/leave_request/presentation/providers/leave_provider.dart';
import 'package:intl/intl.dart'; // Import for date formatting

// Import your request model
import '../../data/models/request/leave_request.dart';
import '../../data/models/response/leave_type_response.dart';

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
  LeaveType? _selectedLeaveType;
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

  Future<void> _submitLeaveRequest() async {
    // 1. Basic Validation
    if (_selectedLeaveType == null ||
        _selectedStartDate == null ||
        _selectedEndDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields.')),
      );
      return;
    }

    String? attachmentPath;

    if (_attachment != null) {
      try {
        ref.read(leaveRequestSubmissionProvider.notifier).setLoading();

        final uploadResponse = await ref
            .read(fileUploadNotifierProvider.notifier)
            .uploadFile(_attachment!);

        attachmentPath = uploadResponse.path;
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Attachment upload failed: $e')),
          );
        }
        ref.read(leaveRequestSubmissionProvider.notifier).reset();
        return;
      }
    }

    // 2. Format Data
    final DateFormat formatter = DateFormat('y-MM-dd');
    final String startDate = formatter.format(_selectedStartDate!);
    final String endDate = formatter.format(_selectedEndDate!);
    final String reason = _notesController.text;

    final request = LeaveRequest(
      leaveTypeId: _selectedLeaveType!.id,
      startDate: startDate,
      endDate: endDate,
      reason: reason,
      attachment: attachmentPath,
    );

    try {
      await ref
          .read(leaveRequestSubmissionProvider.notifier)
          .submitForm(request: request);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Leave request submitted successfully!')),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Leave request submitted failed!')),
        );
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final leaveTypesAsync = ref.watch(leaveTypesProvider);

    // --- Watch the correct provider ---
    final leaveState = ref.watch(leaveRequestSubmissionProvider);
    final isSubmitting = leaveState.isLoading;

    ref.listen(leaveRequestSubmissionProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        final error = state.error;
        // Show a generic error snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Submission Failed: ${error.toString().split(':').last}')),
        );
      }
    });

    // --- Get validation errors from the correct provider state ---
    final error = leaveState.error;
    Map<String, String> validationErrors = {};
    if (error is ValidationException) {
      validationErrors =
          error.errors.map((key, value) => MapEntry(key, value.first));
    }

    return Scaffold(
      appBar: IAppBar(title: "New Leave Request"),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    leaveTypesAsync.when(
                      data: (leaveTypes) {
                        final leaveTypeNames =
                            leaveTypes.map((lt) => lt.name).toList();

                        return ITextFieldDropdownBottomSheet(
                          label: "Leave Type",
                          controller: _leaveTypeController,
                          options: leaveTypeNames,
                          isRequired: true,
                          // --- Use validation errors ---
                          errorText: validationErrors['leave_type_id'],
                          onOptionSelected: (selectedName) {
                            setState(() {
                              _selectedLeaveType = leaveTypes.firstWhere(
                                (lt) => lt.name == selectedName,
                              );
                            });
                          },
                        );
                      },
                      loading: () => const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      error: (e, s) => ITextFieldDropdownBottomSheet(
                        label: "Leave Type",
                        controller: _leaveTypeController,
                        options: const [],
                        errorText: "Failed to load leave types",
                        onOptionSelected: (selectedOption) {},
                      ),
                    ),
                    SizedBox(height: 10.h), // Use height for vertical spacing
                    ITextFieldDatePicker(
                      label: "Start Date",
                      isRequired: true,
                      controller: _clockInController,
                      // --- Use validation errors ---
                      errorText: validationErrors['start_date'],
                      onDateChanged: (newDate) {
                        setState(() {
                          _selectedStartDate = newDate;
                        });
                      },
                    ),
                    SizedBox(height: 10.h), // Use height for vertical spacing
                    ITextFieldDatePicker(
                      label: "End Date",
                      isRequired: true,
                      controller: _clockOutController,
                      // --- Use validation errors ---
                      errorText: validationErrors['end_date'],
                      onDateChanged: (newDate) {
                        setState(() {
                          _selectedEndDate = newDate;
                        });
                      },
                    ),
                    SizedBox(height: 10.h),
                    ITextFieldTextArea(
                      label: "Reason",
                      controller: _notesController,
                      // --- Use validation errors ---
                      errorText: validationErrors['reason'],
                    ),
                    SizedBox(height: 10.h),
                    IFilePicker(
                      title: "Attachment",
                      errorText: validationErrors['attachment'],
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
              // --- Call the correct submit function ---
              onPressed: isSubmitting ? null : _submitLeaveRequest,
              text: isSubmitting ? "Submitting..." : "Send Request",
            ),
          ],
        ),
      ),
    );
  }
}
