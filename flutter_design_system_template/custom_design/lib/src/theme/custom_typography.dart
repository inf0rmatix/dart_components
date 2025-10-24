import 'package:flutter/material.dart';

class CustomTypography {
  final TextStyle exampleStyle;

  const CustomTypography.light() : exampleStyle = _exampleStyleBase;

  const CustomTypography.dark() : exampleStyle = _exampleStyleBase;

  static const String fontFamily = 'Roboto';

  static const TextStyle _exampleStyleBase = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
  );
}
