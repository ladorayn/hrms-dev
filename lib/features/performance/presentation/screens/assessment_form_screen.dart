import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/competency_rating_field.dart';

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
  final Map<int, String?> _singleSelectionAnswers = {};
  final Map<int, int?> _ratingAnswers = {};
  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false;

  bool get _isFormReadOnly =>
      widget.assessment.status == "Completed" ||
      widget.assessment.status == "Completed!";

  List<FormFields> get _allFields {
    final detail = ref
        .read(performanceFormFieldsByGroupDetailProvider(
            formId: widget.assessment.formId ?? 14))
        .value;
    if (detail == null) return [];
    return detail.groups.expand((group) => group.fields).toList();
  }

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

    for (final group in formGroups) {
      for (final field in group.fields) {
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
            if (field.metadata?['is_note'] == true) {
              final controller = TextEditingController();
              controller.addListener(_validateForm);
              _notesControllers[field.id] = controller;
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
    }

    if (formAnswer != null) {
      _populateFieldsFromAnswers(formAnswer);
    }

    setState(() {
      _isStateInitialized = true;
    });
    _validateForm();
  }

  void _populateFieldsFromAnswers(FormAnswer formAnswer) {
    final answerFields = formAnswer.fields ?? [];
    if (answerFields.isEmpty) return;

    for (final answer in answerFields) {
      final fieldId = answer.fieldId;
      if (fieldId == null) continue;

      final field = _allFields.firstWhere(
        (f) => f.id == fieldId,
        orElse: () => const FormFields(
            id: -1, isRequired: false, order: 0, competencyLevels: []),
      );

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
    ;

    if (rating != null) _ratingAnswers[fieldId] = rating;

    if (answer.additionalData is Map<String, dynamic>) {
      final notes = (answer.additionalData as Map<String, dynamic>)['notes'];
      if (notes is String && _notesControllers.containsKey(fieldId)) {
        _notesControllers[fieldId]!.text = notes;
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
    if (answer.value is String) {
      _singleSelectionAnswers[fieldId] = answer.value as String;
    }
  }

  void _validateForm() {
    final formFields = _allFields;
    if (formFields.isEmpty) {
      setState(() => _isFormValid = false);
      return;
    }

    bool allRequiredFieldsAreValid = true;
    for (final field in formFields) {
      if (field.isRequired && !_isFormReadOnly) {
        bool isFieldValid = false;
        switch (field.type) {
          case 'checkbox':
            isFieldValid =
                _checkboxAnswers[field.id]?.values.contains(true) ?? false;
            break;
          case 'range':
            isFieldValid = _ratingAnswers[field.id] != null;
            break;
          case 'textarea':
          case 'text':
            isFieldValid =
                _notesControllers[field.id]?.text.trim().isNotEmpty ?? false;
            break;
          case 'select':
          case 'radio':
            isFieldValid = _singleSelectionAnswers[field.id] != null;
            break;
          default:
            isFieldValid = true;
        }
        if (!isFieldValid) {
          allRequiredFieldsAreValid = false;
          break;
        }
      }
    }
    setState(() => _isFormValid = allRequiredFieldsAreValid);
  }

  Future<void> _onSubmit(int statusSubmission) async {
    final List<SubmissionForm> submissions = [];

    _ratingAnswers.forEach((fieldId, rating) {
      final field = _allFields.firstWhere((f) => f.id == fieldId);
      submissions.add(SubmissionForm(
        fieldId: fieldId,
        value: rating.toString(),
        additionalData: field.metadata?['is_note'] == true
            ? {'notes': _notesControllers[fieldId]?.text ?? ''}
            : null,
      ));
    });

    _checkboxAnswers.forEach((fieldId, answers) {
      final selectedOptions = answers.entries
          .where((e) => e.value == true)
          .map((e) => e.key)
          .toList();
      submissions.add(SubmissionForm(fieldId: fieldId, value: selectedOptions));
    });

    _singleSelectionAnswers.forEach((fieldId, selectedOption) {
      if (selectedOption != null) {
        submissions
            .add(SubmissionForm(fieldId: fieldId, value: selectedOption));
      }
    });

    _notesControllers.forEach((fieldId, controller) {
      if (!_ratingAnswers.containsKey(fieldId)) {
        submissions
            .add(SubmissionForm(fieldId: fieldId, value: controller.text));
      }
    });

    final request = AssessmentFormRequest(
        submissions: submissions, status: statusSubmission);
    try {
      await ref.read(assessmentFormSubmissionProvider.notifier).submitForm(
          request: request, assessmentId: widget.assessment.id ?? 0);
      if (mounted) {
        ref.invalidate(assessmentListRProvider);
        showCustomToast(
            context, 'Form Submitted Successfully!', ToastType.success);
        context.go(RoutePaths.performance);
      }
    } catch (e) {
      if (mounted) {
        context.pop();
        showCustomToast(
            context, 'Submission Failed: ${e.toString()}', ToastType.error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final formDetailAsync = ref.watch(
        performanceFormFieldsByGroupDetailProvider(
            formId: widget.assessment.formId ?? 14));

    final formAnsweredAsync = ref.watch(performanceAssessmentAnswerProvider(
        request: AssessmentAnswerRequest(
      employeeSelfAssessment: "${widget.assessment.id}",
      formId: widget.assessment.formId,
    )));

    if (formDetailAsync.hasValue &&
        !formAnsweredAsync.isLoading &&
        !_isStateInitialized) {
      final detail = formDetailAsync.value!;
      final List<AssessmentAnswer>? answerList = formAnsweredAsync.value;
      final FormAnswer? firstAnswer =
          (answerList != null && answerList.isNotEmpty)
              ? answerList[0].data
              : null;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _initializeState(detail.groups, firstAnswer);
        }
      });
    }

    return Scaffold(
      appBar: IAppBar(title: "Self Assessment - ${widget.assessment.period}"),
      body: Column(
        children: [
          Expanded(
            child: formDetailAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
              data: (detail) {
                if (!_isStateInitialized || formAnsweredAsync.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return ListView.builder(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  itemCount: detail.groups.length,
                  itemBuilder: (context, groupIndex) {
                    final group = detail.groups[groupIndex];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildGroupHeader(group),
                        ...group.fields.map((field) => Padding(
                              padding: EdgeInsets.only(bottom: 16.h),
                              child: Container(
                                padding: EdgeInsets.all(12.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      color: IColors.light.grayscale.g20),
                                  color: Colors.white,
                                ),
                                child: _buildDynamicField(field),
                              ),
                            )),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    if (_isFormReadOnly) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        color: IColors.light.grayscale.g10,
        child: const Center(
          child: Text('This assessment is read-only.',
              style: TextStyle(color: Color(0xFF9E9E9E))),
        ),
      );
    }
    return IFooterButton(
      text: "Submit Self Assessment",
      onPressed: _isFormValid
          ? () => _showPopUpConfirmationSubmission(context, 2)
          : null,
      secondaryText: "Save as Draft",
      onSecondaryPressed: _isFormValid
          ? () => _showPopUpConfirmationSubmission(context, 1)
          : null,
    );
  }

  Widget _buildGroupHeader(FormFieldsGroup group) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h, top: 8.h),
      child: Text(
        group.name,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: IColors.light.primary.main,
            ),
      ),
    );
  }

  Widget _buildFieldHeader(FormFields field) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${field.label}', style: Theme.of(context).textTheme.titleMedium),
        if (field.description?.isNotEmpty ?? false)
          Padding(
            padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
            child: Text(field.description!,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF323232),
                    fontSize: 14.sp)),
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
        return Text('Unknown type: ${field.type}');
    }
  }

  Widget _buildCheckboxSection(FormFields field) {
    final answers = _checkboxAnswers[field.id];
    if (answers == null || field.options is! List)
      return const SizedBox.shrink();
    final options = (field.options as List).cast<String>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ...options.map((option) => CheckboxListTile(
              title: Text(option),
              value: answers[option] ?? false,
              onChanged: _isFormReadOnly
                  ? null
                  : (val) {
                      setState(() => answers[option] = val!);
                      _validateForm();
                    },
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
              activeColor: IColors.light.primary.main,
            )),
      ],
    );
  }

  Widget _buildRatingSection(FormFields field) {
    return CompetencyRatingField(
      field: field,
      selectedRating: _ratingAnswers[field.id],
      isDisabled: _isFormReadOnly,
      options:
          FieldOptionsRange.fromJson(field.options as Map<String, dynamic>),
      notesController: _notesControllers[field.id],
      onRatingChanged: (rating) {
        setState(() => _ratingAnswers[field.id] = rating);
        _validateForm();
      },
      validateForm: _validateForm,
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
            controller: controller, hintText: '', readOnly: _isFormReadOnly),
      ],
    );
  }

  Widget _buildSingleSelectionSection(FormFields field) {
    if (field.options is! List) return const SizedBox.shrink();
    final options = (field.options as List).cast<String>();
    final selected = _singleSelectionAnswers[field.id];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        if (field.type == 'select')
          DropdownButtonFormField<String>(
            value: selected,
            items: options
                .map((o) => DropdownMenuItem(value: o, child: Text(o)))
                .toList(),
            onChanged: _isFormReadOnly
                ? null
                : (val) {
                    setState(() => _singleSelectionAnswers[field.id] = val);
                    _validateForm();
                  },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r))),
          )
        else
          ...options.map((o) => RadioListTile<String>(
                title: Text(o),
                value: o,
                groupValue: selected,
                onChanged: _isFormReadOnly
                    ? null
                    : (val) {
                        setState(() => _singleSelectionAnswers[field.id] = val);
                        _validateForm();
                      },
                contentPadding: EdgeInsets.zero,
                activeColor: IColors.light.primary.main,
              )),
      ],
    );
  }

  Future<void> _showPopUpConfirmationSubmission(
      BuildContext context, int statusSubmission) {
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
                              _onSubmit(statusSubmission);
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
