import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/widgets/file_picker.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/leave_request/data/models/request/leave_request.dart';
import 'package:hrms_mobile/features/leave_request/data/models/response/leave_type_response.dart';
import 'package:hrms_mobile/features/leave_request/presentation/providers/leave_provider.dart';
import 'package:intl/intl.dart';

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
    final l10n = AppLocalizations.of(context)!;
    if (_selectedLeaveType == null ||
        _selectedStartDate == null ||
        _selectedEndDate == null) {
      showCustomToast(
          context, l10n.attendancePleaseFillRequiredFields, ToastType.info);
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     backgroundColor: Colors.red[600],
      //     content: const Row(
      //       children: [
      //         Icon(Icons.error_outline, color: Colors.white),
      //         SizedBox(width: 8),
      //         Text(
      //           '',
      //           style:
      //               TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      //         ),
      //       ],
      //     ),
      //     duration: const Duration(seconds: 4),
      //     behavior: SnackBarBehavior.floating,
      //     margin: const EdgeInsets.all(12),
      //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // );
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
          showCustomToast(
              context, l10n.profileAttachmentUploadFailed('$e'), ToastType.error);
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('Attachment upload failed: $e')),
          // );
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
        showCustomToast(context, l10n.leaveSubmittedSuccess,
            ToastType.success);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //       content: Text('Leave request submitted successfully!')),
        // );
        ref.invalidate(leaveBalanceProvider);
        ref.invalidate(leaveHistoriesProvider);
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        showCustomToast(
            context, l10n.leaveSubmittedFailed, ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(content: Text('Leave request submitted failed!')),
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final leaveTypesAsync = ref.watch(leaveTypesProvider);

    // --- Watch the correct provider ---
    final leaveState = ref.watch(leaveRequestSubmissionProvider);
    final isSubmitting = leaveState.isLoading;

    ref.listen(leaveRequestSubmissionProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        final error = state.error;
        showCustomToast(
            context,
            '${l10n.leaveSubmissionFailedPrefix} ${error.toString().split(':').last}',
            ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //       content: Text(
        //           'Submission Failed: ${error.toString().split(':').last}')),
        // );
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
      appBar: IAppBar(title: l10n.leaveNewRequest),
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
                          label: l10n.leaveType,
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
                        label: l10n.leaveType,
                        controller: _leaveTypeController,
                        options: const [],
                        errorText: l10n.leaveFailedToLoadTypes,
                        onOptionSelected: (selectedOption) {},
                      ),
                    ),
                    SizedBox(height: 10.h), // Use height for vertical spacing
                    ITextFieldDatePicker(
                      label: l10n.leaveStartDate,
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
                      label: l10n.leaveEndDate,
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
                      label: l10n.leaveReason,
                      controller: _notesController,
                      // --- Use validation errors ---
                      errorText: validationErrors['reason'],
                    ),
                    SizedBox(height: 10.h),
                    IFilePicker(
                      title: l10n.leaveAttachment,
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
              text: isSubmitting ? l10n.leaveSubmitting : l10n.leaveSendRequest,
            ),
          ],
        ),
      ),
    );
  }
}
