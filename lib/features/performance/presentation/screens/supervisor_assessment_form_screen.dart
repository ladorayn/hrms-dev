import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/form_builder.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart'; // NEW INPUT MODEL
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

typedef AnswerMap = Map<int, Map<String, bool>>;
typedef SelectionMap = Map<int, String?>;
typedef RatingMap = Map<int, int?>;
typedef NotesMap = Map<int, TextEditingController>;
typedef FieldUpdater = void Function(VoidCallback fn);

class SupervisorAssessmentFormScreen extends ConsumerStatefulWidget {
  final SupervisorAssessment assessment;

  const SupervisorAssessmentFormScreen({
    super.key,
    required this.assessment,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SupervisorAssessmentFormScreenState();
}

class _SupervisorAssessmentFormScreenState
    extends ConsumerState<SupervisorAssessmentFormScreen> {
  final Map<int, Map<String, bool>> _checkboxAnswers = {};
  final Map<int, String?> _singleSelectionAnswers = {};
  final Map<int, int?> _ratingAnswers = {};
  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false;

  bool get _isFormReadOnly => widget.assessment.statusLabel == "Completed";

  int? get _assessedEmployeeId => widget.assessment.user?.id;

  List<FormFields> get _allFields {
    final formFieldsGroup = ref
        .read(performanceFormFieldsByGroupProvider(
            formId: widget.assessment.form?.id ?? 0))
        .value;
    if (formFieldsGroup == null) return [];
    return formFieldsGroup.expand((group) => group.fields).toList();
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
    }

    _populateFieldsFromAnswers(formAnswer);

    _isStateInitialized = true;
    _validateForm();
  }

  void _populateFieldsFromAnswers(FormAnswer? formAnswer) {
    final answerData = formAnswer;

    final answerFields = answerData != null ? answerData.fields ?? [] : [];

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

    setState(() {
      _isFormValid = allRequiredFieldsAreValid;
    });
  }

  Future<void> _onSubmit(int statusSubmission) async {
    final submissions = FormSubmissionMapper.mapAnswersToSubmissions(
      checkboxAnswers: _checkboxAnswers,
      singleSelectionAnswers: _singleSelectionAnswers,
      ratingAnswers: _ratingAnswers,
      notesControllers: _notesControllers,
      allFields: _allFields,
    );

    // final request = AssessmentFormRequest(
    //     submissions: submissions, status: statusSubmission);
    // try {
    //   // ⭐ NEW: Use the supervisor/validation submission provider
    //   await ref
    //       .read(assessmentFormValidateSubmissionProvider.notifier)
    //       .submitForm(
    //           request: request, assessmentId: widget.assessment.id ?? 0);
    //
    //   if (mounted) {
    //     // Invalidate both lists since a supervisor action might affect both
    //     ref.invalidate(assessmentListRProvider);
    //     ref.invalidate(performanceSupervisorAssessmentsProvider);
    //
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //           content: Text('Supervisor Assessment Submitted Successfully!')),
    //     );
    //     context.go(RoutePaths.performance);
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
    final employeeName = widget.assessment.user?.name ?? 'Employee N/A';
    final formName = widget.assessment.form?.name ?? 'Assessment Form';

    final formFieldsAsync = ref.watch(performanceFormFieldsByGroupProvider(
        formId: widget.assessment.form?.id ?? 0));

    final formAnswered = ref
        .watch(performanceAssessmentAnswerProvider(
            request: AssessmentAnswerRequest(
          employeeSelfAssessment: "${widget.assessment.id}",
          formId: widget.assessment.form?.id,
        )))
        .value;

    if (formFieldsAsync.hasValue &&
        formAnswered != null &&
        !_isStateInitialized) {
      final formGroups = formFieldsAsync.value!;

      final FormAnswer? firstAnswer =
          formAnswered.isNotEmpty ? formAnswered[0].data : null;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _initializeState(formGroups, firstAnswer);
        });
      });
    }

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment - $employeeName"),
      body: Column(
        children: [
          Expanded(
            child: formFieldsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
              data: (formGroups) {
                if (!_isStateInitialized) {
                  return const Center(child: CircularProgressIndicator());
                }
                return AssessmentFormBuilder(
                  formGroups: formGroups,
                  isReadOnly: _isFormReadOnly,
                  checkboxAnswers: _checkboxAnswers,
                  singleSelectionAnswers: _singleSelectionAnswers,
                  ratingAnswers: _ratingAnswers,
                  notesControllers: _notesControllers,
                  updateParentState: (fn) => setState(fn),
                  validateForm: _validateForm,
                );
              },
            ),
          ),
          // Conditional Footer Button
          if (!_isFormReadOnly)
            IFooterButton(
              text: "Validate Assessment",
              onPressed: _isFormValid
                  ? () {
                      if (_isStateInitialized) {
                        _showPopUpConfirmationSubmission(
                            context, 2); // Status 2 for submission
                      }
                    }
                  : null,
              secondaryText: "Save Draft",
              onSecondaryPressed: _isFormValid
                  ? () {
                      if (_isStateInitialized) {
                        _showPopUpConfirmationSubmission(
                            context, 1); // Status 1 for draft
                      }
                    }
                  : null,
            )
          else
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              color: IColors.light.grayscale.g10,
              child: Center(
                child: Text(
                  'This assessment has been completed/validated and is read-only.',
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

  Future<void> _showPopUpConfirmationSubmission(
      BuildContext context, int statusSubmission) {
    final textTheme = Theme.of(context).textTheme;
    final buttonText =
        statusSubmission == 2 ? "Submit Validation" : "Save Draft";

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
                  statusSubmission == 2
                      ? 'Are you sure you want to submit this validation?'
                      : 'Are you sure you want to save this draft?',
                  textAlign: TextAlign.center,
                  style: textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 16.h),
                Text(
                  statusSubmission == 2
                      ? "Once submitted, you won’t be able to make any changes."
                      : "You can continue editing the draft later.",
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
                              buttonText,
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
