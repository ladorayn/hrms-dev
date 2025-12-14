// lib/core/widgets/text_field/variants/i_text_field_text_area.dart

import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldTextArea extends ITextFieldBase {
  ITextFieldTextArea({
    super.key,
    super.textFieldKey,
    super.controller,
    super.label,
    super.labelStyle,
    super.labelPadding,
    super.rightLabel,
    super.note,
    super.noteStyle,
    super.notePadding,
    super.contentPadding,
    super.textAlign,
    super.hintText,
    super.hintStyle,
    super.errorText,
    super.errorStyle,
    super.readOnly,
    super.autofocus,
    super.obscureText,
    super.autocorrect,
    super.textCapitalization,
    super.textInputAction,
    super.validator,
    super.onChanged,
    super.onFieldSubmitted,
    super.onTap,
    super.inputFormatters,
    super.prefix,
    super.prefixIcon,
    super.suffix,
    super.suffixIcon,
    super.borderVariant,
    super.textFieldOnly,
    super.isRequired,
    super.enabled,
  }) : super(
          minLine: 3,
          maxLine: 5,
          keyboardType: TextInputType.multiline,
          borderColor: IColors.light.grayscale.g30,
        );
}
