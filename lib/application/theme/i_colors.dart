// lib/core/theme/i_colors.dart
import 'dart:ui';

class IColors {
  IColors._();

  static final IColors instance = IColors._();

  static PrimaryColorScheme primary = PrimaryColorScheme(
    background: PrimaryBackgroundColorScheme(
      primary: const Color(0xFF0056A3), // Primary Blue
      dark: const Color(0xFF003F75), // Darker Shade
      light: const Color(0xFFCCE1F5), // Light Tint
      twoTone: const Color(0xFFEAF2FB), // Very Light Background
    ),
    textIcon: PrimaryTextIconColorScheme(
      primary: const Color(0xFF0056A3),
      dark: const Color(0xFF003F75),
    ),
    border: PrimaryBorderColorScheme(
      primary: const Color(0xFF0056A3),
      dark: const Color(0xFF003F75),
    ),
    decorative: PrimaryDecorativeColorScheme(
      c200: const Color(0xFF80BFEA),
      c300: const Color(0xFF66AFE3),
      c600: const Color(0xFF004B91),
      c700: const Color(0xFF00386C),
    ),
  );

  static NeutralColorScheme neutral = NeutralColorScheme(
    background: NeutralBackgroundColorScheme(
      primary: const Color(0xFFFFFFFF),
      lightest: const Color(0xFFF5F7FA),
      light: const Color(0xFFE6EAF0),
      dark: const Color(0xFFC2C9D1),
      darkest: const Color(0xFF8A94A4),
    ),
    textIcon: NeutralTextIconColorScheme(
      primary: const Color(0xFF1C1C1E),
      subdued: const Color(0xFF6E6E73),
      disabled: const Color(0xFFBDBDBD),
      lighter: const Color(0xFFE0E0E0),
      white: const Color(0xFFFFFFFF),
    ),
    border: NeutralBorderColorScheme(
      dark: const Color(0xFF8A94A4),
      light: const Color(0xFFC2C9D1),
      disabled: const Color(0xFFE6EAF0),
      decorative50: const Color(0xFFE6EAF0),
      decorative25: const Color(0xFFF5F7FA),
    ),
    transparent: NeutralTransparentColorScheme(
      dark15: const Color(0x261C1C1E),
      dark30: const Color(0x4C1C1C1E),
      dark45: const Color(0x721C1C1E),
      dark60: const Color(0x991C1C1E),
      dark75: const Color(0xBF1C1C1E),
      dark90: const Color(0xE51C1C1E),
      light15: const Color(0x26FFFFFF),
      light30: const Color(0x4CFFFFFF),
      light45: const Color(0x72FFFFFF),
      light60: const Color(0x99FFFFFF),
      light75: const Color(0xBFFFFFFF),
      light90: const Color(0xE5FFFFFF),
    ),
  );

  static SemanticColorScheme semantic = SemanticColorScheme(
    positive: const Color(0xFF4CAF50),
    negative: const Color(0xFFF44336),
    warning: const Color(0xFFFFC107),
    informative: const Color(0xFF2196F3),
  );

  /// Light theme color scheme
  static final AppColorScheme light = AppColorScheme(
    primary: const Color(0xFF006AFF),
    background: const Color(0xFFFFFFFF),
    surface: const Color(0xFFF7F9FC),
    onPrimary: const Color(0xFFFFFFFF),
    onBackground: const Color(0xFF000000),
    onSurface: const Color(0xFF1C1C1E),
    error: const Color(0xFFB00020),
    onError: const Color(0xFFFFFFFF),
    // add other semantic or utility color
  );

  /// Dark theme color scheme
  static final AppColorScheme dark = AppColorScheme(
    primary: const Color(0xFF448AFF),
    background: const Color(0xFF121212),
    surface: const Color(0xFF1E1E1E),
    onPrimary: const Color(0xFF000000),
    onBackground: const Color(0xFFFFFFFF),
    onSurface: const Color(0xFFEDEDED),
    error: const Color(0xFFCF6679),
    onError: const Color(0xFF000000),
    // match other values accordingly
  );
}

// --- Base color group classes (unchanged from your original structure) ---

class PrimaryColorScheme {
  final PrimaryBackgroundColorScheme background;
  final PrimaryTextIconColorScheme textIcon;
  final PrimaryBorderColorScheme border;
  final PrimaryDecorativeColorScheme decorative;

  PrimaryColorScheme({
    required this.background,
    required this.textIcon,
    required this.border,
    required this.decorative,
  });
}

class PrimaryBackgroundColorScheme {
  final Color primary;
  final Color dark;
  final Color light;
  final Color twoTone;

  PrimaryBackgroundColorScheme({
    required this.primary,
    required this.dark,
    required this.light,
    required this.twoTone,
  });
}

class PrimaryTextIconColorScheme {
  final Color primary;
  final Color dark;

  PrimaryTextIconColorScheme({required this.primary, required this.dark});
}

class PrimaryBorderColorScheme {
  final Color primary;
  final Color dark;

  PrimaryBorderColorScheme({required this.primary, required this.dark});
}

class PrimaryDecorativeColorScheme {
  final Color c200;
  final Color c300;
  final Color c600;
  final Color c700;

  PrimaryDecorativeColorScheme({
    required this.c200,
    required this.c300,
    required this.c600,
    required this.c700,
  });
}

class NeutralColorScheme {
  final NeutralBackgroundColorScheme background;
  final NeutralTextIconColorScheme textIcon;
  final NeutralBorderColorScheme border;
  final NeutralTransparentColorScheme transparent;

  NeutralColorScheme({
    required this.background,
    required this.textIcon,
    required this.border,
    required this.transparent,
  });
}

class NeutralBackgroundColorScheme {
  final Color primary;
  final Color lightest;
  final Color light;
  final Color dark;
  final Color darkest;

  NeutralBackgroundColorScheme({
    required this.primary,
    required this.lightest,
    required this.light,
    required this.dark,
    required this.darkest,
  });
}

class NeutralTextIconColorScheme {
  final Color primary;
  final Color subdued;
  final Color disabled;
  final Color lighter;
  final Color white;

  NeutralTextIconColorScheme({
    required this.primary,
    required this.subdued,
    required this.disabled,
    required this.lighter,
    required this.white,
  });
}

class NeutralBorderColorScheme {
  final Color dark;
  final Color light;
  final Color disabled;
  final Color decorative50;
  final Color decorative25;

  NeutralBorderColorScheme({
    required this.dark,
    required this.light,
    required this.disabled,
    required this.decorative50,
    required this.decorative25,
  });
}

class NeutralTransparentColorScheme {
  final Color dark15;
  final Color dark30;
  final Color dark45;
  final Color dark60;
  final Color dark75;
  final Color dark90;

  final Color light15;
  final Color light30;
  final Color light45;
  final Color light60;
  final Color light75;
  final Color light90;

  NeutralTransparentColorScheme({
    required this.dark15,
    required this.dark30,
    required this.dark45,
    required this.dark60,
    required this.dark75,
    required this.dark90,
    required this.light15,
    required this.light30,
    required this.light45,
    required this.light60,
    required this.light75,
    required this.light90,
  });
}

class SemanticColorScheme {
  final Color positive;
  final Color negative;
  final Color warning;
  final Color informative;

  SemanticColorScheme({
    required this.positive,
    required this.negative,
    required this.warning,
    required this.informative,
  });
}

class AppColorScheme {
  final Color primary;
  final Color background;
  final Color surface;
  final Color onPrimary;
  final Color onBackground;
  final Color onSurface;
  final Color error;
  final Color onError;

  AppColorScheme({
    required this.primary,
    required this.background,
    required this.surface,
    required this.onPrimary,
    required this.onBackground,
    required this.onSurface,
    required this.error,
    required this.onError,
  });
}
