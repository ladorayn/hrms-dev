import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldPassword extends StatefulWidget {
  const ITextFieldPassword({
    super.key,
    this.textFieldKey,
    this.controller,
    this.label = "",
    this.labelStyle,
    this.labelPadding,
    this.rightLabel,
    this.note = "",
    this.noteStyle,
    this.notePadding,
    this.textFieldOnly = false,
    this.borderVariant = ITextFieldBorderVariant.outline,
    this.hintText,
    this.hintStyle,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = true, // This will be the initial value
    this.autocorrect = false,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.words,
    this.keyboardType,
    this.textInputAction,
    this.onTap,
    this.maxLength,
    this.maxLine = 1,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.errorText,
    this.errorStyle,
    this.isRequired = false,
    this.onObscureChange,
  });

  final Key? textFieldKey;
  final TextEditingController? controller;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Widget? rightLabel;
  final String note;
  final TextStyle? noteStyle;
  final EdgeInsetsGeometry? notePadding;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? errorText;
  final TextStyle? errorStyle;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final int? maxLength;
  final int? maxLine;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;
  final VoidCallback? onTap;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final ITextFieldBorderVariant borderVariant;
  final bool textFieldOnly;
  final bool isRequired;
  final Function(bool value)? onObscureChange;

  @override
  State<ITextFieldPassword> createState() => _ITextFieldPasswordState();
}

// 2. Create the State class to manage the obscureText value
class _ITextFieldPasswordState extends State<ITextFieldPassword> {
  // The state variable that holds the current visibility
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    // Initialize the state with the value passed to the widget
    _isObscured = widget.obscureText;
  }

  // A method to toggle the state, wrapped in setState
  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
    // Call the callback if it exists
    widget.onObscureChange?.call(_isObscured);
  }

  @override
  Widget build(BuildContext context) {
    // 3. Remove GetBuilder and Obx, just return the ITextFieldBase directly
    return ITextFieldBase(
      textFieldKey: widget.textFieldKey,
      controller: widget.controller,
      label: widget.label,
      labelStyle: widget.labelStyle,
      labelPadding: widget.labelPadding,
      rightLabel: widget.rightLabel,
      note: widget.note,
      noteStyle: widget.noteStyle,
      notePadding: widget.notePadding,
      contentPadding: widget.contentPadding,
      textAlign: widget.textAlign,
      hintText: widget.hintText,
      hintStyle: widget.hintStyle,
      errorText: widget.errorText,
      errorStyle: widget.errorStyle,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      obscureText: _isObscured, // Use the state variable here
      autocorrect: widget.autocorrect,
      maxLength: widget.maxLength ?? 64,
      maxLine: widget.maxLine,
      textCapitalization: widget.textCapitalization,
      keyboardType: widget.keyboardType ?? TextInputType.visiblePassword,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'\s')),
      ],
      prefix: widget.prefix,
      prefixIcon: widget.prefixIcon ??
          Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 8.0, 12.0),
            child: SvgPicture.asset(
              IAssets.password,
              height: 24.0,
              width: 24.0,
            ),
          ),
      suffix: widget.suffix,
      suffixIcon: IconButton(
        onPressed: _toggleObscure, // Call the toggle method
        icon: widget.suffixIcon ??
            Icon(
              _isObscured ? Icons.visibility_off : Icons.visibility,
              color: IColors.light.grayscale.g30,
            ),
      ),
      borderVariant: widget.borderVariant,
      textFieldOnly: widget.textFieldOnly,
      isRequired: widget.isRequired,
    );
  }
}
