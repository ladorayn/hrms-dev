import 'package:flutter/material.dart';

/// Centralized color palette for the application, matching the web design system.
///
/// This class provides static access to the complete color scheme, including
/// separate definitions for light and dark themes.
class IColors {
  IColors._(); // Private constructor to prevent instantiation.

  /// The complete color scheme for the light theme.
  static final AppColorScheme light = AppColorScheme(
    background: const Color(0xFFEDF6FC),
    foreground: const Color(0xFF070707),
    card: const Color(0xFFFFFFFF),
    cardForeground: const Color(0xFF070707),
    popover: const Color(0xFFFFFFFF),
    popoverForeground: const Color(0xFF070707),
    muted: const Color(0xFFEDEDED),
    mutedForeground: const Color(0xFF696969),
    accent: const Color(0xFF8CC8EB),
    accentForeground: const Color(0xFF202223),
    destructive: const Color(0xFFE57171),
    border: const Color(0xFFDBDBD9),
    input: const Color(0xFFB4B4B4),
    ring: const Color(0xFFB4B4B4),
    primary: PrimaryColors(
      main: const Color(0xFF18618B),
      foreground: const Color(0xFFFFFFFF),
      pressed: const Color(0xFF143A24),
      hover: const Color(0xFF0F3C56),
      border: const Color(0xFF8CC8EB),
      focused: const Color(0xFFD6EBF8),
      background: const Color(0xFFEDF6FC),
    ),
    secondary: SecondaryColors(
      main: const Color(0xFF64C9B1),
      foreground: const Color(0xFF202223),
      pressed: const Color(0xFF143A31),
      hover: const Color(0xFF2A7866),
      border: const Color(0xFFA8E0D3),
      focused: const Color(0xFFD8F1EC),
      background: const Color(0xFFE9F7F4),
    ),
    success: SemanticColors(
      main: const Color(0xFF80C684),
      pressed: const Color(0xFF19381B),
      hover: const Color(0xFF367839),
      border: const Color(0xFFB8DFBA),
      focused: const Color(0xFFDFF1E0),
      background: const Color(0xFFEDF7EE),
    ),
    warning: SemanticColors(
      main: const Color(0xFFFFB84D),
      pressed: const Color(0xFF523100),
      hover: const Color(0xFFB06800),
      border: const Color(0xFFFFD79B),
      focused: const Color(0xFFFFEDD2),
      background: const Color(0xFFFFF5E6),
    ),
    error: SemanticColors(
      main: const Color(0xFFE57171),
      pressed: const Color(0xFF460D0D),
      hover: const Color(0xFF981C1C),
      border: const Color(0xFFF0AFAF),
      focused: const Color(0xFFF8DBDB),
      background: const Color(0xFFFBEBEB),
    ),
    grayscale: GrayscaleColors(
      g100: const Color(0xFF070707),
      g90: const Color(0xFF111111),
      g80: const Color(0xFF222222),
      g70: const Color(0xFF323232),
      g60: const Color(0xFF434343),
      g50: const Color(0xFF696969),
      g40: const Color(0xFFBE8EBE),
      g30: const Color(0xFFB4B4B4),
      g20: const Color(0xFFD9D9D9),
      g10: const Color(0xFFEDEDED),
      g0: const Color(0xFFFFFFFF),
    ),
  );

  /// The complete color scheme for the dark theme.
  static final AppColorScheme dark = AppColorScheme(
    background: const Color(0xFF070707),
    foreground: const Color(0xFFFFFFFF),
    card: const Color(0xFF111111),
    cardForeground: const Color(0xFFFFFFFF),
    popover: const Color(0xFF111111),
    popoverForeground: const Color(0xFFFFFFFF),
    muted: const Color(0xFF222222),
    mutedForeground: const Color(0xFFB4B4B4),
    accent: const Color(0xFF143A31),
    accentForeground: const Color(0xFFFFFFFF),
    destructive: const Color(0xFF981C1C),
    border: const Color(0xFF323232),
    input: const Color(0xFF323232),
    ring: const Color(0xFF434343),
    primary: PrimaryColors(
      main: const Color(0xFF8CC8EB),
      foreground: const Color(0xFF070707),
      pressed: const Color(0xFF0F3C56),
      hover: const Color(0xFF18618B),
      border: const Color(0xFF0F3C56),
      focused: const Color(0xFF143A24),
      background: const Color(0xFF070707),
    ),
    // Secondary, Success, Warning, and Error for dark theme can be inherited
    // from light theme or defined specifically if they differ.
    // For simplicity, we'll reuse the main semantic colors but you can adjust.
    secondary: light.secondary,
    success: light.success,
    warning: light.warning,
    error: light.error,
    grayscale: light.grayscale, // Grayscale is typically consistent.
  );
}

/// Defines the overall structure of a color scheme (light or dark).
class AppColorScheme {
  final Color background;
  final Color foreground;
  final Color card;
  final Color cardForeground;
  final Color popover;
  final Color popoverForeground;
  final Color muted;
  final Color mutedForeground;
  final Color accent;
  final Color accentForeground;
  final Color destructive;
  final Color border;
  final Color input;
  final Color ring;
  final PrimaryColors primary;
  final SecondaryColors secondary;
  final SemanticColors success;
  final SemanticColors warning;
  final SemanticColors error;
  final GrayscaleColors grayscale;

  AppColorScheme({
    required this.background,
    required this.foreground,
    required this.card,
    required this.cardForeground,
    required this.popover,
    required this.popoverForeground,
    required this.muted,
    required this.mutedForeground,
    required this.accent,
    required this.accentForeground,
    required this.destructive,
    required this.border,
    required this.input,
    required this.ring,
    required this.primary,
    required this.secondary,
    required this.success,
    required this.warning,
    required this.error,
    required this.grayscale,
  });
}

/// Defines the set of primary brand colors.
class PrimaryColors {
  final Color main;
  final Color foreground;
  final Color pressed;
  final Color hover;
  final Color border;
  final Color focused;
  final Color background;

  PrimaryColors({
    required this.main,
    required this.foreground,
    required this.pressed,
    required this.hover,
    required this.border,
    required this.focused,
    required this.background,
  });
}

/// Defines the set of secondary brand colors.
class SecondaryColors {
  final Color main;
  final Color foreground;
  final Color pressed;
  final Color hover;
  final Color border;
  final Color focused;
  final Color background;

  SecondaryColors({
    required this.main,
    required this.foreground,
    required this.pressed,
    required this.hover,
    required this.border,
    required this.focused,
    required this.background,
  });
}

/// Defines a set of colors for semantic states (e.g., success, error).
class SemanticColors {
  final Color main;
  final Color pressed;
  final Color hover;
  final Color border;
  final Color focused;
  final Color background;

  SemanticColors({
    required this.main,
    required this.pressed,
    required this.hover,
    required this.border,
    required this.focused,
    required this.background,
  });
}

/// Defines the grayscale palette.
class GrayscaleColors {
  final Color g100; // Darkest
  final Color g90;
  final Color g80;
  final Color g70;
  final Color g60;
  final Color g50;
  final Color g40;
  final Color g30;
  final Color g20;
  final Color g10;
  final Color g0; // Lightest (White)

  GrayscaleColors({
    required this.g100,
    required this.g90,
    required this.g80,
    required this.g70,
    required this.g60,
    required this.g50,
    required this.g40,
    required this.g30,
    required this.g20,
    required this.g10,
    required this.g0,
  });
}
