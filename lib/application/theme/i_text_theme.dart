import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class ITextTheme {
  ITextTheme._();

  static final ITextTheme instance = ITextTheme._();

  static IHeadingText heading = IHeadingText(
    h1: _textStyle(42.sp, FontWeight.w400),
    h1SemiBold: _textStyle(42.sp, FontWeight.w600),
    h1Bold: _textStyle(42.sp, FontWeight.w700),
    h2: _textStyle(32.sp, FontWeight.w400),
    h2SemiBold: _textStyle(32.sp, FontWeight.w600),
    h2Bold: _textStyle(32.sp, FontWeight.w700),
    h3: _textStyle(20.sp, FontWeight.w400),
    h3SemiBold: _textStyle(20.sp, FontWeight.w600),
    h3Bold: _textStyle(20.sp, FontWeight.w700),
    h4: _textStyle(18.sp, FontWeight.w400),
    h4SemiBold: _textStyle(18.sp, FontWeight.w600),
    h4Bold: _textStyle(18.sp, FontWeight.w700),
    h5: _textStyle(16.sp, FontWeight.w400),
    h5SemiBold: _textStyle(16.sp, FontWeight.w600),
    h5Bold: _textStyle(16.sp, FontWeight.w700),
  );

  static IBodyText body = IBodyText(
    body: _textStyle(14.sp, FontWeight.w400),
    bodySemiBold: _textStyle(14.sp, FontWeight.w600),
    bodyBold: _textStyle(14.sp, FontWeight.w700),
    bodySmall: _textStyle(12.sp, FontWeight.w400),
    bodySmallSemiBold: _textStyle(12.sp, FontWeight.w600),
    bodySmallBold: _textStyle(12.sp, FontWeight.w700),
  );

  static ILabelText label = ILabelText(
    label: _textStyle(10.sp, FontWeight.w400),
    labelSemiBold: _textStyle(10.sp, FontWeight.w600),
    labelBold: _textStyle(10.sp, FontWeight.w700),
    labelSmall: _textStyle(8.sp, FontWeight.w400),
    labelSmallSemiBold: _textStyle(8.sp, FontWeight.w600),
    labelSmallBold: _textStyle(8.sp, FontWeight.w700),
  );

  static TextStyle _textStyle(double size, FontWeight weight) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: IColors.neutral.textIcon.primary,
      fontFamily: 'Inter',
    );
  }
}

class IHeadingText {
  final TextStyle h1;
  final TextStyle h1SemiBold;
  final TextStyle h1Bold;
  final TextStyle h2;
  final TextStyle h2SemiBold;
  final TextStyle h2Bold;
  final TextStyle h3;
  final TextStyle h3SemiBold;
  final TextStyle h3Bold;
  final TextStyle h4;
  final TextStyle h4SemiBold;
  final TextStyle h4Bold;
  final TextStyle h5;
  final TextStyle h5SemiBold;
  final TextStyle h5Bold;

  IHeadingText({
    required this.h1,
    required this.h1SemiBold,
    required this.h1Bold,
    required this.h2,
    required this.h2SemiBold,
    required this.h2Bold,
    required this.h3,
    required this.h3SemiBold,
    required this.h3Bold,
    required this.h4,
    required this.h4SemiBold,
    required this.h4Bold,
    required this.h5,
    required this.h5SemiBold,
    required this.h5Bold,
  });
}

class IBodyText {
  final TextStyle body;
  final TextStyle bodySemiBold;
  final TextStyle bodyBold;
  final TextStyle bodySmall;
  final TextStyle bodySmallSemiBold;
  final TextStyle bodySmallBold;

  IBodyText({
    required this.body,
    required this.bodySemiBold,
    required this.bodyBold,
    required this.bodySmall,
    required this.bodySmallSemiBold,
    required this.bodySmallBold,
  });
}

class ILabelText {
  final TextStyle label;
  final TextStyle labelSemiBold;
  final TextStyle labelBold;
  final TextStyle labelSmall;
  final TextStyle labelSmallSemiBold;
  final TextStyle labelSmallBold;

  ILabelText({
    required this.label,
    required this.labelSemiBold,
    required this.labelBold,
    required this.labelSmall,
    required this.labelSmallSemiBold,
    required this.labelSmallBold,
  });
}
