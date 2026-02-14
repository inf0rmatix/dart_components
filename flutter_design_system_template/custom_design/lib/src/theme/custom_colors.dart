import 'package:flutter/material.dart';

class CustomColors {
  // Palette colors
  static const Color imperialRed = Color(0xFFF94144);
  static const Color orangeCrayola = Color(0xFFF3722C);
  static const Color carrotOrange = Color(0xFFF8961E);
  static const Color coral = Color(0xFFF9844A);
  static const Color saffron = Color(0xFFF9C74F);
  static const Color pistachio = Color(0xFF90BE6D);
  static const Color zomp = Color(0xFF43AA8B);
  static const Color darkCyan = Color(0xFF4D908E);
  static const Color paynesGray = Color(0xFF577590);
  static const Color charcoal = Color(0xFF2E3E4D);
  static const Color richBlack = Color(0xFF171F26);
  static const Color cerulean = Color(0xFF277DA1);

  // Neutral colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Semantic colors
  static const Color red = imperialRed;
  static const Color orange = orangeCrayola;
  static const Color green = pistachio;

  // Primary colors
  final Color primary;
  final Color secondary;
  final Color accent;

  // Text colors
  final Color onPrimary;
  final Color onSecondary;

  final Color background;
  final Color onBackground;

  // Semantic colors
  final Color error;
  final Color warning;
  final Color success;
  final Color info;

  const CustomColors.dark({
    this.primary = cerulean,
    this.secondary = white,
    this.accent = zomp,
    this.onPrimary = white,
    this.onSecondary = black,
    this.background = richBlack,
    this.onBackground = white,
    this.error = red,
    this.warning = orange,
    this.success = green,
    this.info = darkCyan,
  });

  const CustomColors.light({
    this.primary = cerulean,
    this.secondary = paynesGray,
    this.accent = zomp,
    this.onPrimary = white,
    this.onSecondary = white,
    this.background = white,
    this.onBackground = black,
    this.error = red,
    this.warning = orange,
    this.success = green,
    this.info = darkCyan,
  });

  /// Creates a color set with explicit role values.
  CustomColors({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.onPrimary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.error,
    required this.warning,
    required this.success,
    required this.info,
  });

  /// Linearly interpolate between two [CustomColors] objects.
  static CustomColors lerp(CustomColors a, CustomColors b, double t) {
    Color lerpColor(Color x, Color y) => Color.lerp(x, y, t) ?? y;

    return CustomColors(
      primary: lerpColor(a.primary, b.primary),
      secondary: lerpColor(a.secondary, b.secondary),
      accent: lerpColor(a.accent, b.accent),
      onPrimary: lerpColor(a.onPrimary, b.onPrimary),
      onSecondary: lerpColor(a.onSecondary, b.onSecondary),
      background: lerpColor(a.background, b.background),
      onBackground: lerpColor(a.onBackground, b.onBackground),
      error: lerpColor(a.error, b.error),
      warning: lerpColor(a.warning, b.warning),
      success: lerpColor(a.success, b.success),
      info: lerpColor(a.info, b.info),
    );
  }

  /// Creates a Material ColorScheme from the custom colors
  ColorScheme toColorScheme(Brightness brightness) => ColorScheme.fromSeed(
    brightness: brightness,
    seedColor: primary,
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    onSecondary: onSecondary,
    tertiary: accent,
    onTertiary: white,
    surfaceContainerLowest: background,
    onSurface: onBackground,
    shadow: brightness == Brightness.dark ? paynesGray : charcoal,
    error: error,
    onError: white,
  );
}
