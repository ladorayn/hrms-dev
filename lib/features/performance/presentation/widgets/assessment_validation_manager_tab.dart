import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
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
    final detail = ref
        .read(performanceFormFieldsByGroupDetailProvider(formId: widget.formId))
        .value;
    if (detail == null) return [];
    return detail.groups.expand((group) => group.fields).toList();
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
    if (currentAnswers == null || answer.value is! List) return;
    for (final option in (answer.value as List).cast<String>()) {
      if (currentAnswers.containsKey(option)) currentAnswers[option] = true;
    }
  }

  void _populateRatingAnswer(int fieldId, FieldsAnswer answer) {
    int? rating = answer.value is String
        ? int.tryParse(answer.value)
        : (answer.value is int ? answer.value : null);
    if (rating != null) _ratingAnswers[fieldId] = rating;

    if (answer.additionalData is Map<String, dynamic>) {
      final notes = (answer.additionalData as Map<String, dynamic>)['notes'];
      if (notes is String && _notesControllers.containsKey(fieldId)) {
        _notesControllers[fieldId]!.text = notes;
      }
    }
  }

  void _populateTextAnswer(int fieldId, FieldsAnswer answer) {
    if (answer.value is String && _notesControllers.containsKey(fieldId)) {
      _notesControllers[fieldId]!.text = answer.value;
    }
  }

  void _populateSingleSelectionAnswer(int fieldId, FieldsAnswer answer) {
    if (answer.value is String) _singleSelectionAnswers[fieldId] = answer.value;
  }

  void _validateForm() {
    final formFields = _allFields;
    if (formFields.isEmpty) {
      if (mounted) setState(() => _isFormValid = false);
      return;
    }

    bool allRequiredFieldsAreValid = true;
    if (!_isValidationCompleted) {
      for (final field in formFields) {
        if (field.isRequired) {
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
    }

    if (mounted) setState(() => _isFormValid = allRequiredFieldsAreValid);
  }

  Future<void> _onSubmit() async {
    if (_isValidationCompleted) return;
    final l10n = AppLocalizations.of(context)!;
    final List<SubmissionForm> submissions = [];

    _checkboxAnswers.forEach((fieldId, answers) {
      final selected =
          answers.entries.where((e) => e.value).map((e) => e.key).toList();
      submissions.add(SubmissionForm(
          fieldId: fieldId, value: selected, additionalData: selected));
    });

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

    _singleSelectionAnswers.forEach((fieldId, val) {
      if (val != null) {
        submissions.add(SubmissionForm(fieldId: fieldId, value: val));
      }
    });

    _notesControllers.forEach((fieldId, controller) {
      if (!_ratingAnswers.containsKey(fieldId)) {
        submissions
            .add(SubmissionForm(fieldId: fieldId, value: controller.text));
      }
    });

    final request = AssessmentFormValidateRequest(submissions: submissions);
    try {
      await ref
          .read(assessmentFormValidateSubmissionProvider.notifier)
          .submitForm(
              request: request, assessmentId: widget.employeeSelfAssessmentId);
      if (mounted) {
        ref.invalidate(assessmentListRProvider);
        showCustomToast(
            context, l10n.performanceValidationSuccessful, ToastType.success);
        context.go(RoutePaths.performance);
      }
    } catch (e) {
      if (mounted) {
        showCustomToast(
            context, l10n.performanceFailed(e.toString()), ToastType.error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;

    final formDetailAsync = ref.watch(
        performanceFormFieldsByGroupDetailProvider(formId: widget.formId));

    final formAnsweredAsync = ref.watch(performanceAssessmentAnswerProvider(
        request: AssessmentAnswerRequest(
      employeeSelfAssessment: "${widget.employeeSelfAssessmentId}",
      formId: widget.formId,
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          Expanded(
            child: formDetailAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) =>
                  Center(child: Text(l10n.performanceError(err.toString()))),
              data: (detail) {
                // Also wait for answers before showing the form
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
    final l10n = AppLocalizations.of(context)!;
    if (_isValidationCompleted) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        color: IColors.light.grayscale.g10,
        child: Center(
          child: Text(l10n.performanceValidationCompleteReadOnly,
              style: TextStyle(color: IColors.light.grayscale.g60)),
        ),
      );
    }
    return IFooterButton(
      text: l10n.performanceValidateSelfAssessment,
      onPressed: _isFormValid ? _onSubmit : null,
    );
  }

  // --- Widget Builders ---

  Widget _buildGroupHeader(FormFieldsGroup group) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(group.name,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold, color: IColors.light.primary.main)),
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
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xFF323232))),
          ),
        SizedBox(height: 12.h),
      ],
    );
  }

  Widget _buildDynamicField(FormFields field) {
    final l10n = AppLocalizations.of(context)!;
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
        return Text(l10n.performanceUnknownType(field.type ?? ''));
    }
  }

  Widget _buildCheckboxSection(FormFields field) {
    final answers = _checkboxAnswers[field.id];
    if (answers == null || field.options is! List) {
      return const SizedBox.shrink();
    }
    final options = (field.options as List).cast<String>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ...options.map((option) => CheckboxListTile(
              title: Text(option,
                  style: TextStyle(
                      color: _isValidationCompleted
                          ? IColors.light.grayscale.g60
                          : Colors.black)),
              value: answers[option] ?? false,
              onChanged: _isValidationCompleted
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
      isDisabled: _isValidationCompleted,
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
    final l10n = AppLocalizations.of(context)!;
    final controller = _notesControllers[field.id];
    if (controller == null) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ITextFieldTextArea(
          controller: controller,
          hintText: l10n.performanceEnterComment,
          readOnly: _isValidationCompleted,
        ),
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
            onChanged: _isValidationCompleted
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
                title: Text(o,
                    style: TextStyle(
                        color: _isValidationCompleted
                            ? IColors.light.grayscale.g60
                            : Colors.black)),
                value: o,
                groupValue: selected,
                onChanged: _isValidationCompleted
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
}
