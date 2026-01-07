import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/competency_rating_field.dart'; // For SubmissionForm

typedef AnswerMap = Map<int, Map<String, bool>>;
typedef SelectionMap = Map<int, String?>;
typedef RatingMap = Map<int, int?>;
typedef NotesMap = Map<int, TextEditingController>;
typedef FieldUpdater = void Function(VoidCallback fn);

class AssessmentFormBuilder extends StatelessWidget {
  final List<FormFieldsGroup> formGroups;
  final bool isReadOnly;

  final AnswerMap checkboxAnswers;
  final SelectionMap singleSelectionAnswers;
  final RatingMap ratingAnswers;
  final NotesMap notesControllers;

  final FieldUpdater updateParentState;
  final VoidCallback validateForm;

  const AssessmentFormBuilder({
    super.key,
    required this.formGroups,
    required this.isReadOnly,
    required this.checkboxAnswers,
    required this.singleSelectionAnswers,
    required this.ratingAnswers,
    required this.notesControllers,
    required this.updateParentState,
    required this.validateForm,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: formGroups.length,
      itemBuilder: (context, groupIndex) {
        final group = formGroups[groupIndex];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildGroupHeader(context, group),
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
                  child: _buildDynamicField(context, field),
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }

  Widget _buildGroupHeader(BuildContext context, FormFieldsGroup group) {
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

  Widget _buildFieldHeader(BuildContext context, FormFields field) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('${field.label}', style: textTheme.titleMedium),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '(${field.metadata?['score_weight']}%)',
              style: textTheme.titleMedium?.copyWith(color: Color(0xFF8E8E8E)),
            ),
          ],
        ),
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
        // Row(
        //   children: [
        //     SvgPicture.asset(
        //       IAssets.helpDesk,
        //     ),
        //     SizedBox(width: 8.w),
        //     Text('Deskripsi Penilaian',
        //         style: textTheme.titleMedium?.copyWith(
        //           color: IColors.light.primary.main,
        //           fontWeight: FontWeight.w600,
        //           fontSize: 14.sp,
        //         )),
        //   ],
        // ),
        SizedBox(height: 12.h),
      ],
    );
  }

  Widget _buildDynamicField(BuildContext context, FormFields field) {
    switch (field.type) {
      case 'checkbox':
        return _buildCheckboxSection(context, field);
      case 'range':
        return _buildRatingSection(context, field);
      case 'textarea':
      case 'text':
        return _buildTextAreaSection(context, field);
      case 'select':
      case 'radio':
        return _buildSingleSelectionSection(context, field);
      default:
        return Text('Unknown field type: ${field.type}');
    }
  }

  Widget _buildCustomCheckbox({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    final ValueChanged<bool?>? handler = isReadOnly ? null : onChanged;

    return InkWell(
      onTap: handler != null ? () => handler(!value) : null,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: handler,
            visualDensity: VisualDensity.compact,
            activeColor: isReadOnly
                ? IColors.light.grayscale.g30
                : IColors.light.primary.main,
          ),
          Expanded(
              child: Text(title,
                  style: TextStyle(
                    color:
                        isReadOnly ? IColors.light.grayscale.g60 : Colors.black,
                  ))),
        ],
      ),
    );
  }

  Widget _buildCheckboxSection(BuildContext context, FormFields field) {
    final answers = checkboxAnswers[field.id];

    if (answers == null || field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(context, field),
        ...options.map((option) {
          return _buildCustomCheckbox(
            title: option,
            value: answers[option] ?? false,
            onChanged: (bool? value) {
              updateParentState(() {
                answers[option] = value!;
              });
              validateForm();
            },
          );
        }).toList(),
      ],
    );
  }

  Widget _buildRatingSection(BuildContext context, FormFields field) {
    final selectedRating = ratingAnswers[field.id];
    final notesController = notesControllers[field.id];

    if (field.options == null || field.options is! Map<String, dynamic>) {
      return const SizedBox.shrink();
    }

    final options =
        FieldOptionsRange.fromJson(field.options as Map<String, dynamic>);

    return CompetencyRatingField(
      field: field,
      selectedRating: selectedRating,
      isDisabled: isReadOnly,
      options: options,
      notesController: notesController,
      onRatingChanged: (rating) {
        updateParentState(() {
          ratingAnswers[field.id] = rating;
        });
        validateForm();
      },
      validateForm: validateForm,
    );
  }

  Widget _buildTextAreaSection(BuildContext context, FormFields field) {
    final controller = notesControllers[field.id];
    final bool isDisabled = isReadOnly;

    if (controller == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(context, field),
        ITextFieldTextArea(
          controller: controller,
          hintText: '',
          readOnly: isDisabled,
          onChanged: (_) => validateForm(),
        ),
      ],
    );
  }

  Widget _buildSingleSelectionSection(BuildContext context, FormFields field) {
    if (field.options == null || field.options is! List) {
      return const SizedBox.shrink();
    }

    final options = (field.options as List).cast<String>();
    final selectedOption = singleSelectionAnswers[field.id];
    final bool isDisabled = isReadOnly;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(context, field),
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
            hint: const Text('Select an option'),
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: isDisabled
                ? null
                : (String? newValue) {
                    updateParentState(() {
                      singleSelectionAnswers[field.id] = newValue;
                    });
                    validateForm();
                  },
            isExpanded: true,
            style: TextStyle(
              color: isDisabled ? IColors.light.grayscale.g60 : Colors.black,
            ),
            iconDisabledColor: IColors.light.grayscale.g30,
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
                    color:
                        isDisabled ? IColors.light.grayscale.g60 : Colors.black,
                  )),
              value: option,
              groupValue: selectedOption,
              onChanged: isDisabled
                  ? null
                  : (String? newValue) {
                      updateParentState(() {
                        singleSelectionAnswers[field.id] = newValue;
                      });
                      validateForm();
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

// --- Submission Logic Utility ---

class FormSubmissionMapper {
  static List<SubmissionForm> mapAnswersToSubmissions({
    required AnswerMap checkboxAnswers,
    required SelectionMap singleSelectionAnswers,
    required RatingMap ratingAnswers,
    required NotesMap notesControllers,
    required List<FormFields> allFields,
    bool isRatingNum = false,
  }) {
    final List<SubmissionForm> submissions = [];

    ratingAnswers.forEach((fieldId, rating) {
      final field = allFields.firstWhere((f) => f.id == fieldId);
      final hasNotes = field.metadata?['is_note'] == true;

      submissions.add(SubmissionForm(
        fieldId: fieldId,
        value: isRatingNum ? rating : rating.toString(),
        additionalData: hasNotes
            ? {
                'notes': notesControllers[fieldId]?.text ?? '',
              }
            : null,
      ));
    });

    checkboxAnswers.forEach((fieldId, answers) {
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

    singleSelectionAnswers.forEach((fieldId, selectedOption) {
      if (selectedOption != null) {
        submissions.add(SubmissionForm(
          fieldId: fieldId,
          value: selectedOption,
        ));
      }
    });

    notesControllers.forEach((fieldId, controller) {
      if (!ratingAnswers.containsKey(fieldId) && controller.text.isNotEmpty) {
        submissions.add(SubmissionForm(
          fieldId: fieldId,
          value: controller.text,
        ));
      }
    });

    return submissions;
  }
}
