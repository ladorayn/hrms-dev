import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_text_theme.dart';

class ITheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: IColors.light.background,
    primaryColor: IColors.light.primary,
    fontFamily: 'Inter',
    colorScheme: ColorScheme.light(
      primary: IColors.light.primary,
      onPrimary: IColors.light.onPrimary,
      background: IColors.light.background,
      onBackground: IColors.light.onBackground,
      surface: IColors.light.surface,
      onSurface: IColors.light.onSurface,
      error: IColors.light.error,
      onError: IColors.light.onError,
    ),
    textTheme: TextTheme(
      displayLarge: ITextTheme.heading.h1,
      displayMedium: ITextTheme.heading.h2,
      displaySmall: ITextTheme.heading.h3,
      headlineMedium: ITextTheme.heading.h4,
      headlineSmall: ITextTheme.heading.h5,
      bodyLarge: ITextTheme.body.body,
      bodyMedium: ITextTheme.body.bodySmall,
      labelLarge: ITextTheme.label.label,
      labelSmall: ITextTheme.label.labelSmall,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: IColors.dark.background,
    primaryColor: IColors.dark.primary,
    fontFamily: 'Inter',
    colorScheme: ColorScheme.dark(
      primary: IColors.dark.primary,
      onPrimary: IColors.dark.onPrimary,
      background: IColors.dark.background,
      onBackground: IColors.dark.onBackground,
      surface: IColors.dark.surface,
      onSurface: IColors.dark.onSurface,
      error: IColors.dark.error,
      onError: IColors.dark.onError,
    ),
    textTheme: TextTheme(
      displayLarge: ITextTheme.heading.h1,
      displayMedium: ITextTheme.heading.h2,
      displaySmall: ITextTheme.heading.h3,
      headlineMedium: ITextTheme.heading.h4,
      headlineSmall: ITextTheme.heading.h5,
      bodyLarge: ITextTheme.body.body,
      bodyMedium: ITextTheme.body.bodySmall,
      labelLarge: ITextTheme.label.label,
      labelSmall: ITextTheme.label.labelSmall,
    ),
  );
}
