import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';

class ITextFieldSocial extends StatefulWidget {
  const ITextFieldSocial({
    super.key,
    this.onTypeSelected,
    this.usernameController,
    this.onRemove,
    this.type,
  });

  final Function(String)? onTypeSelected;
  final TextEditingController? usernameController;
  final VoidCallback? onRemove;
  final String? type;

  @override
  State<ITextFieldSocial> createState() => _ITextFieldSocialState();
}

class _ITextFieldSocialState extends State<ITextFieldSocial> {
  String? _selectedType;

  String _getIconForType(String? type) {
    switch (type) {
      case 'Instagram':
        return IAssets.instagram;
      case 'Twitter':
        return IAssets.twitter;
      case 'LinkedIn':
        return IAssets.linkedin;
      default:
        return IAssets.imagePlaceholder;
    }
  }

  @override
  void initState() {
    _selectedType = widget.type;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Social Media Type Dropdown
        SizedBox(
          width: 100.w, // Fixed width for the dropdown
          child: ITextFieldDropdownBottomSheet(
            label: 'Social Media',
            hintText: 'Type',
            textFieldOnly: true,
            options: const ['Instagram', 'Twitter', 'LinkedIn', 'Other'],
            onOptionSelected: (selected) {
              // 4. Update the state when an option is selected
              setState(() {
                _selectedType = selected;
              });
              widget.onTypeSelected?.call(selected);
            },
            // 5. Use the state variable to dynamically set the icon
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                _getIconForType(_selectedType), // This is now dynamic
                width: 20.w,
                colorFilter: ColorFilter.mode(
                    IColors.light.grayscale.g30, BlendMode.srcIn),
              ),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        // Username Field
        Expanded(
          child: ITextFieldBase(
            controller: widget.usernameController,
            textFieldOnly: true,
            hintText: '@olivia',
            keyboardType: TextInputType.text,
            borderColor: IColors.light.grayscale.g30,
          ),
        ),
        // Remove Button
        if (widget.onRemove != null)
          IconButton(
            icon: Icon(Icons.remove_circle_outline,
                color: IColors.light.error.main),
            onPressed: widget.onRemove,
          ),
      ],
    );
  }
}
