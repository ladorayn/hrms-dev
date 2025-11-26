import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

class AssessmentTabFormManagerScreen extends ConsumerStatefulWidget {
  // 1. Add the isReadOnly property
  final bool isReadOnly;

  const AssessmentTabFormManagerScreen({
    super.key,
    // Require the isReadOnly property
    required this.isReadOnly,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AssessmentTabFormManagerScreenState();
}

// 1. Add the Mixin here
class _AssessmentTabFormManagerScreenState
    extends ConsumerState<AssessmentTabFormManagerScreen>
    with AutomaticKeepAliveClientMixin {
  final Map<int, Map<String, bool>> _checkboxAnswers = {};
  final Map<int, int?> _ratingAnswers = {};
  final Map<int, TextEditingController> _notesControllers = {};

  bool _isStateInitialized = false;
  bool _isFormValid = false; // Still needed for validation logic if required

  // 2. Override wantKeepAlive to true
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

    // --- Initialization logic remains the same (assuming this fetches saved data) ---
    for (final field in fields) {
      switch (field.type) {
        case 'checkbox':
          final optionsMap = <String, bool>{};
          if (field.options is List) {
            for (final option in (field.options as List).cast<String>()) {
              // Assuming logic for checking saved value is applied here later
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

    // Update state to prevent re-initialization and show the UI
    if (mounted) {
      setState(() {
        _isStateInitialized = true;
      });
      _validateForm();
    }
  }

  void _validateForm() {
    // Validation logic can be simplified or skipped if always read-only,
    // but keeping it for consistency if the form could be used for self-entry later.
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
        // ... (existing validation logic)
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

    if (mounted) {
      setState(() {
        _isFormValid = allRequiredFieldsAreValid;
      });
    }
  }

  Future<void> _onSubmit() async {
    // Since this tab is read-only, _onSubmit should generally be empty or removed.
    // Keeping the original structure but guarding against accidental execution.
    if (widget.isReadOnly) return;

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
  }

  @override
  Widget build(BuildContext context) {
    // 3. Call super.build(context)
    super.build(context);

    final formFieldsAsync =
        ref.watch(performanceFormFieldsProvider(formId: 1 ?? 0));

    // 4. Handle Data Initialization inside build using whenData
    formFieldsAsync.whenData((fields) {
      if (!_isStateInitialized) {
        // Use microtask to avoid calling setState during build
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
              // 5. Guard: Do not build list if state isn't ready (prevents shrinking/null errors)
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
        // No footer button is needed here since it's read-only
        if (widget.isReadOnly)
          Container(
            padding: EdgeInsets.all(16.w),
            color: Colors.white,
            child: Text(
                'This is the employee\'s submitted assessment (Read-Only).',
                style: TextStyle(color: IColors.light.grayscale.g60)),
          ),
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
    // Disable interaction if read-only
    final ValueChanged<bool?>? handler = widget.isReadOnly ? null : onChanged;

    return InkWell(
      onTap: handler != null ? () => handler(!value) : null,
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: handler,
            visualDensity: VisualDensity.compact,
            // Visually disable the checkbox if read-only
            activeColor: handler == null
                ? IColors.light.grayscale.g30
                : IColors.light.primary.main,
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
    final bool isDisabled = widget.isReadOnly;

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
                  : (isDisabled ? IColors.light.grayscale.g10 : Colors.white),
              foregroundColor:
                  isSelected ? Colors.white : IColors.light.primary.main,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: isDisabled
                        ? IColors.light.grayscale.g30
                        : IColors.light.primary.main),
                borderRadius: BorderRadius.circular(8),
              ),
              // Dim the button if disabled
              elevation: isDisabled ? 0 : 2,
            );

            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: ElevatedButton(
                  onPressed: isDisabled
                      ? null
                      : () {
                          setState(() => _ratingAnswers[field.id] = rating);
                          _validateForm();
                        },
                  style: buttonStyle,
                  child: Text('$rating',
                      style: TextStyle(
                          color: isDisabled
                              ? IColors.light.grayscale.g60
                              : (isSelected
                                  ? Colors.white
                                  : IColors.light.primary.main))),
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
            readOnly: isDisabled, // Apply read-only here
          ),
        ],
      ],
    );
  }

  Widget _buildTextAreaSection(FormFields field) {
    final controller = _notesControllers[field.id];
    final bool isDisabled = widget.isReadOnly;

    // If controller is null, return a placeholder or loader instead of shrinking
    if (controller == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldHeader(field),
        ITextFieldTextArea(
          controller: controller,
          hintText: '',
          readOnly: isDisabled, // Apply read-only here
          // FIX: Explicitly set onTap to null to prevent focus/keyboard pop-up
          // This should prevent the field from capturing focus when tapped.
          onTap: isDisabled ? () {} : null,
        ),
      ],
    );
  }
}
