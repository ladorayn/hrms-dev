import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';

// This enum can remain the same.
enum ValidateFormType {
  email,
  phone,
  // ktp,
  password,
}

class IFormUtils {
  // The private constructor stays, as this is a utility class.
  IFormUtils._();

  // Constants can also remain the same.
  static const int maxLengthEmail = 65;
  static const int maxLengthPhone = 20;
  static const int maxLengthKtp = 25;
  static const int maxLengthPassword = 64;

  static const int minLengthEmail = 1;
  static const int minLengthPhone = 8;
  static const int minLengthKtp = 8;
  static const int minLengthPassword = 12;

  /// A generic form field validator.
  /// It now requires a BuildContext to access translations.
  static String? validateFormField({
    required BuildContext context,
    required String value,
    required String fieldName,
    int? minLength,
    int? maxLength,
    bool isRequired = true,
    bool isEmail = false,
    bool isKtp = false,
  }) {
    // Access translations via AppLocalizations
    final l10n = AppLocalizations.of(context)!;

    if (value.isEmpty && isRequired) {
      // Use the generated method for translations with parameters
      return l10n.formValidationRequired(fieldName);
    }

    if (minLength != null && value.length < minLength) {
      return l10n.formValidationMinLength(fieldName, minLength);
    }

    if (maxLength != null && value.length > maxLength) {
      return l10n.formValidationMaxLength(fieldName, maxLength);
    }

    if (isEmail) {
      // Basic email validation regex
      final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
      if (!emailRegExp.hasMatch(value)) {
        return l10n.formValidationEmailInvalid;
      }
    }

    if (isKtp) {
      final alphanumericRegExp = RegExp(r'^[a-zA-Z0-9]+$');
      if (!alphanumericRegExp.hasMatch(value)) {
        // Assuming you add this key to your .arb files
        return l10n.formValidationOnlyAlphanumeric;
      }
    }

    return null; // Return null if validation passes
  }

  /// A helper to validate based on a predefined type.
  static String? validateFormFieldType({
    required BuildContext context, // <-- Add BuildContext
    required String value,
    required ValidateFormType type,
  }) {
    // Access translations to get the field name
    final l10n = AppLocalizations.of(context)!;

    switch (type) {
      case ValidateFormType.email:
        return validateFormField(
          context: context,
          fieldName: l10n.formEmail,
          value: value,
          minLength: minLengthEmail,
          maxLength: maxLengthEmail,
          isEmail: true,
        );
      case ValidateFormType.phone:
        return validateFormField(
          context: context,
          fieldName: l10n.formPhone,
          value: value,
          minLength: minLengthPhone,
          maxLength: maxLengthPhone,
        );
      // case ValidateFormType.ktp:
      //   return validateFormField(
      //     context: context,
      //     fieldName: l10n.formNoKtpKitias,
      //     value: value,
      //     minLength: minLengthKtp,
      //     maxLength: maxLengthKtp,
      //     isKtp: true,
      //   );
      case ValidateFormType.password:
        return validateFormField(
          context: context,
          fieldName: l10n.formPassword,
          value: value,
          minLength: minLengthPassword,
          maxLength: maxLengthPassword,
        );
    }
  }
}
