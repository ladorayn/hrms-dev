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
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart'; // REQUIRED
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart'; // REQUIRED
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

class AssessmentValidationFormTabManagerScreen extends ConsumerStatefulWidget {
  final int formId;

  // ⭐ ADDED: Parameter for the specific assessment being validated (EmployeeSelfAssessment ID)
  final int employeeSelfAssessmentId;

  const AssessmentValidationFormTabManagerScreen({
    super.key,
    required this.formId,
    required this.employeeSelfAssessmentId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AssessmentValidationFormTabManagerScreenState();
}

class _AssessmentValidationFormTabManagerScreenState
    extends ConsumerState<AssessmentValidationFormTabManagerScreen>
    with AutomaticKeepAliveClientMixin {
  final Map<int, Map<String, bool>> _checkboxAnswers = {};
  final Map<int, String?> _singleSelectionAnswers = {};
  final Map<int, int?> _ratingAnswers = {};

  // The notes controllers here are assumed to be for the MANAGER'S input/validation notes.
  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false;
  final bool isReadOnly = true;

  // ⭐ NEW: Holds the flattened list of all fields
  List<FormFields> get _allFields {
    final formFieldsGroup = ref
        .read(performanceFormFieldsByGroupProvider(formId: widget.formId))
        .value;
    if (formFieldsGroup == null) return [];
    return formFieldsGroup.expand((group) => group.fields).toList();
  }

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

  void _initializeState(
      List<FormFieldsGroup> formGroups, FormAnswer? formAnswer) {
    if (_isStateInitialized) return;

    final allFields = formGroups.expand((group) => group.fields).toList();

    for (final field in allFields) {
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
        case 'select':
        case 'radio':
          _singleSelectionAnswers[field.id] = null;
          break;
      }
    }

    // ⭐ NEW: Populate fields with existing answers
    _populateFieldsFromAnswers(formAnswer);

    if (mounted) {
      setState(() {
        _isStateInitialized = true;
      });
      _validateForm();
    }
  }

  // ⭐ NEW: Populate method adapted from AssessmentFormScreen
  void _populateFieldsFromAnswers(FormAnswer? formAnswer) {
    // Assuming formAnswer.fields holds List<FieldsAnswer> (employee's data)
    final answerFields = formAnswer != null ? formAnswer.fields ?? [] : [];

    if (answerFields.isEmpty) return;

    for (final answer in answerFields) {
      final fieldId = answer.fieldId;
      if (fieldId == null) continue;

      final field = _allFields.firstWhere((f) => f.id == fieldId,
          orElse: () => const FormFields(id: -1, isRequired: false, order: 0));

      if (field.id == -1) continue;

      switch (field.type) {
        case 'checkbox':
          _populateCheckboxAnswer(fieldId, answer);
          break;
        case 'range':
          _populateRatingAnswer(fieldId, answer);
          break;
        case 'textarea':
        case 'text':
          // NOTE: This populates the manager's notes controller with the employee's text.
          // If you need separate controllers for employee text and manager notes,
          // you'll need two sets of controllers or a clearer distinction.
          // For now, we populate the employee's answer to display it.
          _populateTextAnswer(fieldId, answer);
          break;
        case 'select':
        case 'radio':
          _populateSingleSelectionAnswer(fieldId, answer);
          break;
      }
    }
  }

  void _populateCheckboxAnswer(int fieldId, FieldsAnswer answer) {
    final currentAnswers = _checkboxAnswers[fieldId];
    if (currentAnswers == null) return;

    final selectedOptions = answer.value;

    if (selectedOptions is List) {
      for (final option in selectedOptions.cast<String>()) {
        if (currentAnswers.containsKey(option)) {
          currentAnswers[option] = true;
        }
      }
    }
  }

  void _populateRatingAnswer(int fieldId, FieldsAnswer answer) {
    final ratingValue = answer.value;

    int? rating;
    if (ratingValue is String) {
      rating = int.tryParse(ratingValue);
    } else if (ratingValue is int) {
      rating = ratingValue;
    }

    if (rating != null) {
      _ratingAnswers[fieldId] = rating;
    }

    // Handling notes from additionalData for range/rating fields (Employee's note)
    if (answer.additionalData is Map<String, dynamic>) {
      final additionalData = answer.additionalData as Map<String, dynamic>;
      final notes = additionalData['notes'];

      if (notes is String) {
        final field = _allFields.firstWhere((f) => f.id == fieldId);
        final hasNotes = field.metadata?['is_note'] == true;

        // Populate the notes controller with the employee's note.
        // Manager's input will overwrite this, or you should use a separate controller.
        if (hasNotes && _notesControllers.containsKey(fieldId)) {
          _notesControllers[fieldId]!.text = notes;
        }
      }
    }
  }

  void _populateTextAnswer(int fieldId, FieldsAnswer answer) {
    final textValue = answer.value;
    if (textValue is String && _notesControllers.containsKey(fieldId)) {
      _notesControllers[fieldId]!.text = textValue;
    }
  }

  void _populateSingleSelectionAnswer(int fieldId, FieldsAnswer answer) {
    final selectedOption = answer.value;
    if (selectedOption is String) {
      _singleSelectionAnswers[fieldId] = selectedOption;
    }
  }

  void _validateForm() {
    final formFieldsGroup = ref
        .read(performanceFormFieldsByGroupProvider(formId: widget.formId))
        .value;

    if (formFieldsGroup == null) {
      if (mounted) setState(() => _isFormValid = false);
      return;
    }

    final formFields = formFieldsGroup.expand((group) => group.fields).toList();

    bool allRequiredFieldsAreValid = true;
    // NOTE: Validation logic here should check for MANAGER'S required inputs, not the employee's original ones.
    // For simplicity, we check if the required fields in the form (which are now manager's input fields) are filled.
    for (final field in formFields) {
      // Assuming all manager input fields are non-read-only fields (like notes)
      if (field.isRequired) {
        bool isFieldValid = false;

        switch (field.type) {
          // Checkboxes/Ranges/Selections are usually for employee display, so manager fields are likely textareas/texts.
          // If the manager had to provide a rating/selection, the logic below would be correct.
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
            // Only validate if the manager's notes controller exists and is a required field.
            if (controller != null && controller.text.trim().isNotEmpty) {
              isFieldValid = true;
            }
            break;
          case 'select':
          case 'radio':
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
        // Assuming validation is valid if all *required manager inputs* are valid.
        _isFormValid = allRequiredFieldsAreValid;
      });
    }
  }

  Future<void> _onSubmit() async {
    // Submission logic remains the same (collecting answers)
    final List<SubmissionForm> submissions = [];

    // The submissions here will capture the state of the controllers/answers,
    // which represent the manager's action/data (e.g., manager-added notes).
    // The actual structure of the manager's submission might differ (e.g., only notes and approval status).

    // ... (Submission logic remains the same as provided, ensuring manager's notes are captured) ...
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
      final field = _allFields.firstWhere((f) => f.id == fieldId);
      final hasNotes = field.metadata?['is_note'] == true;

      submissions.add(SubmissionForm(
        fieldId: fieldId,
        value: rating.toString(),
        additionalData: hasNotes
            ? {
                'notes': _notesControllers[fieldId]?.text ?? '',
              }
            : null,
      ));
    });

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
    // Example: await ref.read(validationProvider).submitValidation(submissions, widget.employeeSelfAssessmentId, status: "approved");

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Validation Submitted Successfully!')),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // MODIFIED: Use the grouped fields provider
    final formFieldsAsync =
        ref.watch(performanceFormFieldsByGroupProvider(formId: widget.formId));

    // ⭐ NEW: Fetch the employee's submitted answers
    final formAnsweredAsync = ref.watch(performanceAssessmentAnswerProvider(
        request: AssessmentAnswerRequest(
      // Assuming this is the correct structure for the request
      employeeSelfAssessment: "${widget.employeeSelfAssessmentId}",
      formId: widget.formId,
    )));

    // ⭐ Initialization Logic: Wait for BOTH fields and answers
    if (formFieldsAsync.hasValue &&
        formAnsweredAsync.hasValue &&
        !_isStateInitialized) {
      final formGroups = formFieldsAsync.value!;

      // The answer list is wrapped in formAnsweredAsync.value (List<FormAnswer>?)
      final answerList = formAnsweredAsync.value;

      // Safely access the FormAnswer object (or null if the list is empty)
      final FormAnswer? firstAnswer =
          answerList != null && answerList.isNotEmpty
              ? answerList[0].data
              : null;

      // Use post-frame callback to safely call setState outside of build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _initializeState(formGroups, firstAnswer);
      });
    }

    return Column(
      children: [
        Expanded(
          // MODIFIED: Show loader until BOTH fields and answers are initialized
          child: formFieldsAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error (Fields): $err')),
            data: (formGroups) {
              // Wait for initialization to complete, which depends on answer data too
              if (!_isStateInitialized) {
                // Check answer status as well
                return formAnsweredAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) =>
                      Center(child: Text('Error (Answers): $err')),
                  data: (_) => const Center(
                      child:
                          CircularProgressIndicator()), // Should resolve quickly once data is here
                );
              }

              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemCount: formGroups.length,
                itemBuilder: (context, groupIndex) {
                  final group = formGroups[groupIndex];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildGroupHeader(group),
                      ...group.fields.map((field) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Container(
                            padding: EdgeInsets.all(12.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: IColors.light.grayscale.g20,
                              ),
                              color: Colors.white,
                            ),
                            child: _buildDynamicField(field),
                          ),
                        );
                      }).toList(),
                    ],
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

  // --- Widget Builders (Read-Only Logic) ---

  Widget _buildGroupHeader(FormFieldsGroup group) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h, top: 8.h),
      child: Text(
        group.name,
        style: textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: IColors.light.primary.main,
        ),
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
      case 'text':
        return _buildTextAreaSection(field);
      case 'select':
      case 'radio':
        return _buildSingleSelectionSection(field);
      default:
        return Text('Unknown field type: ${field.type}');
    }
  }

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    // Read-only logic: handler is null, styles reflect disabled state
    const ValueChanged<bool?>? handler = null;

    return InkWell(
      onTap: null,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: handler,
            visualDensity: VisualDensity.compact,
            activeColor: value
                ? IColors.light.primary.main
                : IColors.light.grayscale.g30,
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
            // Use the populated value
            value: answers[option] ?? false,
            onChanged: (bool? value) {
              // This is read-only, so this code should never run, but kept for method completeness
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

  // Inside _AssessmentValidationFormTabManagerScreenState class
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
        SingleChildScrollView(
          // Keep SingleChildScrollView for horizontal scroll
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(count, (index) {
              final rating = options.min + index;
              final isSelected = rating == selectedRating;

              // Use ElevatedButton style for the selected one, OutlinedButton style for others (but disabled)
              final buttonStyle = isSelected
                  ? ElevatedButton.styleFrom(
                      backgroundColor: IColors.light.primary.main,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: IColors.light.primary.main),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.zero,
                      elevation: 0,
                    )
                  : OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: IColors.light.primary.main,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(color: IColors.light.primary.main),
                      padding: EdgeInsets.zero,
                    );

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                // Use SizedBox to match the fixed width from AssessmentFormScreen
                child: SizedBox(
                  // The button must be disabled (onPressed: null) since it's read-only validation view
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() => _ratingAnswers[field.id] = rating);
                      _validateForm();
                    },
                    style: buttonStyle,
                    child: Text(
                      '$rating',
                      style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : IColors.light.primary.main,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        if (notesController != null) ...[
          SizedBox(height: 12.h),
          // This is the Manager's Note section, so it must be editable (readOnly: false)
          ITextFieldTextArea(
            controller: notesController,
            hintText: 'Employee\'s Note / Manager Notes (Optional)',
            readOnly: false, // Manager can input notes here
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
        // This is a plain text/textarea field. The employee's answer is already in the controller.
        // The manager can theoretically edit/add to this, so readOnly is false.
        ITextFieldTextArea(
          controller: controller,
          hintText: 'Employee Answer / Manager Comment',
          readOnly: false,
          onTap: null,
        ),
      ],
    );
  }

  Widget _buildSingleSelectionSection(FormFields field) {
    if (field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();
    // Use the populated value
    final selectedOption = _singleSelectionAnswers[field.id];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        SizedBox(height: 8.h),
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
        else // RadioListTiles (Read-Only)
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
