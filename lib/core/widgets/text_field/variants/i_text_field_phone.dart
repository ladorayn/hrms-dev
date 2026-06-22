import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 1. Import this
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/data/entities/country_code.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart'; // Import the dropdown

class ITextFieldPhone extends StatefulWidget {
  // ... (Constructor is unchanged)
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
  final List<CountryCode> countryCodes;
  final CountryCode? initialCountryCode;
  final Function(CountryCode)? onCountryCodeChanged;

  @override
  State<ITextFieldPhone> createState() => _ITextFieldPhoneState();
}

class _ITextFieldPhoneState extends State<ITextFieldPhone> {
  // ... (initState and dispose are unchanged)
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
        TextEditingController(text: _selectedCountryCode?.flag ?? '');
  }

  @override
  void dispose() {
    _countryCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final defaultErrorStyle =
        textTheme.labelSmall?.copyWith(color: colorScheme.error);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ... (Label is unchanged)
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
            // ... (Dropdown is unchanged)
            SizedBox(
              width: 80.w,
              child: ITextFieldDropdownBottomSheet(
                label: l10n.coreCountries,
                controller: _countryCodeController,
                textFieldOnly: true,
                hintText: l10n.coreCountryCode,
                updateTextOnSelect: false,
                options: widget.countryCodes.map((c) => c.toString()).toList(),
                onOptionSelected: (String selectedOptionString) {
                  final selectedCode = widget.countryCodes.firstWhere(
                    (c) => c.toString() == selectedOptionString,
                  );

                  setState(() {
                    _selectedCountryCode = selectedCode;
                    _countryCodeController.text = selectedCode.flag;
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
                // --- 2. ADD THIS PROPERTY ---
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Visibility(
          visible: widget.errorText != null,
          child: SizedBox(
            height: 18.h, // Standard error height
            child: Text(
              widget.errorText.toString(),
              style: defaultErrorStyle,
            ),
          ),
        ),
      ],
    );
  }
}
