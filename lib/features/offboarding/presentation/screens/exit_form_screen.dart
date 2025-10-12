import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';

class ExitFormScreen extends ConsumerStatefulWidget {
  const ExitFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExitFormScreenState();
}

class _ExitFormScreenState extends ConsumerState<ExitFormScreen> {
  // 1. Reason for Leaving
  final Map<String, bool> _reasonsForLeaving = {
    'Better career opportunity (promotion & role expansion)': false,
    'Salary/Compensation': false,
    'Work-life balance': false,
    'Relationship with supervisor/colleagues': false,
    'Relocation / Family reason': false,
    'Others': false,
  };
  late final TextEditingController _otherReasonController;

  // 2-5. Rating Sections
  int? _compensationRating;
  late final TextEditingController _compensationNotesController;

  int? _workEnvironmentRating;
  late final TextEditingController _workEnvironmentNotesController;

  int? _supervisorRelationshipRating;
  late final TextEditingController _supervisorRelationshipNotesController;

  int? _careerDevelopmentRating;
  late final TextEditingController _careerDevelopmentNotesController;

  // 6-9. Text Area Sections
  late final TextEditingController _strengthsController;
  late final TextEditingController _weaknessController;
  late final TextEditingController _improvementController;
  late final TextEditingController _finalCommentsController;

  @override
  void initState() {
    super.initState();
    _otherReasonController = TextEditingController();
    _compensationNotesController = TextEditingController();
    _workEnvironmentNotesController = TextEditingController();
    _supervisorRelationshipNotesController = TextEditingController();
    _careerDevelopmentNotesController = TextEditingController();
    _strengthsController = TextEditingController();
    _weaknessController = TextEditingController();
    _improvementController = TextEditingController();
    _finalCommentsController = TextEditingController();
  }

  @override
  void dispose() {
    _otherReasonController.dispose();
    _compensationNotesController.dispose();
    _workEnvironmentNotesController.dispose();
    _supervisorRelationshipNotesController.dispose();
    _careerDevelopmentNotesController.dispose();
    _strengthsController.dispose();
    _weaknessController.dispose();
    _improvementController.dispose();
    _finalCommentsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    Future<void> onSubmit() async {
      // In a real app, you would gather all the state variables here
      // and send them to your API.
      try {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form Submitted Successfully!')),
        );
        // Optional: Navigate back after submission
        // context.pop();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Submission Failed: ${e.toString()}')),
        );
      }
    }

    return Scaffold(
      appBar: IAppBar(title: "Exit Interview Form"),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              children: [
                _buildReasonForLeavingSection(),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildRatingSection(
                  title: '2. Compensation & Benefits',
                  selectedRating: _compensationRating,
                  notesController: _compensationNotesController,
                  onRatingSelected: (rating) {
                    setState(() => _compensationRating = rating);
                  },
                ),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildRatingSection(
                  title: '3. Work Environment',
                  selectedRating: _workEnvironmentRating,
                  notesController: _workEnvironmentNotesController,
                  onRatingSelected: (rating) {
                    setState(() => _workEnvironmentRating = rating);
                  },
                ),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildRatingSection(
                  title: '4. Relationship with Supervisor',
                  selectedRating: _supervisorRelationshipRating,
                  notesController: _supervisorRelationshipNotesController,
                  onRatingSelected: (rating) {
                    setState(() => _supervisorRelationshipRating = rating);
                  },
                ),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildRatingSection(
                  title: '5. Career Development',
                  selectedRating: _careerDevelopmentRating,
                  notesController: _careerDevelopmentNotesController,
                  onRatingSelected: (rating) {
                    setState(() => _careerDevelopmentRating = rating);
                  },
                ),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildTextAreaSection(
                    '6. Company Strengths', _strengthsController),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildTextAreaSection(
                    '7. Company Weakness', _weaknessController),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildTextAreaSection(
                    '8. Suggestion for Improvement', _improvementController),
                Divider(
                  height: 24.h,
                  color: IColors.light.grayscale.g10,
                ),
                _buildTextAreaSection(
                    '9. Final Comments', _finalCommentsController),
              ],
            ),
          ),
          IFooterButton(
            text: "Submit Form",
            onPressed: () {
              _showPopUpConfirmationSubmission(context);
            },
          )
        ],
      ),
    );
  }

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    return InkWell(
      onTap: () {
        onChanged(!value); // Toggle the value when the row is tapped
      },
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            visualDensity: VisualDensity.compact, // Make checkbox smaller
          ),
          Expanded(child: Text(title)),
        ],
      ),
    );
  }

  Widget _buildReasonForLeavingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('1. Reason for Leaving',
            style: Theme.of(context).textTheme.titleMedium),
        ..._reasonsForLeaving.keys.map((reason) {
          return _buildCustomCheckbox(
            title: reason,
            value: _reasonsForLeaving[reason]!,
            onChanged: (bool? value) {
              setState(() {
                _reasonsForLeaving[reason] = value!;
              });
            },
          );
        }).toList(),
        if (_reasonsForLeaving['Others'] == true)
          Padding(
            padding: EdgeInsets.only(left: 40.w, right: 16.w),
            child: ITextFieldTextArea(
              controller: _otherReasonController,
              hintText: '',
            ),
          ),
      ],
    );
  }

  Widget _buildRatingSection({
    required String title,
    required int? selectedRating,
    required TextEditingController notesController,
    required ValueChanged<int> onRatingSelected,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            final rating = index + 1;
            final isSelected = rating == selectedRating;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: isSelected
                    ? ElevatedButton(
                        onPressed: () => onRatingSelected(rating),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: IColors.light.primary.main,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: IColors.light.primary.main),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('$rating'),
                      )
                    : ElevatedButton(
                        onPressed: () => onRatingSelected(rating),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: IColors.light.primary.main,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: IColors.light.primary.main),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('$rating'),
                      ),
              ),
            );
          }),
        ),
        SizedBox(height: 12.h),
        ITextFieldTextArea(
          controller: notesController,
          label: 'Notes',
          hintText: '',
        ),
      ],
    );
  }

  Widget _buildTextAreaSection(String title, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 12.h),
        ITextFieldTextArea(
          controller: controller,
          label: 'Notes',
          hintText: '',
        ),
      ],
    );
  }

  Future<void> _showPopUpConfirmationSubmission(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(IAssets.questionMark),
                SizedBox(height: 16.h),
                Text(
                  'Are you sure you want to submit this exit interview form?',
                  textAlign: TextAlign.center,
                  style: textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Once submitted, you won’t be able to make any changes.",
                  textAlign: TextAlign.center,
                  style: textTheme.bodySmall
                      ?.copyWith(color: Colors.grey.shade600),
                ),
                SizedBox(height: 16.h),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              globalNavigatorKey.currentContext?.pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: IColors.light.primary.main,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: IColors.light.primary.main),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Cancel"))),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              globalNavigatorKey.currentContext?.pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: IColors.light.primary.main,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: IColors.light.primary.main),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Confirm"))),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
