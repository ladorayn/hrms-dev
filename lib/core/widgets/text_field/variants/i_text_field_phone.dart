import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/entities/country_code.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart'; // Import the dropdown

class ITextFieldPhone extends StatefulWidget {
  const ITextFieldPhone({
    super.key,
    required this.label,
    this.phoneController,
    this.validator,
    this.errorText,
    this.isRequired = false,
    this.initialCountryCode,
    required this.countryCodes,
    this.onCountryCodeChanged,
  });

  final String label;
  final TextEditingController? phoneController;
  final String? Function(String?)? validator;
  final String? errorText;
  final bool isRequired;

  /// The list of country codes to display in the dropdown.
  final List<CountryCode> countryCodes;

  /// The initially selected country code.
  final CountryCode? initialCountryCode;

  /// Callback when a new country code is selected.
  final Function(CountryCode)? onCountryCodeChanged;

  @override
  State<ITextFieldPhone> createState() => _ITextFieldPhoneState();
}

class _ITextFieldPhoneState extends State<ITextFieldPhone> {
  late final TextEditingController _countryCodeController;
  CountryCode? _selectedCountryCode;

  @override
  void initState() {
    super.initState();
    // Set the initial selected code
    if (widget.initialCountryCode != null) {
      _selectedCountryCode = widget.initialCountryCode;
    } else if (widget.countryCodes.isNotEmpty) {
      _selectedCountryCode = widget.countryCodes.first;
    }
    _countryCodeController =
        TextEditingController(text: _selectedCountryCode?.code ?? '');
  }

  @override
  void dispose() {
    _countryCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text.rich(
          TextSpan(
            style: textTheme.bodySmall,
            children: [
              TextSpan(text: widget.label),
              if (widget.isRequired)
                const TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        SizedBox(height: 4.h),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100.w,
              child: ITextFieldDropdownBottomSheet(
                label: 'Countries',
                controller: _countryCodeController,
                textFieldOnly: true,
                hintText: 'Code',
                options: widget.countryCodes.map((c) => c.toString()).toList(),
                onOptionSelected: (String selectedOptionString) {
                  final selectedCode = widget.countryCodes.firstWhere(
                    (c) => c.toString() == selectedOptionString,
                  );

                  setState(() {
                    _selectedCountryCode = selectedCode;
                    _countryCodeController.text = selectedCode.code;
                  });
                  widget.onCountryCodeChanged?.call(selectedCode);
                },
              ),
            ),
            SizedBox(width: 8.w),

            // Phone Number Field
            Expanded(
              child: ITextFieldBase(
                controller: widget.phoneController,
                textFieldOnly: true,
                hintText: '81234567890',
                keyboardType: TextInputType.phone,
                validator: widget.validator,
                errorText: widget.errorText,
                borderColor: IColors.light.grayscale.g30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
