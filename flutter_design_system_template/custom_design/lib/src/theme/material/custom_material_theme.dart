import 'package:flutter/material.dart';

import '../custom_theme_data.dart';
import 'custom_material_text_theme.dart';

class CustomMaterialTheme {
  static ThemeData dark(CustomThemeData themeData) => ThemeData.from(
    colorScheme: themeData.colors.toColorScheme(Brightness.dark),
    textTheme: CustomMaterialTextTheme().textTheme,
  );

  static ThemeData light(CustomThemeData themeData) => ThemeData.from(
    colorScheme: themeData.colors.toColorScheme(Brightness.light),
    textTheme: CustomMaterialTextTheme().textTheme,
  );
}
