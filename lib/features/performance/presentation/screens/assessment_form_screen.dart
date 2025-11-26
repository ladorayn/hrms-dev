import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

class AssessmentFormScreen extends ConsumerStatefulWidget {
  final AssessmentList assessment;

  const AssessmentFormScreen({
    super.key,
    required this.assessment,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AssessmentFormScreenState();
}

class _AssessmentFormScreenState extends ConsumerState<AssessmentFormScreen> {
  final Map<int, Map<String, bool>> _checkboxAnswers = {};

  final Map<int, int?> _ratingAnswers = {};

  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;

  bool _isFormValid = false;

  @override
  void dispose() {
    for (var controller in _notesControllers.values) {
      controller.removeListener(_validateForm);
      controller.dispose();
    }
    super.dispose();
  }

  void _initializeState(List<FormFields> fields) {
    if (_isStateInitialized) return;

    for (final field in fields) {
      switch (field.type) {
        case 'checkbox':
          final optionsMap = <String, bool>{};
          if (field.options is List) {
            for (final option in (field.options as List).cast<String>()) {
              optionsMap[option] = false;
            }
          }
          _checkboxAnswers[field.id] = optionsMap;
          break;
        case 'range':
          _ratingAnswers[field.id] = null;
          if (field.metadata != null &&
              field.metadata is Map<String, dynamic>) {
            final metadata =
                FieldMetadata.fromJson(field.metadata as Map<String, dynamic>);
            if (metadata.isNote == true) {
              final controller = TextEditingController();
              controller.addListener(_validateForm);
              _notesControllers[field.id] = controller;
            }
          }
          break;
        case 'textarea':
        case 'text':
          final controller = TextEditingController();
          controller.addListener(_validateForm);
          _notesControllers[field.id] = controller;
          break;
      }
    }
    _isStateInitialized = true;
    _validateForm();
  }

  void _validateForm() {
    final formFields =
        ref.read(performanceFormFieldsProvider(formId: 1 ?? 0)).value;

    if (formFields == null) {
      setState(() => _isFormValid = false);
      return;
    }

    bool allRequiredFieldsAreValid = true;
    for (final field in formFields) {
      if (field.isRequired) {
        bool isFieldValid = false;

        switch (field.type) {
          case 'checkbox':
            final answers = _checkboxAnswers[field.id];
            if (answers != null && answers.values.contains(true)) {
              isFieldValid = true;
            }
            break;
          case 'range':
            if (_ratingAnswers[field.id] != null) {
              isFieldValid = true;
            }
            break;
          case 'textarea':
          case 'text':
            final controller = _notesControllers[field.id];
            if (controller != null && controller.text.trim().isNotEmpty) {
              isFieldValid = true;
            }
            break;
          default:
            isFieldValid = true;
            break;
        }

        if (!isFieldValid) {
          allRequiredFieldsAreValid = false;
          break;
        }
      }
    }

    // Update the state with the result
    setState(() {
      _isFormValid = allRequiredFieldsAreValid;
    });
  }

  Future<void> _onSubmit() async {
    final List<SubmissionForm> submissions = [];

    _checkboxAnswers.forEach((fieldId, answers) {
      final selectedOptions = answers.entries
          .where((e) => e.value == true)
          .map((e) => e.key)
          .toList();

      submissions.add(SubmissionForm(
        fieldId: fieldId,
        value: selectedOptions,
        additionalData: selectedOptions,
      ));
    });

    _ratingAnswers.forEach((fieldId, rating) {
      submissions.add(SubmissionForm(
        fieldId: fieldId,
        value: rating.toString(),
        additionalData: {
          'notes': _notesControllers[fieldId]?.text ?? '',
        },
      ));
    });

    _notesControllers.forEach((fieldId, controller) {
      if (!_ratingAnswers.containsKey(fieldId)) {
        submissions.add(SubmissionForm(
          fieldId: fieldId,
          value: controller.text,
        ));
      }
    });
    context.pop();

    // TODO: Add actual form submission logic here
    // final request = ExitFormRequest(submissions: submissions);
    // try {
    //   await ref.read(exitFormSubmissionProvider.notifier).submitForm(
    //       request: request, formId: 1 ?? 0, offboardingId: widget.data.id ?? 0);
    //   if (mounted) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('Form Submitted Successfully!')),
    //     );
    //     context.pop();
    //   }
    // } catch (e) {
    //   if (mounted) {
    //     context.pop();
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text('Submission Failed: ${e.toString()}')),
    //     );
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    final formFieldsAsync =
        ref.watch(performanceFormFieldsProvider(formId: 1 ?? 0));

    ref.listen(performanceFormFieldsProvider(formId: 1 ?? 0), (previous, next) {
      if (next.hasValue && !_isStateInitialized) {
        setState(() {
          _initializeState(next.value!);
        });
      }
    });

    return Scaffold(
      appBar: IAppBar(title: "Self Assessment - Q3 2025"),
      body: Column(
        children: [
          Expanded(
            child: formFieldsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
              data: (formFields) {
                return ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  itemCount: formFields.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16.h,
                    );
                  },
                  itemBuilder: (context, index) {
                    final field = formFields[index];

                    return Container(
                      padding: EdgeInsets.all(12.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: IColors.light.grayscale.g20,
                        ),
                        color: Colors.white,
                      ),
                      child: _buildDynamicField(field),
                    );
                  },
                );
              },
            ),
          ),
          IFooterButton(
            text: "Submit Self Assessment",
            onPressed: _isFormValid
                ? () {
                    if (_isStateInitialized) {
                      _showPopUpConfirmationSubmission(context);
                    }
                  }
                : null,
            secondaryText: "Save as Draft",
            onSecondaryPressed: () {
              if (_isStateInitialized) {
                _showPopUpConfirmationSubmission(context);
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildFieldHeader(FormFields field) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${field.label}', style: textTheme.titleMedium),
        if (field.description != null && field.description!.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
            child: Text(
              field.description!,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF323232),
                fontSize: 14.sp,
              ),
            ),
          ),
        Row(
          children: [
            SvgPicture.asset(
              IAssets.helpDesk,
            ),
            SizedBox(width: 8.w),
            Text('Deskripsi Penilaian',
                style: textTheme.titleMedium?.copyWith(
                  color: IColors.light.primary.main,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                )),
          ],
        ),
        SizedBox(height: 12.h),
      ],
    );
  }

  Widget _buildDynamicField(FormFields field) {
    switch (field.type) {
      case 'checkbox':
        return _buildCheckboxSection(field);
      case 'range':
        return _buildRatingSection(field);
      case 'textarea':
        return _buildTextAreaSection(field);
      case 'text':
        return _buildTextAreaSection(field);
      default:
        return Text('Unknown field type: ${field.type}');
    }
  }

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            visualDensity: VisualDensity.compact,
          ),
          Expanded(child: Text(title)),
        ],
      ),
    );
  }

  Widget _buildCheckboxSection(FormFields field) {
    final answers = _checkboxAnswers[field.id];

    if (answers == null || field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ...options.map((option) {
          return _buildCustomCheckbox(
            title: option,
            value: answers[option]!,
            onChanged: (bool? value) {
              setState(() {
                answers[option] = value!;
              });
              _validateForm();
            },
          );
        }),
      ],
    );
  }

  Widget _buildRatingSection(FormFields field) {
    final selectedRating = _ratingAnswers[field.id];
    final notesController = _notesControllers[field.id];

    if (field.options == null || field.options is! Map<String, dynamic>) {
      return const SizedBox.shrink();
    }
    final options =
        FieldOptionsRange.fromJson(field.options as Map<String, dynamic>);
    final int count = options.max - options.min + 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(count, (index) {
            final rating = options.min + index;
            final isSelected = rating == selectedRating;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: isSelected
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() => _ratingAnswers[field.id] = rating);
                          _validateForm();
                        },
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
                        onPressed: () {
                          setState(() => _ratingAnswers[field.id] = rating);
                          _validateForm();
                        },
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
        if (notesController != null) ...[
          SizedBox(height: 12.h),
          ITextFieldTextArea(
            controller: notesController,
            hintText: '',
          ),
        ],
      ],
    );
  }

  Widget _buildTextAreaSection(FormFields field) {
    final controller = _notesControllers[field.id];
    if (controller == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ITextFieldTextArea(
          controller: controller,
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
          insetPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
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
                  'Are you sure you want to submit this self assessment form?',
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
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              context.pop();
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
                    SizedBox(width: 10.w),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              _onSubmit();
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
                            child: Text(
                              "Submit Form",
                              textAlign: TextAlign.center,
                            ))),
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
