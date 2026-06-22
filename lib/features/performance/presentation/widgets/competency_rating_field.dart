import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';

class CompetencyRatingField extends ConsumerWidget {
  final FormFields field;
  final int? selectedRating;
  final bool isDisabled;
  final FieldOptionsRange options;
  final TextEditingController? notesController;
  final Function(int) onRatingChanged;
  final VoidCallback validateForm;

  const CompetencyRatingField({
    super.key,
    required this.field,
    required this.selectedRating,
    required this.isDisabled,
    required this.options,
    this.notesController,
    required this.onRatingChanged,
    required this.validateForm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final metadata = field.metadata ?? {};

    String currentDescription = field.description ?? '';

    final levels = field.competencyLevels;

    if (selectedRating != null && levels != null && levels.isNotEmpty) {
      final matchedLevel = levels.firstWhere(
        (element) => element.level == selectedRating.toString(),
        orElse: () => const CompetencyLevels(),
      );

      if (matchedLevel.description != null &&
          matchedLevel.description!.isNotEmpty) {
        currentDescription = matchedLevel.description!;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: Text('${field.label}', style: textTheme.titleMedium)),
            if (metadata['score_weight'] != null)
              Text(
                '(${metadata['score_weight']}%)',
                style: textTheme.titleMedium
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
          ],
        ),
        if (currentDescription.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 4.h, bottom: 12.h),
            child: Text(
              currentDescription,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF323232),
                fontSize: 14.sp,
              ),
            ),
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(options.max - options.min + 1, (index) {
              final rating = options.min + index;
              final isSelected = rating == selectedRating;

              final buttonStyle = ElevatedButton.styleFrom(
                backgroundColor: isSelected
                    ? IColors.light.primary.main
                    : (isDisabled ? IColors.light.grayscale.g10 : Colors.white),
                foregroundColor:
                    isSelected ? Colors.white : IColors.light.primary.main,
                minimumSize: Size(45.w, 40.h),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isDisabled
                          ? IColors.light.grayscale.g30
                          : IColors.light.primary.main),
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: isDisabled ? 0 : 2,
              );

              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: ElevatedButton(
                  onPressed: isDisabled ? null : () => onRatingChanged(rating),
                  style: buttonStyle,
                  child: Text('$rating'),
                ),
              );
            }),
          ),
        ),
        if (notesController != null) ...[
          SizedBox(height: 16.h),
          ITextFieldTextArea(
            controller: notesController!,
            hintText: l10n.performanceAddComments,
            readOnly: isDisabled,
            onChanged: (_) => validateForm(),
          ),
        ],
      ],
    );
  }
}
