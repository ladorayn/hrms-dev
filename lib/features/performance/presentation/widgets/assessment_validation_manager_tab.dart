import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

class AssessmentValidationFormTabManagerScreen extends ConsumerStatefulWidget {
  const AssessmentValidationFormTabManagerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AssessmentValidationFormTabManagerScreenState();
}

class _AssessmentValidationFormTabManagerScreenState
    extends ConsumerState<AssessmentValidationFormTabManagerScreen>
    with AutomaticKeepAliveClientMixin {
  final Map<int, Map<String, bool>> _checkboxAnswers = {};
  final Map<int, String?> _singleSelectionAnswers = {}; // ADDED
  final Map<int, int?> _ratingAnswers = {};
  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false;
  final bool isReadOnly =
      true; // Validation form is based on employee's submission, so treat inputs as read-only.

  @override
  bool get wantKeepAlive => true;

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
          final metadata = field.metadata;
          if (metadata != null) {
            final isNote = metadata['is_note'] == true;

            if (isNote) {
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
        case 'select': // ADDED
        case 'radio': // ADDED
          _singleSelectionAnswers[field.id] = null;
          break;
      }
    }

    if (mounted) {
      setState(() {
        _isStateInitialized = true;
      });
      _validateForm();
    }
  }

  void _validateForm() {
    final formFields =
        ref.read(performanceFormFieldsProvider(formId: 1 ?? 0)).value;

    if (formFields == null) {
      if (mounted) setState(() => _isFormValid = false);
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
          case 'select': // ADDED
          case 'radio': // ADDED
            if (_singleSelectionAnswers[field.id] != null) {
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

    if (mounted) {
      setState(() {
        _isFormValid = allRequiredFieldsAreValid;
      });
    }
  }

  Future<void> _onSubmit() async {
    // This is the validation tab, submission should trigger the approval flow.
    // For now, we only populate the submission data.

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

    // ADDED: Single Selection Submission Logic
    _singleSelectionAnswers.forEach((fieldId, selectedOption) {
      if (selectedOption != null) {
        submissions.add(SubmissionForm(
          fieldId: fieldId,
          value: selectedOption,
        ));
      }
    });

    _notesControllers.forEach((fieldId, controller) {
      if (!_ratingAnswers.containsKey(fieldId)) {
        submissions.add(SubmissionForm(
          fieldId: fieldId,
          value: controller.text,
        ));
      }
    });

    // You would typically call a validation/approval API here
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final formFieldsAsync =
        ref.watch(performanceFormFieldsProvider(formId: 1 ?? 0));

    formFieldsAsync.whenData((fields) {
      if (!_isStateInitialized) {
        Future.microtask(() => _initializeState(fields));
      }
    });

    return Column(
      children: [
        Expanded(
          child: formFieldsAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
            data: (formFields) {
              if (!_isStateInitialized) {
                return const Center(child: CircularProgressIndicator());
              }

              return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
          text: "Validate Self Assessment",
          onPressed: _isFormValid ? _onSubmit : null,
        )
      ],
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
      case 'text':
        return _buildTextAreaSection(field);
      case 'select': // ADDED
      case 'radio': // ADDED
        return _buildSingleSelectionSection(field); // ADDED
      default:
        return Text('Unknown field type: ${field.type}');
    }
  }

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    // This is a validation view, so interactions are disabled (read-only)
    const ValueChanged<bool?>? handler = null;

    return InkWell(
      onTap: null,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: handler,
            visualDensity: VisualDensity.compact,
            activeColor: IColors.light.grayscale.g30, // Visually disabled color
          ),
          Expanded(
              child: Text(title,
                  style: TextStyle(color: IColors.light.grayscale.g60))),
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
    final bool isDisabled = true; // Always disabled in validation tab

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

            final buttonStyle = ElevatedButton.styleFrom(
              backgroundColor: isSelected
                  ? IColors.light.primary.main
                  : IColors.light.grayscale.g10, // Disabled color
              foregroundColor:
                  isSelected ? Colors.white : IColors.light.primary.main,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: IColors.light.grayscale.g30), // Disabled border
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0, // Disabled elevation
            );

            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: ElevatedButton(
                  onPressed: null, // Disable press
                  style: buttonStyle,
                  child: Text('$rating',
                      style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : IColors.light.grayscale.g60)),
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
            readOnly: true, // Always read-only
          ),
        ],
      ],
    );
  }

  Widget _buildTextAreaSection(FormFields field) {
    final controller = _notesControllers[field.id];
    // If controller is null, return a placeholder or loader instead of shrinking
    if (controller == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ITextFieldTextArea(
          controller: controller,
          hintText: '',
          readOnly: true, // Always read-only
          onTap: null,
        ),
      ],
    );
  }

  // ADDED: Single Selection Section (Read-Only)
  Widget _buildSingleSelectionSection(FormFields field) {
    if (field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();
    final selectedOption = _singleSelectionAnswers[field.id];
    const bool isDisabled = true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        SizedBox(height: 8.h),
        // If it's a select field, use a DropdownButtonFormField (Read-Only)
        if (field.type == 'select')
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
            ),
            value: selectedOption,
            hint: Text(selectedOption ?? 'N/A',
                style: TextStyle(color: IColors.light.grayscale.g60)),
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: null,
            // Disable changes
            isExpanded: true,
            style: TextStyle(
              color: IColors.light.grayscale.g60,
            ),
            dropdownColor: Colors.white,
            iconDisabledColor: IColors.light.grayscale.g30,
            iconEnabledColor: IColors.light.grayscale.g30,
          )
        else // Treat 'radio' type as a list of RadioListTiles (Read-Only)
          ...options.map((option) {
            return RadioListTile<String>(
              title: Text(option,
                  style: TextStyle(
                      color: selectedOption == option
                          ? IColors.light.primary.main
                          : IColors.light.grayscale.g60)),
              value: option,
              groupValue: selectedOption,
              onChanged: null,
              // Disable changes
              dense: true,
              contentPadding: EdgeInsets.zero,
              activeColor: IColors.light.primary.main,
            );
          }).toList(),
      ],
    );
  }
}
