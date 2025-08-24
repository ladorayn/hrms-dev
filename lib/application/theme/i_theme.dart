import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/application/theme/i_text_theme.dart';

/// Defines the application's light and dark themes.
///
/// This class uses the centralized `IColors` and `ITextTheme` to build
/// consistent `ThemeData` for both light and dark modes.
class ITheme {
  ITheme._();

  /// The light theme configuration for the application.
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: IColors.light.background,
    primaryColor: IColors.light.primary.main, // Corrected to get the Color
    fontFamily: 'Inter',
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: IColors.light.primary.main,
      onPrimary: IColors.light.primary.foreground,
      secondary: IColors.light.secondary.main,
      onSecondary: IColors.light.secondary.foreground,
      error: IColors.light.error.main,
      onError: IColors.light.error.main,
      background: IColors.light.background,
      onBackground: IColors.light.foreground,
      surface: IColors.light.card, // Card is a good equivalent for surface
      onSurface: IColors.light.cardForeground,
    ),
    // Generate the text theme using the light color scheme
    textTheme: ITextTheme.createTextTheme(IColors.light),
  );

  /// The dark theme configuration for the application.
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: IColors.dark.background,
    primaryColor: IColors.dark.primary.main, // Corrected to get the Color
    fontFamily: 'Inter',
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: IColors.dark.primary.main,
      onPrimary: IColors.dark.primary.foreground,
      secondary: IColors.dark.secondary.main,
      onSecondary: IColors.dark.secondary.foreground,
      error: IColors.dark.error.main,
      onError: IColors.dark.error.main,
      background: IColors.dark.background,
      onBackground: IColors.dark.foreground,
      surface: IColors.dark.card, // Card is a good equivalent for surface
      onSurface: IColors.dark.cardForeground,
    ),
    // Generate the text theme using the dark color scheme
    textTheme: ITextTheme.createTextTheme(IColors.dark),
  );
}
