import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/form_builder.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

typedef AnswerMap = Map<int, Map<String, bool>>;
typedef SelectionMap = Map<int, String?>;
typedef RatingMap = Map<int, int?>;
typedef NotesMap = Map<int, TextEditingController>;
typedef FieldUpdater = void Function(VoidCallback fn);

class SupervisorAssessmentFormScreen extends ConsumerStatefulWidget {
  final SupervisorAssessmentDetail assessment;
  final Assessor assessor;

  const SupervisorAssessmentFormScreen({
    super.key,
    required this.assessment,
    required this.assessor,
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

  bool get _isFormReadOnly => widget.assessor.statusLabel == "Completed";

  @override
  void dispose() {
    for (var controller in _notesControllers.values) {
      controller.removeListener(_validateForm);
      controller.dispose();
    }
    super.dispose();
  }

  void _initializeState(
      FormDetailResponse formGroups,
      List<SubmissionForm>? formAnswerSubmissions,
      List<FormFields> allFormFields) {
    if (_isStateInitialized) return;

    for (final group in formGroups.groups) {
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

    _populateFieldsFromAnswers(formAnswerSubmissions, allFormFields);

    _isStateInitialized = true;
    _validateForm();
  }

  void _populateFieldsFromAnswers(List<SubmissionForm>? formAnswerSubmissions,
      List<FormFields> allFormFields) {
    final answerFields = formAnswerSubmissions ?? [];

    if (answerFields.isEmpty) return;

    for (final answer in answerFields) {
      final fieldId = answer.fieldId;

      final field = allFormFields.firstWhere((f) {
        return f.id == fieldId;
      }, orElse: () => const FormFields(id: -1, isRequired: false, order: 0));

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

  void _populateCheckboxAnswer(int fieldId, SubmissionForm answer) {
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

  void _populateRatingAnswer(int fieldId, SubmissionForm answer) {
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
        if (_notesControllers.containsKey(fieldId)) {
          _notesControllers[fieldId]!.text = notes;
        }
      }
    }
  }

  void _populateTextAnswer(int fieldId, SubmissionForm answer) {
    final textValue = answer.value;
    if (textValue is String && _notesControllers.containsKey(fieldId)) {
      _notesControllers[fieldId]!.text = textValue;
    }
  }

  void _populateSingleSelectionAnswer(int fieldId, SubmissionForm answer) {
    final selectedOption = answer.value;
    if (selectedOption is String) {
      _singleSelectionAnswers[fieldId] = selectedOption;
    }
  }

  void _validateForm() {
    final formFieldsGroup = ref
        .read(performanceSupervisorAssessmentGetFormProvider(
            formId: widget.assessment.form?.id ?? 0))
        .value;

    List<FormFields> formFields = [];
    if (formFieldsGroup != null) {
      formFields =
          formFieldsGroup.groups.expand((group) => group.fields).toList();
    }

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
    final formFieldsGroup = ref
        .read(performanceSupervisorAssessmentGetFormProvider(
            formId: widget.assessment.form?.id ?? 0))
        .value;

    List<FormFields> allFieldsForSubmission = [];
    if (formFieldsGroup != null) {
      allFieldsForSubmission =
          formFieldsGroup.groups.expand((group) => group.fields).toList();
    }

    final submissions = FormSubmissionMapper.mapAnswersToSubmissions(
      checkboxAnswers: _checkboxAnswers,
      singleSelectionAnswers: _singleSelectionAnswers,
      ratingAnswers: _ratingAnswers,
      notesControllers: _notesControllers,
      allFields: allFieldsForSubmission,
      isRatingNum: true,
    );

    final request = AssessmentFormRequest(
        submissions: submissions, status: statusSubmission);
    try {
      await ref
          .read(supervisorAssessmentFormSubmissionProvider.notifier)
          .submitForm(
              request: request, assessmentId: widget.assessment.id ?? 0);

      if (mounted) {
        ref.invalidate(assessmentListRProvider);
        ref.invalidate(performanceSupervisorAssessmentsProvider);

        showCustomToast(context,
            'Supervisor Assessment Submitted Successfully!', ToastType.success);

        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //       content: Text('Supervisor Assessment Submitted Successfully!')),
        // );
        globalNavigatorKey.currentContext?.go(RoutePaths.performance);
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
    final formFieldsAsync = ref.watch(
        performanceSupervisorAssessmentGetFormProvider(
            formId: widget.assessment.form?.id ?? 0));

    final formAnswerAsync =
        ref.watch(performanceSupervisorAssessmentAnswerProvider(
            request: AssessmentAnswerRequest(
      employeeSelfAssessment: "${widget.assessment.id}",
      formId: widget.assessment.form?.id,
    )));

    List<SubmissionForm>? formAnsweredSubmissions;
    bool answersReady = false;

    if (formAnswerAsync.hasValue) {
      formAnsweredSubmissions = formAnswerAsync.value?.data;
      answersReady = true;
    } else if (formAnswerAsync.hasError) {
      formAnsweredSubmissions = null;
      answersReady = true;
    }

    if (formFieldsAsync.hasValue && answersReady && !_isStateInitialized) {
      final formGroups = formFieldsAsync.value!;

      final List<FormFields> allFormFields =
          formGroups.groups.expand((group) => group.fields).toList();

      if (allFormFields.isNotEmpty) {
        final List<SubmissionForm>? answersToPopulate = formAnsweredSubmissions;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          setState(() {
            _initializeState(formGroups, answersToPopulate, allFormFields);
          });
        });
      }
    }

    return Scaffold(
      appBar: IAppBar(title: "Supervisor Assessment"),
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
                  formGroups: formGroups.groups,
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
                        _showPopUpConfirmationSubmission(context, 2);
                      }
                    }
                  : null,
              secondaryText: "Save Draft",
              onSecondaryPressed: _isFormValid
                  ? () {
                      if (_isStateInitialized) {
                        _showPopUpConfirmationSubmission(context, 1);
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
