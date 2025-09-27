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
    super.hintText = "Select",
    super.validator,
    super.isRequired,
    super.errorText,
    required this.options,
    required this.onOptionSelected,
  }) : super(
          // This field should not be editable by keyboard
          readOnly: true,
          // Add the dropdown arrow icon
          suffixIcon: const Icon(Icons.keyboard_arrow_down),
          borderColor: IColors.light.grayscale.g30,
        );

  @override
  Widget build(BuildContext context) {
    // We wrap the base widget in a GestureDetector to handle the tap event,
    // as we need the 'context' to show the bottom sheet.
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard if it's open for any reason
        FocusScope.of(context).unfocus();
        _showOptionsBottomSheet(context);
      },
      // AbsorbPointer prevents the underlying TextFormField's onTap from firing
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
              // Title of the Bottom Sheet
              Text(
                label,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 16.h),
              // We use a Flexible with ListView to prevent overflow if options are many
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final option = options[index];
                    return ListTile(
                      title: Text(option),
                      onTap: () {
                        // 1. Call the callback with the selected value
                        onOptionSelected(option);
                        // 2. Update the text field's controller
                        controller?.text = option;
                        // 3. Close the bottom sheet
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
