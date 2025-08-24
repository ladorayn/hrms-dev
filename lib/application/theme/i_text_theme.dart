import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class ITextTheme {
  ITextTheme._();
  static TextTheme createTextTheme(AppColorScheme colors) {
    TextStyle _textStyle(double size, FontWeight weight) {
      return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: colors.foreground,
        fontFamily: 'Inter',
      );
    }

    return TextTheme(
      displayLarge: _textStyle(42.sp, FontWeight.w700), // H1 Bold
      displayMedium: _textStyle(32.sp, FontWeight.w700), // H2 Bold
      displaySmall: _textStyle(20.sp, FontWeight.w700), // H3 Bold
      headlineMedium: _textStyle(18.sp, FontWeight.w600), // H4 SemiBold
      headlineSmall: _textStyle(16.sp, FontWeight.w600), // H5 SemiBold
      titleLarge: _textStyle(20.sp, FontWeight.w600), // H3 SemiBold
      bodyLarge: _textStyle(14.sp, FontWeight.w400), // Body
      bodyMedium: _textStyle(12.sp, FontWeight.w400), // Body Small
      labelLarge: _textStyle(14.sp, FontWeight.w600), // Body SemiBold
      labelMedium: _textStyle(12.sp, FontWeight.w600), // Body Small SemiBold
      labelSmall: _textStyle(10.sp, FontWeight.w400), // Label
    );
  }
}
