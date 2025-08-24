import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/util/i_form_utils.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldEmail extends ITextFieldBase {
  ITextFieldEmail({
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
    super.maxLine,
    super.textCapitalization,
    TextInputType? keyboardType,
    super.textInputAction,
    super.validator,
    super.onChanged,
    super.onFieldSubmitted,
    super.onTap,
    super.inputFormatters,
    super.prefix,
    Widget? prefixIcon, // Accept an optional prefixIcon
    super.suffix,
    super.suffixIcon,
    super.borderVariant,
    super.textFieldOnly,
    super.isRequired,
  }) : super(
          maxLength: IFormUtils.maxLengthEmail,
          keyboardType: keyboardType ?? TextInputType.emailAddress,
          // Use the provided prefixIcon, or fall back to the default SVG
          prefixIcon: prefixIcon ??
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 8.0, 12.0),
                child: SvgPicture.asset(
                  IAssets.emailIcon,
                  height: 24.0,
                  width: 24.0,
                ),
              ),
        );
}
