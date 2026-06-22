import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/presentation/providers/business_trip_provider.dart';
import 'package:intl/intl.dart';

class BusinessTripFormScreen extends ConsumerStatefulWidget {
  const BusinessTripFormScreen({super.key});

  @override
  ConsumerState<BusinessTripFormScreen> createState() =>
      _BusinessTripFormScreenState();
}

class _BusinessTripFormScreenState extends ConsumerState<BusinessTripFormScreen> {
  final _destinationController = TextEditingController();
  final _reasonController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();

  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  @override
  void dispose() {
    _destinationController.dispose();
    _reasonController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  Future<void> _submitRequest() async {
    if (_selectedStartDate == null ||
        _selectedEndDate == null ||
        _destinationController.text.isEmpty ||
        _reasonController.text.isEmpty) {
      showCustomToast(context, 'Please fill all fields.', ToastType.info);
      return;
    }

    final DateFormat formatter = DateFormat('y-MM-dd');
    final String startDate = formatter.format(_selectedStartDate!);
    final String endDate = formatter.format(_selectedEndDate!);

    final request = BusinessTripRequest(
      startDate: startDate,
      endDate: endDate,
      destination: _destinationController.text,
      reason: _reasonController.text,
    );

    try {
      await ref
          .read(businessTripSubmissionProvider.notifier)
          .submitForm(request: request);

      if (mounted) {
        showCustomToast(context, 'Business trip requested successfully!', ToastType.success);
        ref.invalidate(businessTripsProvider);
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        showCustomToast(context, 'Submission failed!', ToastType.error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final submissionState = ref.watch(businessTripSubmissionProvider);
    final isSubmitting = submissionState.isLoading;

    ref.listen(businessTripSubmissionProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        showCustomToast(
            context,
            'Submission Failed: ${state.error.toString().split(':').last}',
            ToastType.error);
      }
    });

    return Scaffold(
      appBar: IAppBar(title: "New Business Trip"),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    ITextFieldDatePicker(
                      label: "Start Date",
                      isRequired: true,
                      controller: _startDateController,
                      onDateChanged: (newDate) {
                        setState(() {
                          _selectedStartDate = newDate;
                          // If the end date is now before the start date, clear it
                          if (_selectedEndDate != null && _selectedEndDate!.isBefore(newDate)) {
                            _selectedEndDate = null;
                            _endDateController.clear();
                          }
                        });
                      },
                    ),
                    SizedBox(height: 10.h),
                    ITextFieldDatePicker(
                      label: "End Date",
                      isRequired: true,
                      controller: _endDateController,
                      firstDate: _selectedStartDate ?? DateTime.now(),
                      onDateChanged: (newDate) {
                        setState(() {
                          _selectedEndDate = newDate;
                        });
                      },
                    ),
                    SizedBox(height: 10.h),
                    ITextFieldBase(
                      label: "Destination",
                      controller: _destinationController,
                      isRequired: true,
                      borderColor: IColors.light.grayscale.g30,
                    ),
                    SizedBox(height: 10.h),
                    ITextFieldTextArea(
                      label: "Reason",
                      controller: _reasonController,
                      isRequired: true,
                    ),
                  ],
                ),
              ),
            ),
            IFooterButton(
              onPressed: isSubmitting ? null : _submitRequest,
              text: isSubmitting ? "Submitting..." : "Send Request",
            ),
          ],
        ),
      ),
    );
  }
}
