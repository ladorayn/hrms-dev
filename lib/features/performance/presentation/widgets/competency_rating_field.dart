import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';

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
    final textTheme = Theme.of(context).textTheme;
    final metadata = field.metadata ?? {};

    final bool isCompetencyLibrary =
        metadata['type'] == "use_competency_library";
    final String? competencyId = metadata['competency_id']?.toString();
    final String? dimension = metadata['dimension']?.toString();

    final competencyAsync =
        (isCompetencyLibrary && selectedRating != null && competencyId != null)
            ? ref.watch(performanceGetCompetencyProvider(
                competencyId: competencyId,
                dimension: dimension,
                level: selectedRating.toString(),
              ))
            : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title and Score Weight
        Row(
          children: [
            Text('${field.label}', style: textTheme.titleMedium),
            SizedBox(width: 5.w),
            if (metadata['score_weight'] != null)
              Text(
                '(${metadata['score_weight']}%)',
                style: textTheme.titleMedium
                    ?.copyWith(color: const Color(0xFF8E8E8E)),
              ),
          ],
        ),

        // Description logic
        Padding(
          padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
          child:
              _buildDescription(context, competencyAsync, isCompetencyLibrary),
        ),

        // Rating Buttons
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
                padding: EdgeInsets.symmetric(horizontal: 4.w),
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
          SizedBox(height: 12.h),
          ITextFieldTextArea(
            controller: notesController!,
            hintText: 'Notes...',
            readOnly: isDisabled,
            onChanged: (_) => validateForm(),
          ),
        ],
      ],
    );
  }

  Widget _buildDescription(BuildContext context,
      AsyncValue<CompetencyLevel>? asyncValue, bool isCompetency) {
    final textTheme = Theme.of(context).textTheme;
    final style = textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w400,
      color: const Color(0xFF323232),
      fontSize: 14.sp,
    );

    if (!isCompetency) {
      if (field.description == null || field.description!.isEmpty) {
        return const SizedBox.shrink();
      }
      return Text(field.description!, style: style);
    }

    if (asyncValue == null) {
      return const SizedBox.shrink();
    }

    return asyncValue.when(
      data: (compLevel) =>
          Text(compLevel.description ?? field.description ?? '', style: style),
      loading: () => const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      error: (e, __) => Text(e.toString(), style: style),
    );
  }
}
