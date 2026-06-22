import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldDropdownAttendanceBottomSheet extends ITextFieldBase {
  final List<String> options;
  final Function(String selectedOption) onOptionSelected;

  ITextFieldDropdownAttendanceBottomSheet({
    super.key,
    super.controller,
    super.label,
    super.labelStyle,
    super.subLabel,
    super.subLabelStyle,
    super.hintText,
    super.validator,
    super.isRequired,
    super.errorText,
    required this.options,
    required this.onOptionSelected,
  }) : super(
          readOnly: false,
          suffixIcon: const Icon(Icons.keyboard_arrow_down),
          borderColor: IColors.light.grayscale.g30,
        );

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final resolvedHintText = hintText ?? l10n.coreSelect;
    final textField = ITextFieldBase(
      controller: controller,
      label: label,
      labelStyle: labelStyle,
      subLabel: subLabel,
      subLabelStyle: subLabelStyle,
      hintText: resolvedHintText,
      validator: validator,
      isRequired: isRequired,
      errorText: errorText,
      readOnly: readOnly,
      suffixIcon: suffixIcon,
      borderColor: borderColor,
    );
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        _showOptionsBottomSheet(context);
      },
      child: AbsorbPointer(
        child: textField,
      ),
    );
  }

  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (modalContext) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: IColors.light.primary.main,
                      ),
                ),
                Text(
                  subLabel,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 16.h),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      final option = options[index];
                      return GestureDetector(
                        onTap: () {
                          onOptionSelected(option);
                          controller?.text = option;
                          Navigator.pop(modalContext);
                        },
                        child: Text(option),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
