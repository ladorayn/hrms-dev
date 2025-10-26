import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldDropdownBottomSheet extends ITextFieldBase {
  final List<String> options;
  final Function(String selectedOption) onOptionSelected;

  ITextFieldDropdownBottomSheet({
    super.key,
    super.controller,
    super.label,
    super.enabled,
    super.labelStyle,
    super.hintText = "Select",
    super.validator,
    super.isRequired,
    super.errorText,
    required this.options,
    required this.onOptionSelected,
    super.textFieldOnly,
    super.prefixIcon,
  }) : super(
          readOnly: true,
          suffixIcon: const Icon(Icons.keyboard_arrow_down),
          borderColor: IColors.light.grayscale.g30,
        );

  @override
  Widget build(BuildContext context) {
    if (!enabled) {
      return super.build(context);
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        _showOptionsBottomSheet(context);
      },
      child: AbsorbPointer(
        child: super.build(context),
      ),
    );
  }

  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (modalContext) {
        return Padding(
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
              SizedBox(height: 16.h),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final option = options[index];
                    return ListTile(
                      title: Text(option),
                      onTap: () {
                        onOptionSelected(option);
                        controller?.text = option;
                        Navigator.pop(modalContext);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
