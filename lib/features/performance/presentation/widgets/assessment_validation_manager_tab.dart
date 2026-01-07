import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart'; // REQUIRED
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart'; // REQUIRED
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/competency_rating_field.dart';

class AssessmentValidationFormTabManagerScreen extends ConsumerStatefulWidget {
  final int formId;
  final int employeeSelfAssessmentId;
  final AssessmentList assessment;
  final TeamMember memberData;

  const AssessmentValidationFormTabManagerScreen({
    super.key,
    required this.formId,
    required this.employeeSelfAssessmentId,
    required this.assessment,
    required this.memberData,
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

  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false;

  bool get _isValidationCompleted =>
      widget.memberData.statusLabel == "Validated";

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

    _populateFieldsFromAnswers(formAnswer);

    if (mounted) {
      setState(() {
        _isStateInitialized = true;
      });
      _validateForm();
    }
  }

  void _populateFieldsFromAnswers(FormAnswer? formAnswer) {
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

    if (answer.additionalData is Map<String, dynamic>) {
      final additionalData = answer.additionalData as Map<String, dynamic>;
      final notes = additionalData['notes'];

      if (notes is String) {
        final field = _allFields.firstWhere((f) => f.id == fieldId);
        final hasNotes = field.metadata?['is_note'] == true;

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

    // Validation logic checks manager's required inputs.
    // If the validation is completed, no input is required.
    if (!_isValidationCompleted) {
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
    } else {
      allRequiredFieldsAreValid = true;
    }

    if (mounted) {
      setState(() {
        _isFormValid = allRequiredFieldsAreValid;
      });
    }
  }

  Future<void> _onSubmit() async {
    if (_isValidationCompleted) return;

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

    final request = AssessmentFormValidateRequest(submissions: submissions);
    try {
      await ref
          .read(assessmentFormValidateSubmissionProvider.notifier)
          .submitForm(
              request: request,
              assessmentId: widget.employeeSelfAssessmentId ?? 0);
      if (mounted) {
        ref.invalidate(assessmentListRProvider);
        showCustomToast(
            context, 'Please fill all required fields.', ToastType.success);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(content: Text('Form Submitted Successfully!')),
        // );
        context.go(RoutePaths.performance);
      }
    } catch (e) {
      if (mounted) {
        context.pop();
        showCustomToast(
            context, 'Submission Failed: ${e.toString()}', ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text('Submission Failed: ${e.toString()}')),
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final formFieldsAsync =
        ref.watch(performanceFormFieldsByGroupProvider(formId: widget.formId));

    final formAnsweredAsync = ref.watch(performanceAssessmentAnswerProvider(
        request: AssessmentAnswerRequest(
      employeeSelfAssessment: "${widget.employeeSelfAssessmentId}",
      formId: widget.formId,
    )));

    if (formFieldsAsync.hasValue &&
        formAnsweredAsync.hasValue &&
        !_isStateInitialized) {
      final formGroups = formFieldsAsync.value!;

      final answerList = formAnsweredAsync.value;

      final FormAnswer? firstAnswer =
          answerList != null && answerList.isNotEmpty
              ? answerList[0].data
              : null;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _initializeState(formGroups, firstAnswer);
      });
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        children: [
          Expanded(
            child: formFieldsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) =>
                  Center(child: Text('Error (Fields): $err')),
              data: (formGroups) {
                if (!_isStateInitialized) {
                  return formAnsweredAsync.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, stack) =>
                        Center(child: Text('Error (Answers): $err')),
                    data: (_) =>
                        const Center(child: CircularProgressIndicator()),
                  );
                }

                return ListView.builder(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
          // ⭐ CONDITIONAL FOOTER BUTTON
          if (!_isValidationCompleted)
            IFooterButton(
              text: "Validate Self Assessment",
              onPressed: _isFormValid ? _onSubmit : null,
            )
          else
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              color: IColors.light.grayscale.g10,
              child: Center(
                child: Text(
                  'This validation is complete and read-only.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: IColors.light.grayscale.g60,
                      ),
                ),
              ),
            ),
        ],
      ),
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

  // Inside _AssessmentValidationFormTabManagerScreenState

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    final ValueChanged<bool?>? handler =
        _isValidationCompleted ? null : onChanged;

    return InkWell(
      onTap: handler != null ? () => handler(!value) : null,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: handler,
            visualDensity: VisualDensity.compact,
            activeColor: handler == null
                ? IColors.light.grayscale.g30
                : IColors.light.primary.main,
            checkColor: handler == null && value
                ? IColors.light.primary.main
                : Colors.white,
          ),
          Expanded(
              child: Text(title,
                  style: TextStyle(
                      color: handler == null
                          ? IColors.light.grayscale.g60
                          : Colors.black))),
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
            value: answers[option] ?? false,
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
    final bool isDisabled = _isValidationCompleted;

    if (field.options == null || field.options is! Map<String, dynamic>) {
      return const SizedBox.shrink();
    }

    final options =
        FieldOptionsRange.fromJson(field.options as Map<String, dynamic>);

    return CompetencyRatingField(
      field: field,
      selectedRating: selectedRating,
      isDisabled: isDisabled,
      options: options,
      notesController: notesController,
      onRatingChanged: (rating) {
        setState(() {
          _ratingAnswers[field.id] = rating;
        });
        _validateForm();
      },
      validateForm: _validateForm,
    );
  }

  Widget _buildTextAreaSection(FormFields field) {
    final controller = _notesControllers[field.id];
    final bool isDisabled = _isValidationCompleted;

    if (controller == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ITextFieldTextArea(
          controller: controller,
          hintText: 'Employee Answer / Manager Comment',
          readOnly: isDisabled,
          onTap: isDisabled ? () {} : null,
        ),
      ],
    );
  }

  Widget _buildSingleSelectionSection(FormFields field) {
    if (field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();
    final selectedOption = _singleSelectionAnswers[field.id];

    final bool isDisabled = _isValidationCompleted;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        SizedBox(height: 8.h),
        // DropdownButtonFormField
        if (field.type == 'select')
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
            ),
            value: selectedOption,
            // Show selected option clearly when disabled
            hint: Text(selectedOption ?? 'N/A',
                style: TextStyle(
                    color: isDisabled
                        ? IColors.light.grayscale.g60
                        : Colors.black)),
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            // ⭐ CONDITIONALLY ENABLE onChanged
            onChanged: isDisabled
                ? null
                : (String? newValue) {
                    // Assuming validation form allows manager to select an option
                    setState(() {
                      _singleSelectionAnswers[field.id] = newValue;
                    });
                    _validateForm();
                  },
            isExpanded: true,
            style: TextStyle(
              color: isDisabled ? IColors.light.grayscale.g60 : Colors.black,
            ),
            dropdownColor: Colors.white,
            iconDisabledColor: IColors.light.grayscale.g30,
            // ⭐ CONDITIONALLY SET iconEnabledColor
            iconEnabledColor: isDisabled
                ? IColors.light.grayscale.g30
                : IColors.light.grayscale.g80,
          )
        else
          // RadioListTile
          ...options.map((option) {
            return RadioListTile<String>(
              title: Text(option,
                  style: TextStyle(
                      color: isDisabled
                          ? IColors.light.grayscale.g60
                          : Colors.black)),
              value: option,
              groupValue: selectedOption,
              // ⭐ CONDITIONALLY ENABLE onChanged
              onChanged: isDisabled
                  ? null
                  : (String? newValue) {
                      // Assuming validation form allows manager to select an option
                      setState(() {
                        _singleSelectionAnswers[field.id] = newValue;
                      });
                      _validateForm();
                    },
              dense: true,
              contentPadding: EdgeInsets.zero,
              activeColor: IColors.light.primary.main,
            );
          }).toList(),
      ],
    );
  }
}
