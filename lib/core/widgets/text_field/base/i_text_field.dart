import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ITextFieldBorderVariant { outline, underline }

class ITextFieldBase extends StatelessWidget {
  const ITextFieldBase({
    super.key,
    this.enabled = true,
    this.textFieldKey,
    this.controller,
    this.label = "",
    this.labelStyle,
    this.labelPadding,
    this.subLabel = "",
    this.subLabelStyle,
    this.subLabelPadding,
    this.rightLabel,
    this.note = "",
    this.noteStyle,
    this.notePadding,
    this.textFieldOnly = false,
    this.borderVariant = ITextFieldBorderVariant.outline,
    this.borderColor,
    this.hintText,
    this.hintStyle,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.autofocus = false,
    this.inputFormatters,
    this.obscureText = false,
    this.autocorrect = false,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.words,
    this.keyboardType,
    this.textInputAction,
    this.onTap,
    this.maxLength,
    this.minLine,
    this.maxLine,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.errorText,
    this.errorStyle,
    this.errorPadding,
    this.isRequired = false,
    this.customLeading,
    this.isPhoneNumber = false,
    this.useVirtualKeyboard = false,
    this.onVirtualKeyboardOpen,
  });

  final Key? textFieldKey;
  final TextEditingController? controller;

  final bool enabled;

  // label
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final String subLabel;
  final TextStyle? subLabelStyle;
  final EdgeInsetsGeometry? subLabelPadding;
  final Widget? rightLabel;

  // note
  final String note;
  final TextStyle? noteStyle;
  final EdgeInsetsGeometry? notePadding;

  // content
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;

  // hint
  final String? hintText;
  final TextStyle? hintStyle;

  // error
  final String? errorText;
  final TextStyle? errorStyle;
  final EdgeInsetsGeometry? errorPadding;

  // TextField option
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final int? maxLength;
  final int? maxLine;
  final int? minLine;

  // TextField enum option
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  // TextField callback
  final String? Function(String?)? validator;
  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;
  final VoidCallback? onTap;

  // TextField inputFormatter validation
  final List<TextInputFormatter>? inputFormatters;

  // TextField prefix suffix
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;

  // ITextField option
  final ITextFieldBorderVariant borderVariant;
  final Color? borderColor;
  final bool textFieldOnly;
  final bool isRequired;
  final Widget? customLeading;
  final bool isPhoneNumber;
  final bool useVirtualKeyboard;

  final Function(bool value)? onVirtualKeyboardOpen;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // Define default styles using the current theme
    final defaultLabelStyle = textTheme.labelMedium;
    final defaultErrorStyle =
        textTheme.labelSmall?.copyWith(color: colorScheme.error);

    if (textFieldOnly) {
      return buildTextField(context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                // This is the default style for the whole text.
                style: labelStyle ?? defaultLabelStyle,
                children: [
                  // The main label text
                  TextSpan(text: label),

                  // The asterisk, only if isRequired is true
                  if (isRequired)
                    const TextSpan(
                      text: ' *', // A space is added for separation
                      // This style applies ONLY to the asterisk
                      style: TextStyle(color: Colors.red),
                    ),
                ],
              ),
            ),
            rightLabel ?? const SizedBox.shrink(),
          ],
        ),
        SizedBox(height: 4.h),
        customLeading != null
            ? Row(
                children: [
                  customLeading!,
                  Expanded(child: buildTextField(context)),
                ],
              )
            : buildTextField(context),
        SizedBox(height: 4.h),
        Visibility(
          visible: errorText != null,
          child: Padding(
            padding: errorPadding ?? EdgeInsets.symmetric(horizontal: 12.w),
            child: SizedBox(
              height: 18.h,
              child: Text(
                errorText.toString(),
                style: errorStyle ?? defaultErrorStyle,
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Visibility(
          visible: note.isNotEmpty,
          child: Padding(
            padding: notePadding ?? EdgeInsets.zero,
            child: Text(
              note,
              style: noteStyle ?? defaultLabelStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTextField(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final defaultContentStyle = textTheme.bodyLarge;
    final defaultHintStyle =
        textTheme.bodyLarge?.copyWith(color: theme.hintColor);
    final defaultContentPadding =
        EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h);

    final inputBorderVariant = getInputBorderByVariant(
      borderVariant,
      colorScheme,
      errorText,
      borderColor,
    );

    return TextFormField(
      enabled: enabled,
      key: textFieldKey,
      controller: controller,
      style: defaultContentStyle,
      readOnly: readOnly,
      textAlign: textAlign,
      autofocus: autofocus,
      inputFormatters: inputFormatters ?? defaultInputFormatters,
      validator: validator,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      enableInteractiveSelection: !useVirtualKeyboard,
      onTap: onTap,
      obscureText: obscureText,
      onChanged: (value) {
        if (value.endsWith("  ")) {
          var data = value.substring(0, value.length - 1);
          controller?.text = data;
          controller?.selection = TextSelection.collapsed(offset: data.length);
        }
        onChanged?.call(value);
      },
      maxLines: maxLine ?? 1,
      minLines: minLine,
      maxLength: maxLength,
      autocorrect: autocorrect,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: colorScheme.primary,
      decoration: InputDecoration(
        hintText: hintText ?? label,
        hintStyle: hintStyle ?? defaultHintStyle,
        border: inputBorderVariant.border,
        focusedBorder: inputBorderVariant.focusedBorder,
        focusedErrorBorder: inputBorderVariant.focusedErrorBorder,
        errorBorder: inputBorderVariant.errorBorder,
        enabledBorder: inputBorderVariant.enabledBorder,
        disabledBorder: inputBorderVariant.disabledBorder,
        contentPadding: contentPadding ?? defaultContentPadding,
        prefix: prefix,
        prefixIcon: prefixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
        errorStyle:
            const TextStyle(height: 0), // Hides default error text space
        counterText: "",
        filled: true,
        fillColor: enabled ? Colors.white : Colors.grey.shade200,
      ),
    );
  }

  List<TextInputFormatter> get defaultInputFormatters => [
        FilteringTextInputFormatter.deny(
          RegExp(
            r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|'
            r'\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])',
          ),
        )
      ];

  ITextFieldInputBorderWrapper getInputBorderByVariant(
    ITextFieldBorderVariant borderVariant,
    ColorScheme colorScheme,
    String? errorText,
    Color? borderColor,
  ) {
    final InputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: errorText == null
            ? (borderColor ?? colorScheme.outline)
            : colorScheme.error,
        width: 1,
      ),
    );

    final InputBorder defaultErrorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: colorScheme.error, width: 1),
    );

    if (borderVariant == ITextFieldBorderVariant.underline) {
      // Implement other variants if needed
    }

    return ITextFieldInputBorderWrapper(
      border: defaultBorder,
      focusedBorder: defaultBorder.copyWith(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
      focusedErrorBorder: defaultErrorBorder.copyWith(
        borderSide: BorderSide(color: colorScheme.error, width: 2),
      ),
      errorBorder: defaultErrorBorder,
      enabledBorder: defaultBorder,
      disabledBorder: defaultBorder,
    );
  }
}

class ITextFieldInputBorderWrapper {
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;

  ITextFieldInputBorderWrapper({
    this.border,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    this.enabledBorder,
    this.disabledBorder,
  });
}
