import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/employees/employees_response.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';

class HandoverItem {
  final int id;
  final TextEditingController worksController;
  List<Employee> selectedEmployees;

  HandoverItem({
    required this.id,
    required this.worksController,
    this.selectedEmployees = const [],
  });
}

class WorkHandoverValidateScreen extends ConsumerStatefulWidget {
  const WorkHandoverValidateScreen({super.key});

  @override
  ConsumerState<WorkHandoverValidateScreen> createState() =>
      _WorkHandoverValidateScreenState();
}

class _WorkHandoverValidateScreenState
    extends ConsumerState<WorkHandoverValidateScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showSnackBar(String message, {bool isError = false}) {
    if (!mounted) return;
    showCustomToast(context, message, ToastType.info);
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text(message),
    //     // backgroundColor: isError ? Colors.red : Colors.green,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    final handoverState = ref.watch(handoverSubmissionProvider);
    //
    // ref.listen(handoverSubmissionProvider, (_, state) {
    //   state.whenOrNull(
    //     error: (e, s) => _showSnackBar(e.toString(), isError: true),
    //     data: (data) {
    //       if (data != null) {
    //         _showSnackBar("Handover submitted successfully!");
    //         // Pop the screen on success
    //         Navigator.of(context).pop();
    //       }
    //     },
    //   );
    // });

    // Future<void> onSubmit() async {
    //   for (var item in _handoverItems) {
    //     if (item.worksController.text.isEmpty) {
    //       _showSnackBar('Please fill in all "Works" fields.', isError: true);
    //       return;
    //     }
    //     if (item.selectedEmployees.isEmpty) {
    //       _showSnackBar('Please select at least one recipient for all items.',
    //           isError: true);
    //       return;
    //     }
    //   }
    //
    //   final List<HandoverItemRequest> items = _handoverItems.map((item) {
    //     final List<RecipientRequest> recipients =
    //         item.selectedEmployees.map((emp) {
    //       return RecipientRequest(
    //         userId: emp.id ?? 0,
    //         status: 1,
    //       );
    //     }).toList();
    //
    //     return HandoverItemRequest(
    //       category: 'work',
    //       name: item.worksController.text,
    //       recipients: recipients,
    //     );
    //   }).toList();
    //
    //   final HandoverRequest request = HandoverRequest(data: items);
    //   final int? offboardingId = widget.data.id;
    //
    //   if (offboardingId == null) {
    //     _showSnackBar('Could not find offboarding ID. Please try again.',
    //         isError: true);
    //     return;
    //   }
    //   await ref.read(handoverSubmissionProvider.notifier).submitForm(
    //         request: request,
    //         offboardingId: offboardingId,
    //       );
    // }

    return Scaffold(
      appBar: const IAppBar(title: "Work & Responsibilities Handover"),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemCount: 2,
              itemBuilder: (context, index) {
                return _buildHandoverCard(index, context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHandoverCard(int index, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align items to the top
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ITextFieldTextArea(
                      label: "Works",
                      hintText: '',
                      isRequired: true,
                      enabled: false,
                      readOnly: true,
                      labelStyle: textTheme.bodySmall),
                  SizedBox(height: 16.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IColors.light.primary.main,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.grey.shade200,
                      disabledForegroundColor: Colors.grey.shade500,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Validate Now"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
